# atsign_fhir
Group of utility classes for working with the atsign and fhir

## Formatting

#### Keys for FHIR resources stored on at atSign
    - fhir.version.resourceType.fhirId
    - fhir.stu3.patient.12345  

    full value would be
    - @sharedWith:fhir.version.resourceType.id.nameSpace:@owner
    - @bob:fhir.r4.observation.blood-pressure.fhir:@alice 
#### FHIR permissions - if you're going to try to use an atSign as a reverse proxy
    - fhir.permission.groupName.nameSpace:@owner

#### 
