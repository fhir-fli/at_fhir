import 'dart:async';

import 'package:at_client/at_client.dart';
import 'package:at_fhir/models/at_fhir_notification/at_fhir_notification.dart';
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

/// Listens to All Changes
@Riverpod(keepAlive: true)
class AtFhirListen extends _$AtFhirListen {
  AtClient atClient = AtClientManager.getInstance().atClient;
  Stream build() async* {
    atClient.notificationService
        .subscribe(shouldDecrypt: true)
        .listen((atNotification) {
      if (atNotification.value != null) {
        try {
          final AtFhirNotification atFhirNotification =
              AtFhirNotification.fromJsonString(atNotification.value!);
          prettyPrintJson(atFhirNotification.toJson());
        } catch (exception, stackTrace) {
          // TODO(Dokotela): what do to with this error
        }
      }
    });
  }
}
