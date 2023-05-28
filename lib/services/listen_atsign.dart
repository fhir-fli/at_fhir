import 'package:at_client/at_client.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:fhir/dstu2.dart' as dstu2;
import 'package:fhir/r4.dart' as r4;
import 'package:fhir/r5.dart' as r5;
import 'package:fhir/stu3.dart' as stu3;

import '../at_fhir.dart';

part 'listen_atsign.g.dart';

AtClient atClient = AtClientManager.getInstance().atClient;

@riverpod
Stream<dynamic> values(ValuesRef ref) {
  atClient.notificationService
      .subscribe(
          regex:
              'fhir.(dstu2|stu3|r4|r5).($resourceTypesRegex).[A-Za-z0-9\-\.]{1,64}',
          shouldDecrypt: true)
      .listen(((notification) async {
    notification.value;
    final keyList = notification.key.split('.');
    if (keyList.length > 3) {
      final versionString = keyList[1];
      if (['dstu2', 'stu3', 'r4', 'r5'].contains(versionString)) {
        switch (versionString) {
          case 'dstu2':
            return dstu2.Resource.fromJsonString(notification.value!);
            break;
          case 'stu3':
            stu3.Resource.fromJsonString(notification.value!);
            break;
          case 'r4':
            r4.Resource.fromJsonString(notification.value!);
            break;
          case 'r5':
            r5.Resource.fromJsonString(notification.value!);
            break;
          default:
        }
      } else {
        // TODO(Dokotela): handle inappropriate version
      }
    } else {
      // TODO(Dokotela): handle wrong list length
    }
  }), onError: (e) {}, onDone: () {});
}
