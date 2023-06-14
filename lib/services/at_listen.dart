import 'dart:async';

import 'package:at_client/at_client.dart';
import '../../at_fhir.dart';
import 'package:fhir/r4.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'at_listen.g.dart';

/// Listens to All Changes
@Riverpod(keepAlive: true)
class AtListen extends _$AtListen {
  AtClient atClient = AtClientManager.getInstance().atClient;
  Stream build() async* {
    atClient.notificationService
        .subscribe(shouldDecrypt: true)
        .listen((atNotification) {
      if (atNotification.value != null) {
        try {
          final Resource resource =
              Resource.fromJsonString(atNotification.value!);
          prettyPrintJson(resource.toJson());
        } catch (exception, stackTrace) {
          // TODO(Dokotela): what do to with this error
        }
      }
    });
  }
}
