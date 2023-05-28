import 'dart:convert';

import 'package:at_client/at_client.dart';
import 'package:fhir/r4.dart';

import '../models/models.dart';

/// Provider writes to your atsign and returns a message of success or failure
Future<SuccessOrErrorMessage> atSignUpdateFhirResource(AtFhirObject afo) async {
  AtClient atClient = AtClientManager.getInstance().atClient;
  AtKey atKey = AtKey();
  atKey
    ..key = afo.atKey
    ..namespace = 'fhir';
  final result = await atClient.put(atKey, afo.atFhirResource);
  if (result) {
    return const SuccessOrErrorMessage.success();
  } else {
    return const SuccessOrErrorMessage.failure('Failure!');
  }
}

/// Provider requests a resource from your atsign
Future<Resource> atSignGetFhirResource(
  String resourceType,
  String id, [
  AtFhirVersion atFhirVersion = AtFhirVersion.r4,
]) async {
  AtClient atClient = AtClientManager.getInstance().atClient;

  AtKey atKey = AtKey()..key = 'fhir.$atFhirVersion.$resourceType.$id';
  final AtValue atValue = await atClient.get(atKey);
  if (atValue.value is! String) {
    return operationOutcome(atKey, atValue);
  } else {
    final maybeMap = jsonDecode(atValue.value);
    if (maybeMap is Map<String, dynamic> &&
        maybeMap['resourceType'] is String &&
        resourceTypeFromStringMap.keys.contains(maybeMap['resourceType'])) {
      return Resource.fromJson(maybeMap);
    } else {
      return operationOutcome(atKey, atValue);
    }
  }
}

/// Provider requests all resources from your atsign
Future<List<Resource>> atSignGetAllFhirResources() async {
  AtClient atClient = AtClientManager.getInstance().atClient;
  final allKeys = await atClient.getAtKeys();
  allKeys.retainWhere((element) => element.namespace == 'fhir');
  final List<Resource> resourceList = <Resource>[];
  for (final AtKey atKey in allKeys) {
    final AtValue atValue = await atClient.get(atKey);
    if (atValue.value is! String) {
      resourceList.add(operationOutcome(atKey, atValue));
    } else {
      final maybeMap = jsonDecode(atValue.value);
      if (maybeMap is Map<String, dynamic> &&
          maybeMap['resourceType'] is String &&
          resourceTypeFromStringMap.keys.contains(maybeMap['resourceType'])) {
        resourceList.add(Resource.fromJson(maybeMap));
      } else {
        resourceList.add(operationOutcome(atKey, atValue));
      }
    }
  }
  return resourceList;
}

OperationOutcome operationOutcome(AtKey atKey, AtValue atValue) =>
    OperationOutcome(issue: [
      OperationOutcomeIssue(
        severity: FhirCode('error'),
        code: FhirCode('unknown'),
        details: CodeableConcept(
            text: 'A Non-parseable object was returned from the request for '
                'the Resource ${atKey.key}.\n'),
        diagnostics: 'Returned Value: ${atValue.value}\n'
            'MetaData: ${atValue.metadata}',
      )
    ]);
