import 'package:at_onboarding_flutter/at_onboarding_flutter.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../models/resource_types_regex.dart';

AtClient atClient = AtClientManager.getInstance().atClient;

@riverpod
Stream<int> values(ValuesRef ref) {
  atClient.notificationService
      .subscribe(
          regex:
              'fhir.(dstu2|stu3|r4|r5).($resourceTypesRegex).[A-Za-z0-9\-\.]{1,64}',
          shouldDecrypt: true)
      .listen(((notification) async {
    notification.value;
    String keyAtsign = notification.key;
    // keyAtsign = keyAtsign.replaceAll(notification.to + ':', '');
    // keyAtsign = keyAtsign.replaceAll('.' + nameSpace + notification.from, '');
    // if (keyAtsign == 'attalk') {
    //   _logger.info('atTalk update received from ' +
    //       notification.from +
    //       ' notification id : ' +
    //       notification.id);
    // }
  }),
          onError: (e) => _logger.severe('Notification Failed:' + e.toString()),
          onDone: () => _logger.info('Notification listener stopped'));
}
