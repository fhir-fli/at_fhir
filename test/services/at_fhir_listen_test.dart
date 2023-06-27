import 'package:at_client/at_client.dart';
import 'package:at_fhir/at_fhir.dart';
import 'package:fhir/dstu2.dart' as dstu2;
import 'package:mockito/mockito.dart';
import 'package:riverpod/riverpod.dart';
import 'package:test/test.dart';

class MockAtClient extends Mock implements AtClient {
  @override
  final NotificationService notificationService = MockNotificationService();
}

class MockNotificationService extends Mock implements NotificationService {
  @override
  Stream<AtNotification> subscribe({String? regex, bool? shouldDecrypt}) {
    return Stream<AtNotification>.fromIterable(<AtNotification>[
      AtNotification('id1', 'key1', '@from1', '@to1', 12345, 'text', true),
      AtNotification('id2', 'key2', '@from2', '@to2', 12345, 'text', true,
          value: AtFhirDstu2ResourceNotification(
                  dstu2.Patient(fhirId: dstu2.FhirId('id2')))
              .toJsonString()),
      AtNotification('id3', 'key3', '@from3', '@to3', 12345, 'text', true),
      AtNotification('id4', 'key4', '@from4', '@to4', 12345, 'text', true),
    ]);
  }
}

class Listener<T> extends Mock {
  void call(T? previous, T next);
}

void main() {
  group('AtFhirListen', () {
    test('should return AtFhirNotification', () async {
      final MockAtClient atClient = MockAtClient();
      final ProviderContainer container = ProviderContainer();
      final Listener<AsyncValue<AtFhirNotification>> listener =
          Listener<AsyncValue<AtFhirNotification>>();

      container.listen(
        atFhirListenProvider(atClient),
        listener,
        fireImmediately: true,
      );
      verify(
        () => listener(
            null,
            AsyncData<AtFhirNotification>(
              AtFhirDstu2ResourceNotification(
                  dstu2.Patient(fhirId: dstu2.FhirId('id2'))),
            )),
      );
    });
  });
}
