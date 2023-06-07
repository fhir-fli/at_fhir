// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'at_r4_fhir_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AtR4FhirRequest _$AtR4FhirRequestFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'default':
      return _AtR4FhirRequest.fromJson(json);
    case 'error':
      return _AtR4RequestError.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'AtR4FhirRequest',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$AtR4FhirRequest {
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
    TResult Function(_AtR4FhirRequest value) $default, {
    required TResult Function(_AtR4RequestError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_AtR4FhirRequest value)? $default, {
    TResult? Function(_AtR4RequestError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_AtR4FhirRequest value)? $default, {
    TResult Function(_AtR4RequestError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AtR4FhirRequestCopyWith<AtR4FhirRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AtR4FhirRequestCopyWith<$Res> {
  factory $AtR4FhirRequestCopyWith(
          AtR4FhirRequest value, $Res Function(AtR4FhirRequest) then) =
      _$AtR4FhirRequestCopyWithImpl<$Res, AtR4FhirRequest>;
  @useResult
  $Res call(
      {AtFhirRequestMethod method,
      Uri url,
      Map<String, String> headers,
      Resource? resource});
}

/// @nodoc
class _$AtR4FhirRequestCopyWithImpl<$Res, $Val extends AtR4FhirRequest>
    implements $AtR4FhirRequestCopyWith<$Res> {
  _$AtR4FhirRequestCopyWithImpl(this._value, this._then);

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
abstract class _$$_AtR4FhirRequestCopyWith<$Res>
    implements $AtR4FhirRequestCopyWith<$Res> {
  factory _$$_AtR4FhirRequestCopyWith(
          _$_AtR4FhirRequest value, $Res Function(_$_AtR4FhirRequest) then) =
      __$$_AtR4FhirRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {AtFhirRequestMethod method,
      Uri url,
      Map<String, String> headers,
      Resource? resource});
}

/// @nodoc
class __$$_AtR4FhirRequestCopyWithImpl<$Res>
    extends _$AtR4FhirRequestCopyWithImpl<$Res, _$_AtR4FhirRequest>
    implements _$$_AtR4FhirRequestCopyWith<$Res> {
  __$$_AtR4FhirRequestCopyWithImpl(
      _$_AtR4FhirRequest _value, $Res Function(_$_AtR4FhirRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? method = null,
    Object? url = null,
    Object? headers = null,
    Object? resource = freezed,
  }) {
    return _then(_$_AtR4FhirRequest(
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
class _$_AtR4FhirRequest extends _AtR4FhirRequest {
  const _$_AtR4FhirRequest(
      {required this.method,
      required this.url,
      final Map<String, String> headers = const {},
      this.resource,
      final String? $type})
      : _headers = headers,
        $type = $type ?? 'default',
        super._();

  factory _$_AtR4FhirRequest.fromJson(Map<String, dynamic> json) =>
      _$$_AtR4FhirRequestFromJson(json);

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
    return 'AtR4FhirRequest(method: $method, url: $url, headers: $headers, resource: $resource)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AtR4FhirRequest &&
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
  _$$_AtR4FhirRequestCopyWith<_$_AtR4FhirRequest> get copyWith =>
      __$$_AtR4FhirRequestCopyWithImpl<_$_AtR4FhirRequest>(this, _$identity);

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
    TResult Function(_AtR4FhirRequest value) $default, {
    required TResult Function(_AtR4RequestError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_AtR4FhirRequest value)? $default, {
    TResult? Function(_AtR4RequestError value)? error,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_AtR4FhirRequest value)? $default, {
    TResult Function(_AtR4RequestError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_AtR4FhirRequestToJson(
      this,
    );
  }
}

abstract class _AtR4FhirRequest extends AtR4FhirRequest {
  const factory _AtR4FhirRequest(
      {required final AtFhirRequestMethod method,
      required final Uri url,
      final Map<String, String> headers,
      final Resource? resource}) = _$_AtR4FhirRequest;
  const _AtR4FhirRequest._() : super._();

  factory _AtR4FhirRequest.fromJson(Map<String, dynamic> json) =
      _$_AtR4FhirRequest.fromJson;

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
  _$$_AtR4FhirRequestCopyWith<_$_AtR4FhirRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AtR4RequestErrorCopyWith<$Res>
    implements $AtR4FhirRequestCopyWith<$Res> {
  factory _$$_AtR4RequestErrorCopyWith(
          _$_AtR4RequestError value, $Res Function(_$_AtR4RequestError) then) =
      __$$_AtR4RequestErrorCopyWithImpl<$Res>;
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
class __$$_AtR4RequestErrorCopyWithImpl<$Res>
    extends _$AtR4FhirRequestCopyWithImpl<$Res, _$_AtR4RequestError>
    implements _$$_AtR4RequestErrorCopyWith<$Res> {
  __$$_AtR4RequestErrorCopyWithImpl(
      _$_AtR4RequestError _value, $Res Function(_$_AtR4RequestError) _then)
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
    return _then(_$_AtR4RequestError(
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
class _$_AtR4RequestError extends _AtR4RequestError {
  const _$_AtR4RequestError(
      {this.method,
      this.url,
      final Map<String, String> headers = const {},
      this.resource,
      required this.operationOutcome,
      final String? $type})
      : _headers = headers,
        $type = $type ?? 'error',
        super._();

  factory _$_AtR4RequestError.fromJson(Map<String, dynamic> json) =>
      _$$_AtR4RequestErrorFromJson(json);

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
    return 'AtR4FhirRequest.error(method: $method, url: $url, headers: $headers, resource: $resource, operationOutcome: $operationOutcome)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AtR4RequestError &&
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
  _$$_AtR4RequestErrorCopyWith<_$_AtR4RequestError> get copyWith =>
      __$$_AtR4RequestErrorCopyWithImpl<_$_AtR4RequestError>(this, _$identity);

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
    TResult Function(_AtR4FhirRequest value) $default, {
    required TResult Function(_AtR4RequestError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_AtR4FhirRequest value)? $default, {
    TResult? Function(_AtR4RequestError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_AtR4FhirRequest value)? $default, {
    TResult Function(_AtR4RequestError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_AtR4RequestErrorToJson(
      this,
    );
  }
}

abstract class _AtR4RequestError extends AtR4FhirRequest {
  const factory _AtR4RequestError(
      {final AtFhirRequestMethod? method,
      final Uri? url,
      final Map<String, String> headers,
      final Resource? resource,
      required final OperationOutcome operationOutcome}) = _$_AtR4RequestError;
  const _AtR4RequestError._() : super._();

  factory _AtR4RequestError.fromJson(Map<String, dynamic> json) =
      _$_AtR4RequestError.fromJson;

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
  _$$_AtR4RequestErrorCopyWith<_$_AtR4RequestError> get copyWith =>
      throw _privateConstructorUsedError;
}
