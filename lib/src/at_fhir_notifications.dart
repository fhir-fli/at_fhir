import 'package:at_client/at_client.dart';

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
