import 'package:at_fhir/at_fhir.dart';
import 'package:fhir/dstu2.dart' as dstu2;
import 'package:test/test.dart';

void main() {
  group('AtFhirNotification', () {
    test('fromJsonString should return a valid AtFhirNotification object', () {
      const String jsonString =
          '{"dstu2Resource": {"value": { "resourceType": "Patient" }}}';

      final AtFhirNotification notification =
          AtFhirNotification.fromJsonString(jsonString);

      expect(notification, isA<AtFhirNotification>());
    });

    test('toJsonString should return a valid JSON string representation', () {
      const String expectedJsonString =
          '{"dstu2Resource":{"value":{"resourceType":"Patient"}}}';

      const AtFhirNotification notification = AtFhirNotification.dstu2Resource(
        dstu2.Patient(),
      );

      expect(notification.toJsonString(), equals(expectedJsonString));
    });
  });
}
