import 'dart:convert';

import 'package:fhir/dstu2.dart' as dstu2;
import 'package:fhir/r4.dart' as r4;
import 'package:fhir/r5.dart' as r5;
import 'package:fhir/stu3.dart' as stu3;
import 'package:freezed_annotation/freezed_annotation.dart';

part 'at_fhir_object.freezed.dart';

/// A class that creates the bridge between storing FHIR data on an atSign and
/// using it in a Dart class (and includes some convenience methods), basic
/// object contains a String atKey, which is the key where the object can be
/// found, the FHIR resource, converted into a simple string (JSON), and
/// whether or not it is an OperationOutcome (this is mostly due to the fact
/// that if a Resource cannot be properly parsed by this class, it turns it
/// into an OperationOutcome, so this allows a quick check before uploading
/// if desired)
@freezed
class AtFhirObject with _$AtFhirObject {
  /// const Private Constructor
  const AtFhirObject._();

  /// A class that creates the bridge between storing FHIR data on an atSign and
  /// using it in a Dart class (and includes some convenience methods), basic
  /// object contains a String atKey, which is the key where the object can be
  /// found, the FHIR resource, converted into a simple string (JSON), and
  /// whether or not it is an OperationOutcome (this is mostly due to the fact
  /// that if a Resource cannot be properly parsed by this class, it turns it
  /// into an OperationOutcome, so this allows a quick check before uploading
  /// if desired)
  const factory AtFhirObject({
    required String atKey,
    required String atFhirResource,
    required bool isOperationOutcome,
  }) = _AtFhirObject;

  /// The factory for taking a Dstu2 resource and converting it into an
  /// AtFhirObject to be stored at an atSign
  factory AtFhirObject.dstu2(dstu2.Resource resource) {
    dstu2.Resource newResource;

    /// If there is no resourceType, we turn it into an OperationOutcome,
    /// because this is certainly an error
    if (resource.resourceType == null) {
      newResource = dstu2.OperationOutcome(
        contained: [resource],
        issue: [
          dstu2.OperationOutcomeIssue(
              severity: dstu2.IssueSeverity.error,
              code: dstu2.FhirCode('structure'),
              details: dstu2.CodeableConcept(
                text:
                    'No resourceType was present in the resource contained in this OperationOutcome',
              )),
        ],
      ).newId();
    }

    /// We do also ensure that the resource has an Id, but can supply one if it
    /// does not
    else if (resource.fhirId == null) {
      newResource = resource.newId();
    } else {
      newResource = resource;
    }

    /// We return the object, including the creation of an atKey where it can
    /// be stored, in the form fhir.dstu2.resourceType.id
    return AtFhirObject(
      atKey:
          'fhir.dstu2.${newResource.resourceTypeString!}.${newResource.fhirId}',
      atFhirResource: jsonEncode(newResource.toJson()),
      isOperationOutcome: resource is dstu2.OperationOutcome,
    );
  }

  /// The factory for taking a Dstu2 resource and converting it into an
  /// AtFhirObject to be stored at an atSign
  factory AtFhirObject.stu3(stu3.Resource resource) {
    stu3.Resource newResource;

    /// If there is no resourceType, we turn it into an OperationOutcome,
    /// because this is certainly an error
    if (resource.resourceType == null) {
      newResource = stu3.OperationOutcome(
        contained: [resource],
        issue: [
          stu3.OperationOutcomeIssue(
              severity: stu3.OperationOutcomeIssueSeverity.error,
              code: stu3.OperationOutcomeIssueCode.structure,
              details: stu3.CodeableConcept(
                text:
                    'No resourceType was present in the resource contained in this OperationOutcome',
              )),
        ],
      ).newId();
    }

    /// We do also ensure that the resource has an Id, but can supply one if it
    /// does not
    else if (resource.fhirId == null) {
      newResource = resource.newId();
    } else {
      newResource = resource;
    }

    /// We return the object, including the creation of an atKey where it can
    /// be stored, in the form fhir.stu3.resourceType.id
    return AtFhirObject(
      atKey:
          'fhir.stu3.${newResource.resourceTypeString!}.${newResource.fhirId}',
      atFhirResource: jsonEncode(newResource.toJson()),
      isOperationOutcome: resource is stu3.OperationOutcome,
    );
  }

  /// The factory for taking a Dstu2 resource and converting it into an
  /// AtFhirObject to be stored at an atSign
  factory AtFhirObject.r4(r4.Resource resource) {
    r4.Resource newResource;

    /// If there is no resourceType, we turn it into an OperationOutcome,
    /// because this is certainly an error
    if (resource.resourceType == null) {
      newResource = r4.OperationOutcome(
        contained: [resource],
        issue: [
          r4.OperationOutcomeIssue(
              severity: r4.FhirCode('error'),
              code: r4.FhirCode('structure'),
              details: r4.CodeableConcept(
                text:
                    'No resourceType was present in the resource contained in this OperationOutcome',
              )),
        ],
      ).newId();
    }

    /// We do also ensure that the resource has an Id, but can supply one if it
    /// does not
    else if (resource.fhirId == null) {
      newResource = resource.newId();
    } else {
      newResource = resource;
    }

    /// We return the object, including the creation of an atKey where it can
    /// be stored, in the form fhir.r4.resourceType.id
    return AtFhirObject(
      atKey: 'fhir.r4.${newResource.resourceTypeString!}.${newResource.fhirId}',
      atFhirResource: jsonEncode(newResource.toJson()),
      isOperationOutcome: resource is r4.OperationOutcome,
    );
  }

  /// The factory for taking a Dstu2 resource and converting it into an
  /// AtFhirObject to be stored at an atSign
  factory AtFhirObject.r5(r5.Resource resource) {
    r5.Resource newResource;

    /// If there is no resourceType, we turn it into an OperationOutcome,
    /// because this is certainly an error
    if (resource.resourceType == null) {
      newResource = r5.OperationOutcome(
        contained: [resource],
        issue: [
          r5.OperationOutcomeIssue(
              severity: r5.FhirCode('error'),
              code: r5.FhirCode('structure'),
              details: r5.CodeableConcept(
                text:
                    'No resourceType was present in the resource contained in this OperationOutcome',
              )),
        ],
      ).newId();
    }

    /// We do also ensure that the resource has an Id, but can supply one if it
    /// does not
    else if (resource.fhirId == null) {
      newResource = resource.newId();
    } else {
      newResource = resource;
    }

    /// We return the object, including the creation of an atKey where it can
    /// be stored, in the form fhir.r5.resourceType.id
    return AtFhirObject(
      atKey: 'fhir.r5.${newResource.resourceTypeString!}.${newResource.fhirId}',
      atFhirResource: jsonEncode(newResource.toJson()),
      isOperationOutcome: resource is r5.OperationOutcome,
    );
  }

  /// Changes the entry back to a FHIR resource
  dynamic toFhir() {
    final params = atKey.split('.');
    switch (params[1]) {
      case 'r5':
        return r5.Resource.fromJsonString(atFhirResource);
      case 'r4':
        return r4.Resource.fromJsonString(atFhirResource);
      case 'stu3':
        return stu3.Resource.fromJsonString(atFhirResource);
      case 'dstu2':
        return dstu2.Resource.fromJsonString(atFhirResource);
      default:
    }
  }
}
