import 'dart:developer';

import 'package:at_client/at_client.dart';
import 'package:at_fhir/at_fhir.dart';
import 'package:fhir/dstu2.dart' as dstu2;
import 'package:fhir/r4.dart' as r4;
import 'package:fhir/r5.dart' as r5;
import 'package:fhir/stu3.dart' as stu3;

Future<dynamic> main() async {
  atFhirListen(AtClientManager.getInstance().atClient, listenFunction);
}

dynamic listenFunction(AtClient atClient, AtNotification atNotification) async {
  try {
    /// Note where the notification came from
    final String fromAtSign = atNotification.from;

    if (atNotification.value == null) {
      throw Exception('Notification value is null');
    } else {
      /// If the request is from a trusted source, parse the request
      final AtFhirNotification atFhirNotification =
          AtFhirNotification.fromJsonString(atNotification.value!);
      await atClient.notificationService.notify(NotificationParams.forText(
        'You do not have permission to access this server.',
        fromAtSign,
        shouldEncrypt: true,
      ));

      /// Handle the request
      switch (atFhirNotification) {
        case AtFhirDstu2RequestNotification():
          {
            final dstu2.Resource resource = dstu2.Resource.fromJsonString(
                atFhirNotification.value.toJsonString());
            await atFhirNotify(
              atClient,
              AtFhirDstu2ResourceNotification(resource),
              fromAtSign,
            );
          }
          break;
        case AtFhirStu3RequestNotification():
          {
            final stu3.Resource resource = stu3.Resource.fromJsonString(
                atFhirNotification.value.toJsonString());
            await atFhirNotify(
              atClient,
              AtFhirStu3ResourceNotification(resource),
              fromAtSign,
            );
          }
          break;
        case AtFhirR4RequestNotification():
          {
            final r4.Resource resource = r4.Resource.fromJsonString(
                atFhirNotification.value.toJsonString());
            await atFhirNotify(
              atClient,
              AtFhirR4ResourceNotification(resource),
              fromAtSign,
            );
          }
          break;
        case AtFhirR5RequestNotification():
          {
            final r5.Resource resource = r5.Resource.fromJsonString(
                atFhirNotification.value.toJsonString());
            await atFhirNotify(
              atClient,
              AtFhirR5ResourceNotification(resource),
              fromAtSign,
            );
          }
          break;
        default:
          {
            log('Unallowed notification: ${atFhirNotification.toJsonString()}');
          }
      }
    }
  } catch (e, st) {
    log('Unable to parse request', error: e, stackTrace: st);
  }
}
