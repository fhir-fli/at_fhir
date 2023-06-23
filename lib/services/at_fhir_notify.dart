import 'dart:async';

import 'package:at_client/at_client.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../at_fhir.dart';

part 'at_fhir_notify.g.dart';

/// Provider to notify a specific atSign
@riverpod
class AtFhirNotify extends _$AtFhirNotify {
  AtClient atClient = AtClientManager.getInstance().atClient;
  @override
  Future<NotificationResult> build(
      AtFhirNotification atFhirNotification, String atSign) {
    return atClient.notificationService.notify(NotificationParams.forText(
      atFhirNotification.toJsonString(),
      atSign,
      shouldEncrypt: true,
    ));
  }
}
