# atsign_fhir

Group of utility classes for working with the atsign and fhir

## Formatting

### Keys for FHIR resources stored on at atSign

    - fhir.version.resourceType.fhirId
    - fhir.stu3.patient.12345  

    full value would be
    - @sharedWith:fhir.version.resourceType.id.nameSpace:@owner
    - @bob:fhir.r4.observation.blood-pressure.fhir:@alice 

### Server Key:Value

    - fhir.permissiongroups.namespace:@fhircentral - list of the different permissionGroups
    - fhir.permission.groupname.namespace:@fhircentral - a specific permission group, value would be a list of atsigns belonging to this group
    - @sharedWith:fhir.request.YYYYMMDDHHMMSSSS:@owner - how a request is logged. 4-digit year, 2-digit month, 2-digit day, 2-digit hour (24 hour format), 2-digit minute, 4-digit second (ss.ss - but no decimal)

## TODO Utilities (if it's a link, it's been completed)

### Permission Groups

    - [Create new permission group](https://github.com/fhir-fli/at_fhir/blob/main/lib/services/at_permissions.dart#L68)
    - [Remove permission group](https://github.com/fhir-fli/at_fhir/blob/main/lib/services/at_permissions.dart#L96)
    - [Rename permission group](https://github.com/fhir-fli/at_fhir/blob/main/lib/services/at_permissions.dart#L125)
    - [Add atsign to permission group](https://github.com/fhir-fli/at_fhir/blob/main/lib/services/at_permissions.dart#L9)
    - [Remove atsign from permission group](https://github.com/fhir-fli/at_fhir/blob/main/lib/services/at_permissions.dart#L38)
    - decide what permission groups actually have access to

### Requests

    - [Request listener](https://github.com/fhir-fli/fhirlite_central/blob/main/bin/server.dart#L11)
    - Check permissions
    - [Reform request](https://github.com/fhir-fli/fhirlite_central/blob/main/bin/server.dart#L15)
    - [Log request](https://github.com/fhir-fli/fhirlite_central/blob/main/lib/src/services/log_request.dart)
    - [Make request](https://github.com/fhir-fli/fhirlite_central/blob/main/lib/src/services/make_request.dart)
    - [Receive result](https://github.com/fhir-fli/fhirlite_central/blob/main/bin/server.dart#L27)
    - Notify @sign of result
    - Create/update all listening groups (one for each resource), that @sign should now be subscribed to

### Listening group

    - a listening group is a list of atsigns that has currently downloaded/requested a particular resource
    - on the server, the key is a typical FHIR resource key (fhir.version.resourceType.id), but the value is the list of atsigns that is listening to that resource
    - Anytime a resource is requested, add the requester to the listening group
    - Anytime a resource is created, add the requester to the listening group
    - Anytime an update occurs for that particular resource, the server pushes the new resource as a notification to all of the listening atsigns

### Patient Workflow

![Patient Workflow](https://github.com/fhir-fli/at_fhir/blob/main/png/patient_workflow.png)

### Server Workflow

![Server Workflow](https://github.com/fhir-fli/at_fhir/blob/main/png/server_workflow.png)
