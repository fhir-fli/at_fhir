import 'dart:async';

import 'package:at_client/at_client.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../at_fhir.dart';

part 'at_fhir_listen.g.dart';

/// Provider to listen to any changes of any FHIR resources
@riverpod
class AtFhirListen extends _$AtFhirListen {
  AtClient atClient = AtClientManager.getInstance().atClient;
  Stream<AtNotification> build() => atClient.notificationService.subscribe(
      regex:
          'fhir\.(dstu2|stu3|r4|r5)\.($resourceTypesRegex)\.[A-Za-z0-9\-\.]{1,64}',
      shouldDecrypt: true);
}

/// Provider to listen to any changes to FHIR resources of the specified type
@riverpod
class AtFhirResourceTypeListen extends _$AtFhirResourceTypeListen {
  AtClient atClient = AtClientManager.getInstance().atClient;
  Stream<AtNotification> build(String resourceType) =>
      atClient.notificationService.subscribe(
          regex:
              'fhir.(dstu2|stu3|r4|r5)\.$resourceType\.[A-Za-z0-9\-\.]{1,64}',
          shouldDecrypt: true);
}

/// Provider to listen to any changes to a specific FHIR resource
@riverpod
class AtFhirSingleResourceListen extends _$AtFhirSingleResourceListen {
  AtClient atClient = AtClientManager.getInstance().atClient;
  Stream<AtNotification> build(String resourceType, String id) =>
      atClient.notificationService.subscribe(
          regex: 'fhir.(dstu2|stu3|r4|r5).$resourceType.$id',
          shouldDecrypt: true);
}

/// Listens to All Changes
@riverpod
class AtListen extends _$AtListen {
  AtClient atClient = AtClientManager.getInstance().atClient;
  Stream<AtNotification> build() =>
      atClient.notificationService.subscribe(shouldDecrypt: true);
}
