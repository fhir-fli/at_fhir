import 'dart:async';

import 'package:at_client/at_client.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../at_fhir.dart';

part 'at_fhir_listen.g.dart';

AtClient atClient = AtClientManager.getInstance().atClient;

/// Provider to listen to any changes of any FHIR resources
@riverpod
class AtFhirListen extends _$AtFhirListen {
  Stream<AtNotification> build() => atClient.notificationService.subscribe(
      regex:
          'fhir\.(dstu2|stu3|r4|r5)\.($resourceTypesRegex)\.[A-Za-z0-9\-\.]{1,64}',
      shouldDecrypt: true);
}

/// Provider to listen to any changes to FHIR resources of the specified type
@riverpod
class AtSignResourceTypeStream extends _$AtSignResourceTypeStream {
  Stream<AtNotification> build(String resourceType) =>
      atClient.notificationService.subscribe(
          regex:
              'fhir.*', //\.(dstu2|stu3|r4|r5)\.$resourceType\.[A-Za-z0-9\-\.]{1,64}',
          shouldDecrypt: true);
}

/// Provider to listen to any changes to a specific FHIR resource
@riverpod
class AtSignResourceStream extends _$AtSignResourceStream {
  Stream<AtNotification> build(String resourceType, String id) =>
      atClient.notificationService.subscribe(
          regex: 'fhir.(dstu2|stu3|r4|r5).$resourceType.$id',
          shouldDecrypt: true);
}

  //     .listen((event) async* {
  //   final keyList = event.key.split('.');

  //   /// Check to ensure the key has at least the 4 parts of a FHIR resource
  //   /// at an atsign (fhir.version.resourceType.id)
  //   if (keyList.length > 3 && event.value != null) {
  //     switch (keyList[1]) {
  //       case 'dstu2':
  //         yield dstu2.Resource.fromJsonString(event.value!);
  //       case 'stu3':
  //         yield stu3.Resource.fromJsonString(event.value!);
  //       case 'r4':
  //         yield r4.Resource.fromJsonString(event.value!);
  //       case 'r5':
  //         yield r5.Resource.fromJsonString(event.value!);
  //       default:
  //     }
  //   }
  // });