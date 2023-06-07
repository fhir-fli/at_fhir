import 'package:freezed_annotation/freezed_annotation.dart';

enum AtFhirRequestMethod {
  @JsonValue('GET')
  get_,
  @JsonValue('POST')
  post,
  @JsonValue('PUT')
  put,
  @JsonValue('DELETE')
  delete,
  @JsonValue('PATCH')
  patch,
}
