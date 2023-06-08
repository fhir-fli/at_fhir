import 'dart:async';

import 'package:at_client/at_client.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'listen.g.dart';

AtClient atClient = AtClientManager.getInstance().atClient;

/// Provider to listen to any changes of any FHIR resources
@riverpod
class AtListen extends _$AtListen {
  Stream<AtNotification> build() =>
      atClient.notificationService.subscribe(shouldDecrypt: true);
}
