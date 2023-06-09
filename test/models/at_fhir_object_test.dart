import 'dart:convert';

import 'package:fhir/dstu2.dart' as dstu2;
import 'package:fhir/r4.dart' as r4;
import 'package:fhir/r5.dart' as r5;
import 'package:fhir/stu3.dart' as stu3;
import 'package:test/test.dart';

import '../../lib/models/at_fhir_object/at_fhir_object.dart';

void atFhirObjectTest() {
  group('AtFhirObject', () {
    test('can be created from a Dstu2 resource', () {
      final resource = dstu2.Patient(
        resourceType: dstu2.Dstu2ResourceType.Patient,
        fhirId: dstu2.FhirId('123456'),
        name: [
          dstu2.HumanName(
            text: 'John Doe',
          ),
        ],
      );

      final atFhirObject = AtFhirObject.dstu2(resource);

      expect(atFhirObject.atKey, 'fhir.dstu2.Patient.123456');
      expect(atFhirObject.atFhirResource, jsonEncode(resource.toJson()));
    });

    test('can be created from a Stu3 resource', () {
      final resource = stu3.Patient(
        resourceType: stu3.Stu3ResourceType.Patient,
        fhirId: stu3.FhirId('123456'),
        name: [
          stu3.HumanName(
            text: 'John Doe',
          ),
        ],
      );

      final atFhirObject = AtFhirObject.stu3(resource);

      expect(atFhirObject.atKey, 'fhir.stu3.Patient.123456');
      expect(atFhirObject.atFhirResource, jsonEncode(resource.toJson()));
    });

    test('can be created from a R4 resource', () {
      final resource = r4.Patient(
        resourceType: r4.R4ResourceType.Patient,
        fhirId: '123456',
        name: [
          r4.HumanName(
            text: 'John Doe',
          ),
        ],
      );

      final atFhirObject = AtFhirObject.r4(resource);

      expect(atFhirObject.atKey, 'fhir.r4.Patient.123456');
      expect(atFhirObject.atFhirResource, jsonEncode(resource.toJson()));
    });

    test('can be created from a R5 resource', () {
      final resource = r5.Patient(
        resourceType: r5.R5ResourceType.Patient,
        fhirId: r5.FhirId('123456'),
        name: [
          r5.HumanName(
            text: 'John Doe',
          ),
        ],
      );

      final atFhirObject = AtFhirObject.r5(resource);

      expect(atFhirObject.atKey, 'fhir.r5.Patient.123456');
      expect(atFhirObject.atFhirResource, jsonEncode(resource.toJson()));
    });

    test('can be converted back to a FHIR resource', () {
      final atFhirObject = AtFhirObject(
        atKey: 'fhir.r4.Patient.123456',
        atFhirResource: jsonEncode(r4.Patient().toJson()),
        isOperationOutcome: false,
      );

      final resource = atFhirObject.toFhir();

      expect(resource, isA<r4.Patient>());
    });
  });

  group('AtFhirObject', () {
    // Test cases for AtFhirObject.dstu2 factory method
    group('AtFhirObject.dstu2', () {
      test('creates AtFhirObject for valid DSTU2 resource', () {
        final resource =
            dstu2.Patient(); // Replace with an actual DSTU2 resource object
        final atFhirObject = AtFhirObject.dstu2(resource);

        expect(atFhirObject.atKey, isNotNull);
        expect(atFhirObject.atFhirResource, isNotNull);
        expect(atFhirObject.isOperationOutcome,
            isFalse); // Assuming valid resource is passed
      });

      // Add more test cases for edge cases or invalid inputs
    });

    // Test cases for AtFhirObject.stu3 factory method
    group('AtFhirObject.stu3', () {
      test('creates AtFhirObject for valid STU3 resource', () {
        final resource =
            stu3.Patient(); // Replace with an actual STU3 resource object
        final atFhirObject = AtFhirObject.stu3(resource);

        expect(atFhirObject.atKey, isNotNull);
        expect(atFhirObject.atFhirResource, isNotNull);
        expect(atFhirObject.isOperationOutcome,
            isFalse); // Assuming valid resource is passed
      });

      // Add more test cases for edge cases or invalid inputs
    });

    // Test cases for AtFhirObject.r4 factory method
    group('AtFhirObject.r4', () {
      test('creates AtFhirObject for valid R4 resource', () {
        final resource =
            r4.Patient(); // Replace with an actual R4 resource object
        final atFhirObject = AtFhirObject.r4(resource);

        expect(atFhirObject.atKey, isNotNull);
        expect(atFhirObject.atFhirResource, isNotNull);
        expect(atFhirObject.isOperationOutcome,
            isFalse); // Assuming valid resource is passed
      });

      // Add more test cases for edge cases or invalid inputs
    });

    // Test cases for AtFhirObject.r5 factory method
    group('AtFhirObject.r5', () {
      test('creates AtFhirObject for valid R5 resource', () {
        final resource =
            r5.Patient(); // Replace with an actual R5 resource object
        final atFhirObject = AtFhirObject.r5(resource);
        expect(atFhirObject.atKey, isNotNull);
        expect(atFhirObject.atFhirResource, isNotNull);
        expect(atFhirObject.isOperationOutcome,
            isFalse); // Assuming valid resource is passed
      });

      // Add more test cases for edge cases or invalid inputs
    });

    // Test case for AtFhirObject.fromJsonString
    test('fromJsonString returns valid AtFhirObject', () {
      final jsonString =
          '{"atKey": "someKey", "atFhirResource": "{\'resourceType\': \'Patient\'}", "isOperationOutcome": false}';
      final atFhirObject = AtFhirObject.fromJsonString(jsonString);

      expect(atFhirObject.atKey, 'someKey');
      expect(atFhirObject.atFhirResource, "{\'resourceType\': \'Patient\'}");
      expect(atFhirObject.isOperationOutcome, isFalse);
    });

    // Test case for toFhir method
    test('toFhir returns the original FHIR resource', () {
      final jsonString =
          '{"atKey": "fhir.r4.Patient.123", "atFhirResource": "{\'resourceType\': \'Patient\'}", "isOperationOutcome": false}';
      final atFhirObject = AtFhirObject.fromJsonString(jsonString);
      final fhirResource = atFhirObject.toFhir();

      expect(fhirResource, isNotNull);
      // Add more assertions based on the expected structure or properties of the FHIR resource
    });
  });
}
