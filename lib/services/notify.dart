import 'dart:async';
import 'dart:convert';

import 'package:at_client/at_client.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'notify.g.dart';

AtClient atClient = AtClientManager.getInstance().atClient;

/// Provider to notify a specific atSign
@riverpod
class AtNotify extends _$AtNotify {
  Future<NotificationResult> build(Map<String, dynamic> json, String atSign) {
    return atClient.notificationService.notify(NotificationParams.forText(
      jsonEncode(json),
      atSign,
      shouldEncrypt: true,
    ));
  }
}
