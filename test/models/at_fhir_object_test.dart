import 'package:at_fhir/models/at_fhir_object.dart';
import 'package:test/test.dart';
import 'package:fhir/dstu2.dart' as dstu2;
import 'package:fhir/r4.dart' as r4;
import 'package:fhir/r5.dart' as r5;
import 'package:fhir/stu3.dart' as stu3;

void main() {
  group('AtFhirObject', () {
    const atKey = 'fhir.r4.Patient.123';
    const atFhirResource = '{"resourceType":"Patient","id":"123"}';
    const isOperationOutcome = false;

    test('Creating AtFhirObject should set the correct values', () {
      final atFhirObject = AtFhirObject(
        atKey: atKey,
        atFhirResource: atFhirResource,
        isOperationOutcome: isOperationOutcome,
      );

      expect(atFhirObject.atKey, atKey);
      expect(atFhirObject.atFhirResource, atFhirResource);
      expect(atFhirObject.isOperationOutcome, isOperationOutcome);
    });

    test('Creating AtFhirObject.dstu2 should set the correct values', () {
      final resource = dstu2.Patient(fhirId: dstu2.FhirId('12345'));
      final atFhirObject = AtFhirObject.dstu2(resource);

      expect(atFhirObject.atKey, 'fhir.dstu2.Patient.${resource.fhirId}');
      expect(
          dstu2.Resource.fromJsonString(atFhirObject.atFhirResource).toJson(),
          resource.toJson());
      expect(
          atFhirObject.isOperationOutcome, resource is dstu2.OperationOutcome);
    });

    test('Creating AtFhirObject.stu3 should set the correct values', () {
      final resource = stu3.Patient(fhirId: stu3.FhirId('12345'));
      final atFhirObject = AtFhirObject.stu3(resource);

      expect(atFhirObject.atKey, 'fhir.stu3.Patient.${resource.fhirId}');
      expect(stu3.Resource.fromJsonString(atFhirObject.atFhirResource).toJson(),
          resource.toJson());
      expect(
          atFhirObject.isOperationOutcome, resource is stu3.OperationOutcome);
    });

    test('Creating AtFhirObject.r4 should set the correct values', () {
      final resource = r4.Patient(fhirId: '12345');
      final atFhirObject = AtFhirObject.r4(resource);

      expect(atFhirObject.atKey, 'fhir.r4.Patient.${resource.fhirId}');
      expect(r4.Resource.fromJsonString(atFhirObject.atFhirResource).toJson(),
          resource.toJson());
      expect(atFhirObject.isOperationOutcome, resource is r4.OperationOutcome);
    });

    test('Creating AtFhirObject.r5 should set the correct values', () {
      final resource = r5.Patient(fhirId: r5.FhirId('12345'));
      final atFhirObject = AtFhirObject.r5(resource);

      expect(atFhirObject.atKey, 'fhir.r5.Patient.${resource.fhirId}');
      expect(r5.Resource.fromJsonString(atFhirObject.atFhirResource).toJson(),
          resource.toJson());
      expect(atFhirObject.isOperationOutcome, resource is r5.OperationOutcome);
    });

    test(
        'Converting AtFhirObject to FHIR resource should return the correct resource',
        () {
      final atFhirObject = AtFhirObject(
        atKey: atKey,
        atFhirResource: atFhirResource,
        isOperationOutcome: isOperationOutcome,
      );

      final convertedResource = atFhirObject.toFhir();

      expect(convertedResource is r4.Patient, true);
      expect(convertedResource.fhirId, '123');
    });
  });
}
