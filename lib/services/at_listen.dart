import 'dart:async';

import 'package:at_client/at_client.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'at_listen.g.dart';

/// Listens to All Changes
@riverpod
class AtListen extends _$AtListen {
  AtClient atClient = AtClientManager.getInstance().atClient;
  Stream<AtNotification> build() =>
      atClient.notificationService.subscribe(shouldDecrypt: true);
}
