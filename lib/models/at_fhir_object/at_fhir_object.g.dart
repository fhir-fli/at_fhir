// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'at_fhir_object.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AtFhirObject _$$_AtFhirObjectFromJson(Map<String, dynamic> json) =>
    _$_AtFhirObject(
      atKey: json['atKey'] as String,
      atFhirResource: json['atFhirResource'] as String,
      isOperationOutcome: json['isOperationOutcome'] as bool,
    );

Map<String, dynamic> _$$_AtFhirObjectToJson(_$_AtFhirObject instance) =>
    <String, dynamic>{
      'atKey': instance.atKey,
      'atFhirResource': instance.atFhirResource,
      'isOperationOutcome': instance.isOperationOutcome,
    };
