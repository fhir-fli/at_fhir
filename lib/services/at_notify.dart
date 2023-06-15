import 'dart:async';
import 'dart:convert';

import 'package:at_client/at_client.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../at_fhir.dart';

part 'at_notify.g.dart';

/// Provider to notify a specific atSign
@riverpod
class AtNotify extends _$AtNotify {
  AtClient atClient = AtClientManager.getInstance().atClient;
  Future<NotificationResult> build(Map<String, dynamic> json, String atSign) {
    return atClient.notificationService.notify(NotificationParams.forText(
      jsonEncode(json),
      atSign,
      shouldEncrypt: true,
    ));
  }
}

/// Provider to notify a specific atSign
@riverpod
class AtFhirNotify extends _$AtFhirNotify {
  AtClient atClient = AtClientManager.getInstance().atClient;
  Future<NotificationResult> build(
      AtFhirNotification atFhirNotification, String atSign) {
    return atClient.notificationService.notify(NotificationParams.forText(
      atFhirNotification.toJsonString(),
      atSign,
      shouldEncrypt: true,
    ));
  }
}
