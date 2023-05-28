import 'package:at_fhir/models/models.dart';
import 'package:at_fhir/services/services.dart';
import 'package:test/test.dart';
import 'package:mockito/mockito.dart';
import 'package:at_client/at_client.dart';
import 'package:fhir/r4.dart';

class MockAtClient extends Mock implements AtClient {}

class MockAtKey extends Mock implements AtKey {}

class MockAtValue extends Mock implements AtValue {}

void main() {
  group('atSignUpdateFhirResource', () {
    test('should return success message when put operation succeeds', () async {
      final mockAtClient = MockAtClient();
      final atKey = MockAtKey();
      final afo = AtFhirObject(
        atKey: 'fhir.r4.patient.123',
        atFhirResource: '{"resourceType":"Patient","id":"123"}',
        isOperationOutcome: false,
      );
      when(atKey..key = afo.atKey).thenReturn(atKey);
      when(atKey..namespace = 'fhir').thenReturn(atKey);
      print('f');
      when(mockAtClient.put(atKey, afo.atFhirResource))
          .thenAnswer((_) async => true);
      print('g');
      final result = await atSignUpdateFhirResource(afo);
      expect(result, equals(const SuccessOrErrorMessage.success()));
      verify(mockAtClient.put(atKey, afo.atFhirResource)).called(1);
    });

    test('should return failure message when put operation fails', () async {
      final mockAtClient = MockAtClient();
      final atKey = MockAtKey();
      final afo = AtFhirObject(
        atKey: 'test.key',
        atFhirResource: '{"resourceType":"Patient","id":"123"}',
        isOperationOutcome: false,
      );

      when(atKey..key = any).thenReturn(atKey);
      when(atKey..namespace = any).thenReturn(atKey);
      when(mockAtClient.put(atKey, afo)).thenAnswer((_) async => false);

      final result = await atSignUpdateFhirResource(afo);

      expect(result, equals(const SuccessOrErrorMessage.failure('Failure!')));
      verify(mockAtClient.put(atKey, afo.atFhirResource)).called(1);
    });
  });

  group('atSignGetFhirResource', () {
    test('should return the resource when get operation succeeds', () async {
      final mockAtClient = MockAtClient();
      final atKey = MockAtKey();
      final atValue = MockAtValue();

      const resourceType = 'Patient';
      const id = '123';
      const atFhirVersion = AtFhirVersion.r4;

      when(atKey..key = any).thenReturn(atKey);
      when(mockAtClient.get(atKey)).thenAnswer((_) async => atValue);
      when(atValue.value).thenReturn('{"resourceType":"Patient","id":"123"}');

      final result =
          await atSignGetFhirResource(resourceType, id, atFhirVersion);

      expect(result.runtimeType, equals(Patient));
      expect(result.fhirId, equals('123'));
      verify(mockAtClient.get(atKey)).called(1);
    });

    test('should return an OperationOutcome when get operation fails',
        () async {
      final mockAtClient = MockAtClient();
      final atKey = MockAtKey();
      final atValue = MockAtValue();

      const resourceType = 'Patient';
      const id = '123';
      const atFhirVersion = AtFhirVersion.r4;

      when(atKey..key = any).thenReturn(atKey);
      when(mockAtClient.get(atKey)).thenAnswer((_) async => atValue);
      when(atValue.value).thenReturn(123); // Invalid response

      final result =
          await atSignGetFhirResource(resourceType, id, atFhirVersion);

      expect(result.runtimeType, equals(OperationOutcome));
      verify(mockAtClient.get(atKey)).called(1);
    });
  });

  group('atSignGetAllFhirResources', () {
    test(
        'should return a list of resources when getAtKeys and get operations succeed',
        () async {
      final mockAtClient = MockAtClient();
      final atKey = MockAtKey();
      final atValue = MockAtValue();

      final allKeys = [atKey];
      const resourceType = 'Patient';
      const id = '123';

      when(mockAtClient.getAtKeys()).thenAnswer((_) async => allKeys);
      when(atKey.namespace).thenReturn('fhir');
      when(mockAtClient.get(atKey)).thenAnswer((_) async => atValue);
      when(atValue.value).thenReturn('{"resourceType":"Patient","id":"123"}');

      final result = await atSignGetAllFhirResources();

      expect(result.length, equals(1));
      expect(result[0].runtimeType, equals(Patient));
      expect(result[0].fhirId, equals('123'));
      verify(mockAtClient.getAtKeys()).called(1);
      verify(mockAtClient.get(atKey)).called(1);
    });

    test(
        'should return a list of OperationOutcomes when getAtKeys and get operations fail',
        () async {
      final mockAtClient = MockAtClient();
      final atKey = MockAtKey();
      final atValue = MockAtValue();

      final allKeys = [atKey];
      const resourceType = 'Patient';
      const id = '123';

      when(mockAtClient.getAtKeys()).thenAnswer((_) async => allKeys);
      when(atKey.namespace).thenReturn('fhir');
      when(mockAtClient.get(atKey)).thenAnswer((_) async => atValue);
      when(atValue.value).thenReturn(123); // Invalid response

      final result = await atSignGetAllFhirResources();

      expect(result.length, equals(1));
      expect(result[0].runtimeType, equals(OperationOutcome));
      verify(mockAtClient.getAtKeys()).called(1);
      verify(mockAtClient.get(atKey)).called(1);
    });
  });
}
