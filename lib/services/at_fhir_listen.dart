import 'dart:async';

import 'package:at_client/at_client.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../at_fhir.dart';

part 'at_fhir_listen.g.dart';

/// Listens to All Changes
@Riverpod(keepAlive: true)
class AtFhirListen extends _$AtFhirListen {
  @override
  Stream<AtFhirNotification> build(AtClient atClient) async* {
    atClient.notificationService
        .subscribe(shouldDecrypt: true)
        .map((AtNotification atNotification) async* {
      if (atNotification.value != null) {
        try {
          final AtFhirNotification atFhirNotification =
              AtFhirNotification.fromJsonString(atNotification.value!);
          yield atFhirNotification;
        } catch (exception) {
          // TODO(Dokotela): what do to with this error
        }
      }
    });
  }
}
