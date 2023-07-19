import 'package:at_fhir/at_fhir.dart';
import 'package:fhir/dstu2.dart' as dstu2;
import 'package:fhir/r4.dart' as r4;
import 'package:fhir/r5.dart' as r5;
import 'package:fhir/stu3.dart' as stu3;
import 'package:fhir_at_rest/dstu2.dart' as dstu2_request;
import 'package:fhir_at_rest/r4.dart' as r4_request;
import 'package:fhir_at_rest/r5.dart' as r5_request;
import 'package:fhir_at_rest/stu3.dart' as stu3_request;
import 'package:test/test.dart';

void atFhirNotificationTest() {
  group('AtFhirNotification', () {
    test('fromJson should correctly parse dstu2Resource', () {
      final Map<String, Object> json = <String, Object>{
        'value': <String, Object>{
          'resourceType': 'Patient',
          'id': '123',
          'name': <Map<String, List<String>>>[
            <String, List<String>>{
              'family': <String>['Doe'],
              'given': <String>['John']
            }
          ]
        },
        'runtimeType': 'dstu2Resource'
      };
      final AtFhirNotification notification = AtFhirNotification.fromJson(json);
      expect(notification, isA<AtFhirDstu2ResourceNotification>());
      expect(
          (notification as AtFhirDstu2ResourceNotification)
              .value
              .resourceTypeString,
          'Patient');
      expect(notification.value.fhirId, dstu2.FhirId('123'));
      expect((notification.value as dstu2.Patient).name?[0].given?[0], 'John');
      expect((notification.value as dstu2.Patient).name?[0].family?[0], 'Doe');
    });

    test('fromJson should correctly parse stu3Resource', () {
      final Map<String, Object> json = <String, Object>{
        'value': <String, Object>{
          'resourceType': 'Observation',
          'id': '456',
          'status': 'final',
          'code': <String, List<Map<String, String>>>{
            'coding': <Map<String, String>>[
              <String, String>{'system': 'http://loinc.org', 'code': '12345'}
            ]
          }
        },
        'runtimeType': 'stu3Resource'
      };
      final AtFhirNotification notification = AtFhirNotification.fromJson(json);
      expect(notification, isA<AtFhirStu3ResourceNotification>());
      expect((notification.value as stu3.Observation).resourceTypeString,
          'Observation');
      expect(
          (notification.value as stu3.Observation).fhirId, stu3.FhirId('456'));
      expect((notification.value as stu3.Observation).status,
          stu3.ObservationStatus.final_);
      expect((notification.value as stu3.Observation).code.coding?[0].system,
          'http://loinc.org');
      expect((notification.value as stu3.Observation).code.coding?[0].code,
          stu3.FhirCode('12345'));
    });

    test('fromJson should correctly parse r4Resource', () {
      final Map<String, Object> json = <String, Object>{
        'value': <String, Object>{
          'resourceType': 'Condition',
          'id': '789',
          'clinicalStatus': <String, List<Map<String, String>>>{
            'coding': <Map<String, String>>[
              <String, String>{
                'system':
                    'http://terminology.hl7.org/CodeSystem/condition-clinical',
                'code': 'active'
              }
            ]
          },
          'subject': <String, String>{'reference': 'Patient/123'}
        },
        'runtimeType': 'r4Resource'
      };
      final AtFhirNotification notification = AtFhirNotification.fromJson(json);
      expect(notification, isA<AtFhirR4ResourceNotification>());
      expect(
          (notification.value as r4.Condition).resourceTypeString, 'Condition');
      expect((notification.value as r4.Condition).fhirId, '789');
      expect(
          (notification.value as r4.Condition)
              .clinicalStatus
              ?.coding?[0]
              .system,
          r4.FhirUri(
              'http://terminology.hl7.org/CodeSystem/condition-clinical'));
      expect(
          (notification.value as r4.Condition).clinicalStatus?.coding?[0].code,
          r4.FhirCode('active'));
    });

    test('fromJson should correctly parse r5Resource', () {
      final Map<String, Object> json = <String, Object>{
        'value': <String, Object>{
          'resourceType': 'ServiceRequest',
          'id': '987',
          'status': 'active',
          'category': <Map<String, List<Map<String, String>>>>[
            <String, List<Map<String, String>>>{
              'coding': <Map<String, String>>[
                <String, String>{
                  'system': 'http://hl7.org/fhir/request-intent',
                  'code': 'proposal'
                }
              ]
            }
          ],
          'subject': <String, String>{'reference': 'Patient/123'}
        },
        'runtimeType': 'r5Resource'
      };
      final AtFhirNotification notification = AtFhirNotification.fromJson(json);
      expect(notification, isA<AtFhirR5ResourceNotification>());
      expect((notification.value as r5.ServiceRequest).resourceTypeString,
          'ServiceRequest');
      expect(
          (notification.value as r5.ServiceRequest).fhirId, r5.FhirId('987'));
      expect((notification.value as r5.ServiceRequest).status,
          r5.FhirCode('active'));
      expect(
          (notification.value as r5.ServiceRequest)
              .category?[0]
              .coding?[0]
              .system,
          r5.FhirUri('http://hl7.org/fhir/request-intent'));
      expect(
          (notification.value as r5.ServiceRequest)
              .category?[0]
              .coding?[0]
              .code,
          r5.FhirCode('proposal'));
    });

    test('fromJson should correctly parse dstu2Request', () {
      final Map<String, Object> json = <String, Object>{
        'value': <String, Object>{
          'base': 'http://hapi.fhir.org/baseDstu2',
          'pretty': false,
          'summary': 'none',
          'format': 'json',
          'elements': <dynamic>[],
          'parameters': <dynamic>[],
          'bundle': <String, Object>{
            'resourceType': 'Bundle',
            'type': 'searchset',
            'entry': <dynamic>[
              <String, Object>{
                'resource': <String, Object>{
                  'resourceType': 'Patient',
                  'id': '123'
                }
              }
            ]
          },
          'accept': 'application/fhir+json',
          'runtimeType': 'transaction'
        },
        'runtimeType': 'dstu2Request'
      };
      final AtFhirNotification notification = AtFhirNotification.fromJson(json);
      expect(notification, isA<AtFhirDstu2RequestNotification>());
      expect(
          (notification.value as dstu2_request.FhirTransactionRequest)
              .bundle
              .type,
          dstu2.BundleType.searchset);
      expect(
          (notification.value as dstu2_request.FhirTransactionRequest)
              .bundle
              .entry?[0]
              .resource
              ?.resourceTypeString,
          'Patient');
      expect(
          (notification.value as dstu2_request.FhirTransactionRequest)
              .bundle
              .entry?[0]
              .resource
              ?.fhirId,
          dstu2.FhirId('123'));
    });

    test('fromJson should correctly parse stu3Request', () {
      final Map<String, Object> json = <String, Object>{
        'value': <String, Object>{
          'base': 'http://hapi.fhir.org/baseDstu3',
          'pretty': false,
          'summary': 'none',
          'format': 'json',
          'elements': <dynamic>[],
          'parameters': <dynamic>[],
          'bundle': <String, Object>{
            'resourceType': 'Bundle',
            'type': 'transaction',
            'entry': <dynamic>[
              <String, Object>{
                'resource': <String, Object>{
                  'resourceType': 'Observation',
                  'id': '456',
                  'code': <String, Object>{
                    'coding': <dynamic>[
                      <String, Object>{
                        'system': 'http://loinc.org|http://acme.org',
                        'code': '1234-5'
                      }
                    ]
                  }
                }
              }
            ]
          },
          'accept': 'application/fhir+json',
          'runtimeType': 'transaction'
        },
        'runtimeType': 'stu3Request'
      };
      final AtFhirNotification notification = AtFhirNotification.fromJson(json);
      expect(notification, isA<AtFhirStu3RequestNotification>());
      expect(
          (notification.value as stu3_request.FhirTransactionRequest)
              .bundle
              .resourceTypeString,
          'Bundle');
      expect(
          (notification.value as stu3_request.FhirTransactionRequest)
              .bundle
              .type,
          stu3.BundleType.transaction);
      expect(
          (notification.value as stu3_request.FhirTransactionRequest)
              .bundle
              .entry?[0]
              .resource
              ?.resourceTypeString,
          'Observation');
      expect(
          (notification.value as stu3_request.FhirTransactionRequest)
              .bundle
              .entry?[0]
              .resource
              ?.fhirId,
          stu3.FhirId('456'));
    });

    test('fromJson should correctly parse r4Request', () {
      final Map<String, Object> json = <String, Object>{
        'value': <String, Object>{
          'base': 'http://hapi.fhir.org/baseR4',
          'pretty': false,
          'summary': 'none',
          'format': 'json',
          'elements': <dynamic>[],
          'parameters': <dynamic>[],
          'bundle': <String, Object>{
            'resourceType': 'Bundle',
            'type': 'batch',
            'entry': <dynamic>[
              <String, Object>{
                'resource': <String, Object>{
                  'resourceType': 'Condition',
                  'id': '789',
                  'subject': <String, Object>{'reference': 'Patient/123'}
                }
              }
            ]
          },
          'accept': 'application/fhir+json',
          'runtimeType': 'batch'
        },
        'runtimeType': 'r4Request'
      };
      final AtFhirNotification notification = AtFhirNotification.fromJson(json);
      expect(notification, isA<AtFhirR4RequestNotification>());
      expect(
          (notification.value as r4_request.FhirBatchRequest)
              .bundle
              .resourceTypeString,
          'Bundle');
      expect((notification.value as r4_request.FhirBatchRequest).bundle.type,
          r4.FhirCode('batch'));
      expect(
          (notification.value as r4_request.FhirBatchRequest)
              .bundle
              .entry?[0]
              .resource
              ?.resourceTypeString,
          'Condition');
      expect(
          (notification.value as r4_request.FhirBatchRequest)
              .bundle
              .entry?[0]
              .resource
              ?.fhirId,
          '789');
    });

    test('fromJson should correctly parse r5Request', () {
      final Map<String, Object> json = <String, Object>{
        'value': <String, Object>{
          'base': 'http://hapi.fhir.org/baseR5',
          'pretty': false,
          'summary': 'none',
          'format': 'json',
          'elements': <dynamic>[],
          'parameters': <dynamic>[],
          'bundle': <String, Object>{
            'resourceType': 'Bundle',
            'type': 'history',
            'entry': <dynamic>[
              <String, Object>{
                'resource': <String, Object>{
                  'resourceType': 'ServiceRequest',
                  'id': '987',
                  'subject': <String, Object>{'reference': 'Patient/123'}
                }
              }
            ]
          },
          'accept': 'application/fhir+json',
          'runtimeType': 'transaction'
        },
        'runtimeType': 'r5Request'
      };
      final AtFhirNotification notification = AtFhirNotification.fromJson(json);
      expect(notification, isA<AtFhirR5RequestNotification>());
      expect(
          (notification.value as r5_request.FhirTransactionRequest)
              .bundle
              .resourceTypeString,
          'Bundle');
      expect(
          (notification.value as r5_request.FhirTransactionRequest).bundle.type,
          r5.FhirCode('history'));
      expect(
          (notification.value as r5_request.FhirTransactionRequest)
              .bundle
              .entry?[0]
              .resource
              ?.resourceTypeString,
          'ServiceRequest');
      expect(
          (notification.value as r5_request.FhirTransactionRequest)
              .bundle
              .entry?[0]
              .resource
              ?.fhirId,
          r5.FhirId('987'));
    });

    test('fromJsonString should correctly parse a JSON string', () {
      const String jsonString = '''
      {
        "value":
        {
          "resourceType":"Patient",
          "id":"123",
          "name":
          [
            {
              "family":["Doe"],
              "given":["John"]
            }
          ]
        },
        "runtimeType":"dstu2Resource"
      }
      ''';
      final AtFhirNotification notification =
          AtFhirNotification.fromJsonString(jsonString);
      expect(notification, isA<AtFhirDstu2ResourceNotification>());
      expect(
          (notification.value as dstu2.Patient).resourceTypeString, 'Patient');
      expect((notification.value as dstu2.Patient).fhirId, dstu2.FhirId('123'));
      expect((notification.value as dstu2.Patient).name?[0].given?[0], 'John');
      expect((notification.value as dstu2.Patient).name?[0].family?[0], 'Doe');
    });

    test('toJsonString should correctly serialize to a JSON string', () {
      const AtFhirNotification notification =
          AtFhirNotification.dstu2Resource(dstu2.Patient());
      final String jsonString = notification.toJsonString();
      const String expectedJsonString =
          '{"value":{"resourceType":"Patient"},"runtimeType":"dstu2Resource"}';
      expect(jsonString, expectedJsonString);
    });
  });
}
