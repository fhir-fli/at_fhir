// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'at_dstu2_fhir_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AtDstu2FhirRequest _$$_AtDstu2FhirRequestFromJson(
        Map<String, dynamic> json) =>
    _$_AtDstu2FhirRequest(
      method: $enumDecode(_$AtFhirRequestMethodEnumMap, json['method']),
      url: Uri.parse(json['url'] as String),
      headers: (json['headers'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e as String),
          ) ??
          const {},
      resource: json['resource'] == null
          ? null
          : Resource.fromJson(json['resource'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$_AtDstu2FhirRequestToJson(
        _$_AtDstu2FhirRequest instance) =>
    <String, dynamic>{
      'method': _$AtFhirRequestMethodEnumMap[instance.method]!,
      'url': instance.url.toString(),
      'headers': instance.headers,
      'resource': instance.resource,
      'runtimeType': instance.$type,
    };

const _$AtFhirRequestMethodEnumMap = {
  AtFhirRequestMethod.get_: 'GET',
  AtFhirRequestMethod.post: 'POST',
  AtFhirRequestMethod.put: 'PUT',
  AtFhirRequestMethod.delete: 'DELETE',
  AtFhirRequestMethod.patch: 'PATCH',
};

_$_AtDstu2RequestError _$$_AtDstu2RequestErrorFromJson(
        Map<String, dynamic> json) =>
    _$_AtDstu2RequestError(
      method: $enumDecodeNullable(_$AtFhirRequestMethodEnumMap, json['method']),
      url: json['url'] == null ? null : Uri.parse(json['url'] as String),
      headers: (json['headers'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e as String),
          ) ??
          const {},
      resource: json['resource'] == null
          ? null
          : Resource.fromJson(json['resource'] as Map<String, dynamic>),
      operationOutcome: OperationOutcome.fromJson(
          json['operationOutcome'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$_AtDstu2RequestErrorToJson(
        _$_AtDstu2RequestError instance) =>
    <String, dynamic>{
      'method': _$AtFhirRequestMethodEnumMap[instance.method],
      'url': instance.url?.toString(),
      'headers': instance.headers,
      'resource': instance.resource,
      'operationOutcome': instance.operationOutcome,
      'runtimeType': instance.$type,
    };
