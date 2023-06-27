import 'package:at_client/at_client.dart';
import 'package:fhir/dstu2.dart' as dstu2;
import 'package:fhir/r4.dart' as r4;
import 'package:fhir/r5.dart' as r5;
import 'package:fhir/stu3.dart' as stu3;

import '../models/success_or_error/success_or_error.dart';

/// Gets a value from the specified atKey. NameSpace can be specified, but
/// for us the default is going to be FHIR. Returns a SuccessOrError object
/// for hopefully easier handling
Future<SuccessOrError> atSignGet({
  required String atKey,
  String? nameSpace = 'fhir',
}) async {
  final AtClient atClient = AtClientManager.getInstance().atClient;
  final AtKey newAtKey = AtKey();
  newAtKey
    ..key = atKey
    ..namespace = nameSpace;
  try {
    final AtValue result = await atClient.get(newAtKey);
    if (result.value != null && result.value is String) {
      return SuccessOrError.successString(result.value as String);
    } else {
      return const SuccessOrError.failureMessage(
          'The return value was null or inappropriately formed');
    }
  } catch (exception, stackTrace) {
    if (exception is AtException) {
      return SuccessOrError.atSign(exception, stackTrace);
    } else {
      return SuccessOrError.exception(exception, stackTrace);
    }
  }
}

/// Stores a FHIR value at an atSign. Checks to be sure it's a Resource for one
/// of the supported FHIR versions, if not, returns an error
Future<SuccessOrError> atSignPutFhir({
  required AtClient atClient,
  required dynamic resource,
  String nameSpace = 'fhir',
}) async {
  if (resource is r5.Resource) {
    final r5.Resource newResource = resource.newIdIfNoId();
    return atSignPut(
      atClient: atClient,
      value: resource.toJsonString(),
      atKey: 'fhir.r5.${newResource.resourceTypeString}.${newResource.fhirId}',
      nameSpace: nameSpace,
    );
  } else if (resource is r4.Resource) {
    final r4.Resource newResource = resource.newIdIfNoId();
    return atSignPut(
      atClient: atClient,
      value: resource.toJsonString(),
      atKey: 'fhir.r4.${newResource.resourceTypeString}.${newResource.fhirId}',
      nameSpace: nameSpace,
    );
  } else if (resource is stu3.Resource) {
    final stu3.Resource newResource = resource.newIdIfNoId();
    return atSignPut(
      atClient: atClient,
      value: resource.toJsonString(),
      atKey:
          'fhir.stu3.${newResource.resourceTypeString}.${newResource.fhirId}',
      nameSpace: nameSpace,
    );
  } else if (resource is dstu2.Resource) {
    final dstu2.Resource newResource = resource.newIdIfNoId();
    return atSignPut(
      atClient: atClient,
      value: resource.toJsonString(),
      atKey:
          'fhir.dstu2.${newResource.resourceTypeString}.${newResource.fhirId}',
      nameSpace: nameSpace,
    );
  } else {
    return const SuccessOrError.failureMessage(
        'Value passed was not a FHIR resource.');
  }
}

/// Puts the specied value at the specified atKey location, nameSpace can be
/// defined, but for us the default will be fhir
Future<SuccessOrError> atSignPut({
  required AtClient atClient,
  required String value,
  required String atKey,
  String? nameSpace = 'fhir',
  String? sharedWith,
}) async {
  final AtKey newAtKey = AtKey();
  newAtKey
    ..sharedWith = sharedWith
    ..key = atKey
    ..namespace = nameSpace;
  try {
    final bool result = await atClient.put(newAtKey, value);
    if (result) {
      return const SuccessOrError.success();
    } else {
      return const SuccessOrError.failureMessage('Failed to put the value.');
    }
  } catch (exception, stackTrace) {
    if (exception is AtException) {
      return SuccessOrError.atSign(exception, stackTrace);
    } else {
      return SuccessOrError.exception(exception, stackTrace);
    }
  }
}

/// Removes the value and key at the specified location
Future<SuccessOrError> atSignDelete({
  required String atKey,
  String? nameSpace = 'fhir',
}) async {
  final AtClient atClient = AtClientManager.getInstance().atClient;
  final AtKey newAtKey = AtKey();
  newAtKey
    ..key = atKey
    ..namespace = nameSpace;
  try {
    final bool result = await atClient.delete(newAtKey);
    if (result) {
      return const SuccessOrError.success();
    } else {
      return const SuccessOrError.failureMessage('Failed to remove the value.');
    }
  } catch (exception, stackTrace) {
    if (exception is AtException) {
      return SuccessOrError.atSign(exception, stackTrace);
    } else {
      return SuccessOrError.exception(exception, stackTrace);
    }
  }
}
