import '../../lib/models/at_fhir_version.dart';
import 'package:test/test.dart';

void atFhirVersionTest() {
  group('AtFhirVersion', () {
    test('dstu2 should return "dstu2"', () {
      expect(AtFhirVersion.dstu2.toString(), equals('dstu2'));
    });

    test('stu3 should return "stu3"', () {
      expect(AtFhirVersion.stu3.toString(), equals('stu3'));
    });

    test('r4 should return "r4"', () {
      expect(AtFhirVersion.r4.toString(), equals('r4'));
    });

    test('r5 should return "r5"', () {
      expect(AtFhirVersion.r5.toString(), equals('r5'));
    });
  });
}
