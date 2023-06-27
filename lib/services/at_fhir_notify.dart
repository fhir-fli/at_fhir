import 'dart:async';

import 'package:at_client/at_client.dart';

import '../at_fhir.dart';

Future<NotificationResult> atFhirNotify(
  AtClient atClient,
  AtFhirNotification atFhirNotification,
  String atSign,
) =>
    atClient.notificationService.notify(NotificationParams.forText(
      atFhirNotification.toJsonString(),
      atSign,
      shouldEncrypt: true,
    ));
