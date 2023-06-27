import 'package:at_client/at_client.dart';

void atFhirListen(
    AtClient atClient, Function(AtClient, AtNotification) listenFunction) {
  atClient.notificationService
      .subscribe(shouldDecrypt: true)
      .listen((AtNotification atNotification) async {
    print(atNotification.toJson());
    listenFunction(atClient, atNotification);
  });
}
