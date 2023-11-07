# atsign_fhir

Group of utility classes for working with the atsign and fhir

## Current State

1. AtFhirNotification: a class that simplifies sending and receiving FHIR information using the @protocol
2. atFhirListen & atFhirNotify are simple functions to simplify sending AtFhirNotifications back and forth
3. You will need to add a dependency override to your pubspec.yaml

```yaml
dependency_overrides:
  uuid: ^4.1.0
```

## Future State

These are the ideas I have for how the @protocol  an be used with FHIR. It is not implemented yet.

There are at least 4 groups/workflows we are trying to account for with this package, that are notably different, although they share the same kind of data.
1) Patient
2) Consent to Share
3) Clinician
4) Server

### ![Patient Workflow](https://github.com/fhir-fli/at_fhir/blob/main/png/patient_workflow.png)

The patient will use the @protocol very much like it is usually demonstrated. 
1. Login to an app using their atkeys. 
2. Select from a list of facilities the app works with
3. The app will do a SMART on FHIR launch (very similar to Oauth2) to authenticate with the healthcare facility.
4. After authenticated & authorized, the patient can download all of their data.
5. The data will be stored on their @sign with the following format:

- fhir.version.resourceType.fhirId
- fhir.stu3.patient.12345  

full value would be

- @sharedWith:fhir.version.resourceType.id.nameSpace:@owner
- @bob:fhir.r4.observation.blood-pressure.fhir:@alice 

6. Again, this should look very familiar. Once the patient has their data stored, they can share it just as they would share any other data with someone.

### Consent to Share

This one is a little awkward. The idea here is to let a patient direct one group to share information with another group. For instance, Hospital 1A wanted to share patient's data with Hospital 2B.
1. The atsign (maybe @central but maybe there's a separate @sign for consents) for Hospital 1A would send the patient a copy of a consent form
2. The patient would complete the consent form, store a copy in their atsign, and then send a copy to both Hospital 1A and Hospital 2B
3. Both hospitals and the patient would now have a copy of the consent, and Hospital 1A could send Hospital 2B the patient's data
4. In the future, Hospital 1A could just request a copy of the consent from the patient's atsign, so if the patient ever made updates to it, Hospital 1A would always be aware of it

### Clinician Workflow

This one feels the most normal to me (but I may be biased).
1. Clinician logs into app using biometric login
2. Logs into atsign using atkey
3. Requests data needed from @central
4. When clinician opens a patient's chart, a notification is sent to @central for that patient (or for the specific encounter)
5. The clinician's app listens for any notifications 
6. Depending on the type of notification, the clinicians app may update resources being displayed to the clinician, or add certain information to the display

### ![Server Workflow](https://github.com/fhir-fli/at_fhir/blob/main/png/server_workflow.png)

The @central fhir server acts as both a reverse proxy and as a repository for data that's NOT FHIR.
1. The @central server has a headless atsign app that's always listening for notifications
2. When it receves a notification, it is logged before any processing is done, to ensure we have a record of all requests, which can later be used for debugging, monitoring, security, etc.
3. @central listens for notifications, and if it receives one it checks to ensure that it's from an @sign that has been registered with it, if not, it logs but otherwise ignores the notification
4. If the @sign is registered, @central tries to deserialize the String of the notification
5. If the string does not deserialize into an AtFhirNotification object, then an error is logged
6. Depending on the type of AtFhirNotification, @central takes different actions (not all defined)
7. One of the most common notifications will be requests
    - If it's a request, @central checks to see if the @sign has permission to make such a request/access the data for the request
    - If the @sign does not, @central will send an OperationOutcome FHIR Resource as a notification explaining the error
    - If the @sign does have permission, then @central will pass the request along to the FHIR server. 
    - Whatever response @central gets from the FHIR server, it will send it as a notification to the @sign
8. Another type of notification will be a listening notification
    - When a clinician opens a patients chart, they will send a notfication to @central that they are listening for changes to that patient or to that particular encounter
    - Anytime @central senses that something about the patient has been updated (a new blood pressure has been performed, patient has updated their preferred name, etc), @central sends the new Resource to the @sign listening

### How Data is stored on a server

1. Permission Groups
    - Different groups of @signs with different types of permissions
    - Full list of different permissionGroups stored here: fhir.permissiongroups.namespace:@fhircentral
    - Each individual group stored at key:fhir.permission.groupname.namespace:@fhircentral
    - [Create new permission group](https://github.com/fhir-fli/fhirlite_central/blob/main/lib/services/at_permissions.dart#L74)
    - [Remove permission group](https://github.com/fhir-fli/fhirlite_central/blob/main/lib/services/at_permissions.dart#L101)
    - [Rename permission group](https://github.com/fhir-fli/fhirlite_central/blob/main/lib/services/at_permissions.dart#L129)
    - [Add atsign to permission group](https://github.com/fhir-fli/fhirlite_central/blob/main/lib/services/at_permissions.dart#L15)
    - [Remove atsign from permission group](https://github.com/fhir-fli/fhirlite_central/blob/main/lib/services/at_permissions.dart#L44)
    - decide what permission groups actually have access to
    
2. Listening Groups
    - These are groups of @signs that are listening for changes for a patient or encounter (could technically be any resource, but these are the most common and logical)
    - if a clinician opens a patient, or a particular enounter, a notification is sent to @central
    - @central looks for a key for that patient or encounter (fhir.version.resourceType.id)
    - The value is a list of atsigns currently listening to that patient or encounter
    - Anytime there's an update to a resource for that patient, or anytime a new resource is created for that patient, a notification is sent to the clinician's @sign

3. Notifications
    - All notifications sent to the central @server are stored.
    - If the @sign that sent the notification has not been registered with @central, it is stored with the key:
    - fhir.notification.fromAtSign.YYYYMMDDHHMMSSSS.nameSpace:@owner
    - the fromAtSign is stored without the "@"
    - The dateTime is stored as 4-digit year, 2-digit month, 2-digit day, 2-digit hour (24 hour format), 2-digit minute, 4-digit second (ss.ss - but no decimal)
    - One type of Notification is a Request
    - [Request listener](https://github.com/fhir-fli/fhirlite_central/blob/main/bin/server.dart#L11)
    - Check permissions
    - [Reform request](https://github.com/fhir-fli/fhirlite_central/blob/main/bin/server.dart#L19)
    - [Log request](https://github.com/fhir-fli/fhirlite_central/blob/main/lib/services/log_request.dart)
    - [Make request](https://github.com/fhir-fli/fhirlite_central/blob/main/lib/services/make_request.dart)
    - [Receive result](https://github.com/fhir-fli/fhirlite_central/blob/main/bin/server.dart#L29)
    - [Notify @sign](https://github.com/fhir-fli/fhirlite_central/blob/main/lib/services/at_notify.dart) of [result](https://github.com/fhir-fli/fhirlite_central/blob/main/bin/server.dart#L31)
    - Create/update all listening groups (one for each resource), that @sign should now be subscribed to
