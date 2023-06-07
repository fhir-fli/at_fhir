// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'at_dstu2_fhir_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AtDstu2FhirRequest _$AtDstu2FhirRequestFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'default':
      return _AtDstu2FhirRequest.fromJson(json);
    case 'error':
      return _AtDstu2RequestError.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'AtDstu2FhirRequest',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$AtDstu2FhirRequest {
  AtFhirRequestMethod? get method => throw _privateConstructorUsedError;
  Uri? get url => throw _privateConstructorUsedError;
  Map<String, String> get headers => throw _privateConstructorUsedError;
  Resource? get resource => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(AtFhirRequestMethod method, Uri url,
            Map<String, String> headers, Resource? resource)
        $default, {
    required TResult Function(
            AtFhirRequestMethod? method,
            Uri? url,
            Map<String, String> headers,
            Resource? resource,
            OperationOutcome operationOutcome)
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(AtFhirRequestMethod method, Uri url,
            Map<String, String> headers, Resource? resource)?
        $default, {
    TResult? Function(
            AtFhirRequestMethod? method,
            Uri? url,
            Map<String, String> headers,
            Resource? resource,
            OperationOutcome operationOutcome)?
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(AtFhirRequestMethod method, Uri url,
            Map<String, String> headers, Resource? resource)?
        $default, {
    TResult Function(
            AtFhirRequestMethod? method,
            Uri? url,
            Map<String, String> headers,
            Resource? resource,
            OperationOutcome operationOutcome)?
        error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_AtDstu2FhirRequest value) $default, {
    required TResult Function(_AtDstu2RequestError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_AtDstu2FhirRequest value)? $default, {
    TResult? Function(_AtDstu2RequestError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_AtDstu2FhirRequest value)? $default, {
    TResult Function(_AtDstu2RequestError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AtDstu2FhirRequestCopyWith<AtDstu2FhirRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AtDstu2FhirRequestCopyWith<$Res> {
  factory $AtDstu2FhirRequestCopyWith(
          AtDstu2FhirRequest value, $Res Function(AtDstu2FhirRequest) then) =
      _$AtDstu2FhirRequestCopyWithImpl<$Res, AtDstu2FhirRequest>;
  @useResult
  $Res call(
      {AtFhirRequestMethod method,
      Uri url,
      Map<String, String> headers,
      Resource? resource});
}

/// @nodoc
class _$AtDstu2FhirRequestCopyWithImpl<$Res, $Val extends AtDstu2FhirRequest>
    implements $AtDstu2FhirRequestCopyWith<$Res> {
  _$AtDstu2FhirRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? method = null,
    Object? url = null,
    Object? headers = null,
    Object? resource = freezed,
  }) {
    return _then(_value.copyWith(
      method: null == method
          ? _value.method!
          : method // ignore: cast_nullable_to_non_nullable
              as AtFhirRequestMethod,
      url: null == url
          ? _value.url!
          : url // ignore: cast_nullable_to_non_nullable
              as Uri,
      headers: null == headers
          ? _value.headers
          : headers // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      resource: freezed == resource
          ? _value.resource
          : resource // ignore: cast_nullable_to_non_nullable
              as Resource?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AtDstu2FhirRequestCopyWith<$Res>
    implements $AtDstu2FhirRequestCopyWith<$Res> {
  factory _$$_AtDstu2FhirRequestCopyWith(_$_AtDstu2FhirRequest value,
          $Res Function(_$_AtDstu2FhirRequest) then) =
      __$$_AtDstu2FhirRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {AtFhirRequestMethod method,
      Uri url,
      Map<String, String> headers,
      Resource? resource});
}

/// @nodoc
class __$$_AtDstu2FhirRequestCopyWithImpl<$Res>
    extends _$AtDstu2FhirRequestCopyWithImpl<$Res, _$_AtDstu2FhirRequest>
    implements _$$_AtDstu2FhirRequestCopyWith<$Res> {
  __$$_AtDstu2FhirRequestCopyWithImpl(
      _$_AtDstu2FhirRequest _value, $Res Function(_$_AtDstu2FhirRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? method = null,
    Object? url = null,
    Object? headers = null,
    Object? resource = freezed,
  }) {
    return _then(_$_AtDstu2FhirRequest(
      method: null == method
          ? _value.method
          : method // ignore: cast_nullable_to_non_nullable
              as AtFhirRequestMethod,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as Uri,
      headers: null == headers
          ? _value._headers
          : headers // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      resource: freezed == resource
          ? _value.resource
          : resource // ignore: cast_nullable_to_non_nullable
              as Resource?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AtDstu2FhirRequest extends _AtDstu2FhirRequest {
  const _$_AtDstu2FhirRequest(
      {required this.method,
      required this.url,
      final Map<String, String> headers = const {},
      this.resource,
      final String? $type})
      : _headers = headers,
        $type = $type ?? 'default',
        super._();

  factory _$_AtDstu2FhirRequest.fromJson(Map<String, dynamic> json) =>
      _$$_AtDstu2FhirRequestFromJson(json);

  @override
  final AtFhirRequestMethod method;
  @override
  final Uri url;
  final Map<String, String> _headers;
  @override
  @JsonKey()
  Map<String, String> get headers {
    if (_headers is EqualUnmodifiableMapView) return _headers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_headers);
  }

  @override
  final Resource? resource;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'AtDstu2FhirRequest(method: $method, url: $url, headers: $headers, resource: $resource)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AtDstu2FhirRequest &&
            (identical(other.method, method) || other.method == method) &&
            (identical(other.url, url) || other.url == url) &&
            const DeepCollectionEquality().equals(other._headers, _headers) &&
            (identical(other.resource, resource) ||
                other.resource == resource));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, method, url,
      const DeepCollectionEquality().hash(_headers), resource);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AtDstu2FhirRequestCopyWith<_$_AtDstu2FhirRequest> get copyWith =>
      __$$_AtDstu2FhirRequestCopyWithImpl<_$_AtDstu2FhirRequest>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(AtFhirRequestMethod method, Uri url,
            Map<String, String> headers, Resource? resource)
        $default, {
    required TResult Function(
            AtFhirRequestMethod? method,
            Uri? url,
            Map<String, String> headers,
            Resource? resource,
            OperationOutcome operationOutcome)
        error,
  }) {
    return $default(method, url, headers, resource);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(AtFhirRequestMethod method, Uri url,
            Map<String, String> headers, Resource? resource)?
        $default, {
    TResult? Function(
            AtFhirRequestMethod? method,
            Uri? url,
            Map<String, String> headers,
            Resource? resource,
            OperationOutcome operationOutcome)?
        error,
  }) {
    return $default?.call(method, url, headers, resource);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(AtFhirRequestMethod method, Uri url,
            Map<String, String> headers, Resource? resource)?
        $default, {
    TResult Function(
            AtFhirRequestMethod? method,
            Uri? url,
            Map<String, String> headers,
            Resource? resource,
            OperationOutcome operationOutcome)?
        error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(method, url, headers, resource);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_AtDstu2FhirRequest value) $default, {
    required TResult Function(_AtDstu2RequestError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_AtDstu2FhirRequest value)? $default, {
    TResult? Function(_AtDstu2RequestError value)? error,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_AtDstu2FhirRequest value)? $default, {
    TResult Function(_AtDstu2RequestError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_AtDstu2FhirRequestToJson(
      this,
    );
  }
}

abstract class _AtDstu2FhirRequest extends AtDstu2FhirRequest {
  const factory _AtDstu2FhirRequest(
      {required final AtFhirRequestMethod method,
      required final Uri url,
      final Map<String, String> headers,
      final Resource? resource}) = _$_AtDstu2FhirRequest;
  const _AtDstu2FhirRequest._() : super._();

  factory _AtDstu2FhirRequest.fromJson(Map<String, dynamic> json) =
      _$_AtDstu2FhirRequest.fromJson;

  @override
  AtFhirRequestMethod get method;
  @override
  Uri get url;
  @override
  Map<String, String> get headers;
  @override
  Resource? get resource;
  @override
  @JsonKey(ignore: true)
  _$$_AtDstu2FhirRequestCopyWith<_$_AtDstu2FhirRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AtDstu2RequestErrorCopyWith<$Res>
    implements $AtDstu2FhirRequestCopyWith<$Res> {
  factory _$$_AtDstu2RequestErrorCopyWith(_$_AtDstu2RequestError value,
          $Res Function(_$_AtDstu2RequestError) then) =
      __$$_AtDstu2RequestErrorCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {AtFhirRequestMethod? method,
      Uri? url,
      Map<String, String> headers,
      Resource? resource,
      OperationOutcome operationOutcome});

  $OperationOutcomeCopyWith<$Res> get operationOutcome;
}

/// @nodoc
class __$$_AtDstu2RequestErrorCopyWithImpl<$Res>
    extends _$AtDstu2FhirRequestCopyWithImpl<$Res, _$_AtDstu2RequestError>
    implements _$$_AtDstu2RequestErrorCopyWith<$Res> {
  __$$_AtDstu2RequestErrorCopyWithImpl(_$_AtDstu2RequestError _value,
      $Res Function(_$_AtDstu2RequestError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? method = freezed,
    Object? url = freezed,
    Object? headers = null,
    Object? resource = freezed,
    Object? operationOutcome = null,
  }) {
    return _then(_$_AtDstu2RequestError(
      method: freezed == method
          ? _value.method
          : method // ignore: cast_nullable_to_non_nullable
              as AtFhirRequestMethod?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as Uri?,
      headers: null == headers
          ? _value._headers
          : headers // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      resource: freezed == resource
          ? _value.resource
          : resource // ignore: cast_nullable_to_non_nullable
              as Resource?,
      operationOutcome: null == operationOutcome
          ? _value.operationOutcome
          : operationOutcome // ignore: cast_nullable_to_non_nullable
              as OperationOutcome,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $OperationOutcomeCopyWith<$Res> get operationOutcome {
    return $OperationOutcomeCopyWith<$Res>(_value.operationOutcome, (value) {
      return _then(_value.copyWith(operationOutcome: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$_AtDstu2RequestError extends _AtDstu2RequestError {
  const _$_AtDstu2RequestError(
      {this.method,
      this.url,
      final Map<String, String> headers = const {},
      this.resource,
      required this.operationOutcome,
      final String? $type})
      : _headers = headers,
        $type = $type ?? 'error',
        super._();

  factory _$_AtDstu2RequestError.fromJson(Map<String, dynamic> json) =>
      _$$_AtDstu2RequestErrorFromJson(json);

  @override
  final AtFhirRequestMethod? method;
  @override
  final Uri? url;
  final Map<String, String> _headers;
  @override
  @JsonKey()
  Map<String, String> get headers {
    if (_headers is EqualUnmodifiableMapView) return _headers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_headers);
  }

  @override
  final Resource? resource;
  @override
  final OperationOutcome operationOutcome;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'AtDstu2FhirRequest.error(method: $method, url: $url, headers: $headers, resource: $resource, operationOutcome: $operationOutcome)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AtDstu2RequestError &&
            (identical(other.method, method) || other.method == method) &&
            (identical(other.url, url) || other.url == url) &&
            const DeepCollectionEquality().equals(other._headers, _headers) &&
            (identical(other.resource, resource) ||
                other.resource == resource) &&
            (identical(other.operationOutcome, operationOutcome) ||
                other.operationOutcome == operationOutcome));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      method,
      url,
      const DeepCollectionEquality().hash(_headers),
      resource,
      operationOutcome);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AtDstu2RequestErrorCopyWith<_$_AtDstu2RequestError> get copyWith =>
      __$$_AtDstu2RequestErrorCopyWithImpl<_$_AtDstu2RequestError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(AtFhirRequestMethod method, Uri url,
            Map<String, String> headers, Resource? resource)
        $default, {
    required TResult Function(
            AtFhirRequestMethod? method,
            Uri? url,
            Map<String, String> headers,
            Resource? resource,
            OperationOutcome operationOutcome)
        error,
  }) {
    return error(method, url, headers, resource, operationOutcome);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(AtFhirRequestMethod method, Uri url,
            Map<String, String> headers, Resource? resource)?
        $default, {
    TResult? Function(
            AtFhirRequestMethod? method,
            Uri? url,
            Map<String, String> headers,
            Resource? resource,
            OperationOutcome operationOutcome)?
        error,
  }) {
    return error?.call(method, url, headers, resource, operationOutcome);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(AtFhirRequestMethod method, Uri url,
            Map<String, String> headers, Resource? resource)?
        $default, {
    TResult Function(
            AtFhirRequestMethod? method,
            Uri? url,
            Map<String, String> headers,
            Resource? resource,
            OperationOutcome operationOutcome)?
        error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(method, url, headers, resource, operationOutcome);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_AtDstu2FhirRequest value) $default, {
    required TResult Function(_AtDstu2RequestError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_AtDstu2FhirRequest value)? $default, {
    TResult? Function(_AtDstu2RequestError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_AtDstu2FhirRequest value)? $default, {
    TResult Function(_AtDstu2RequestError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_AtDstu2RequestErrorToJson(
      this,
    );
  }
}

abstract class _AtDstu2RequestError extends AtDstu2FhirRequest {
  const factory _AtDstu2RequestError(
          {final AtFhirRequestMethod? method,
          final Uri? url,
          final Map<String, String> headers,
          final Resource? resource,
          required final OperationOutcome operationOutcome}) =
      _$_AtDstu2RequestError;
  const _AtDstu2RequestError._() : super._();

  factory _AtDstu2RequestError.fromJson(Map<String, dynamic> json) =
      _$_AtDstu2RequestError.fromJson;

  @override
  AtFhirRequestMethod? get method;
  @override
  Uri? get url;
  @override
  Map<String, String> get headers;
  @override
  Resource? get resource;
  OperationOutcome get operationOutcome;
  @override
  @JsonKey(ignore: true)
  _$$_AtDstu2RequestErrorCopyWith<_$_AtDstu2RequestError> get copyWith =>
      throw _privateConstructorUsedError;
}
