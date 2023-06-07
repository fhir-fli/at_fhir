// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'at_r4_fhir_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AtR4FhirRequest _$$_AtR4FhirRequestFromJson(Map<String, dynamic> json) =>
    _$_AtR4FhirRequest(
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

Map<String, dynamic> _$$_AtR4FhirRequestToJson(_$_AtR4FhirRequest instance) =>
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

_$_AtR4RequestError _$$_AtR4RequestErrorFromJson(Map<String, dynamic> json) =>
    _$_AtR4RequestError(
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

Map<String, dynamic> _$$_AtR4RequestErrorToJson(_$_AtR4RequestError instance) =>
    <String, dynamic>{
      'method': _$AtFhirRequestMethodEnumMap[instance.method],
      'url': instance.url?.toString(),
      'headers': instance.headers,
      'resource': instance.resource,
      'operationOutcome': instance.operationOutcome,
      'runtimeType': instance.$type,
    };
