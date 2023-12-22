import 'package:at_client/at_client.dart';
import 'package:fhir/dstu2.dart' as dstu2;
import 'package:fhir/r4.dart' as r4;
import 'package:fhir/r5.dart' as r5;
import 'package:fhir/stu3.dart' as stu3;

import '../at_fhir.dart';

/// Listen for notifications from another @sign
void atFhirListen(
    AtClient atClient, Function(AtClient, AtNotification) listenFunction) {
  atClient.notificationService
      .subscribe(shouldDecrypt: true)
      .listen((AtNotification atNotification) async {
    /// Allows a function to be defined by the calling application
    listenFunction(atClient, atNotification);
  });
}

/// Send a notification to another @sign
Future<NotificationResult> atFhirNotify(
  AtClient atClient,
  AtFhirNotification atFhirNotification,
  String atSign,
) {
  /// make some metadata
  final Metadata metaData = Metadata()
    ..isPublic = false
    ..isEncrypted = true;

  /// Create the atKey (it's part of the process even if we don't store it)
  final AtKey atKey = AtKey()
    ..key = 'notification'
    ..sharedWith = atSign
    ..metadata = metaData;

  /// Send the notification, and return the response
  return atClient.notificationService.notify(NotificationParams.forUpdate(
    atKey,
    value: atFhirNotification.toJsonString(),
  ));
}

/// Stores a FHIR value at an atSign. Checks to be sure it's a Resource for one
/// of the supported FHIR versions, if not, returns an error
Future<bool> atSignPutFhir({
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
    return false;
  }
}

/// Puts the specied value at the specified atKey location, nameSpace can be
/// defined, but for us the default will be fhir
Future<bool> atSignPut({
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
    return await atClient.put(newAtKey, value);
  } catch (exception) {
    return false;
  }
}
