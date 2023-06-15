// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'at_fhir_notification.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AtFhirNotification _$AtFhirNotificationFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'dstu2Resource':
      return Dstu2ResourceNotification.fromJson(json);
    case 'stu3Resource':
      return Stu3ResourceNotification.fromJson(json);
    case 'r4Resource':
      return R4ResourceNotification.fromJson(json);
    case 'r5Resource':
      return R5ResourceNotification.fromJson(json);
    case 'dstu2Request':
      return Dstu2Request.fromJson(json);
    case 'stu3Request':
      return Stu3Request.fromJson(json);
    case 'r4Request':
      return R4Request.fromJson(json);
    case 'r5Request':
      return R5Request.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'AtFhirNotification',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$AtFhirNotification {
  Object get value => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dstu2.Resource value) dstu2Resource,
    required TResult Function(stu3.Resource value) stu3Resource,
    required TResult Function(r4.Resource value) r4Resource,
    required TResult Function(r5.Resource value) r5Resource,
    required TResult Function(dstu2_request.FhirRequest value) dstu2Request,
    required TResult Function(stu3_request.FhirRequest value) stu3Request,
    required TResult Function(r4_request.FhirRequest value) r4Request,
    required TResult Function(r5_request.FhirRequest value) r5Request,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(dstu2.Resource value)? dstu2Resource,
    TResult? Function(stu3.Resource value)? stu3Resource,
    TResult? Function(r4.Resource value)? r4Resource,
    TResult? Function(r5.Resource value)? r5Resource,
    TResult? Function(dstu2_request.FhirRequest value)? dstu2Request,
    TResult? Function(stu3_request.FhirRequest value)? stu3Request,
    TResult? Function(r4_request.FhirRequest value)? r4Request,
    TResult? Function(r5_request.FhirRequest value)? r5Request,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dstu2.Resource value)? dstu2Resource,
    TResult Function(stu3.Resource value)? stu3Resource,
    TResult Function(r4.Resource value)? r4Resource,
    TResult Function(r5.Resource value)? r5Resource,
    TResult Function(dstu2_request.FhirRequest value)? dstu2Request,
    TResult Function(stu3_request.FhirRequest value)? stu3Request,
    TResult Function(r4_request.FhirRequest value)? r4Request,
    TResult Function(r5_request.FhirRequest value)? r5Request,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Dstu2ResourceNotification value) dstu2Resource,
    required TResult Function(Stu3ResourceNotification value) stu3Resource,
    required TResult Function(R4ResourceNotification value) r4Resource,
    required TResult Function(R5ResourceNotification value) r5Resource,
    required TResult Function(Dstu2Request value) dstu2Request,
    required TResult Function(Stu3Request value) stu3Request,
    required TResult Function(R4Request value) r4Request,
    required TResult Function(R5Request value) r5Request,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Dstu2ResourceNotification value)? dstu2Resource,
    TResult? Function(Stu3ResourceNotification value)? stu3Resource,
    TResult? Function(R4ResourceNotification value)? r4Resource,
    TResult? Function(R5ResourceNotification value)? r5Resource,
    TResult? Function(Dstu2Request value)? dstu2Request,
    TResult? Function(Stu3Request value)? stu3Request,
    TResult? Function(R4Request value)? r4Request,
    TResult? Function(R5Request value)? r5Request,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Dstu2ResourceNotification value)? dstu2Resource,
    TResult Function(Stu3ResourceNotification value)? stu3Resource,
    TResult Function(R4ResourceNotification value)? r4Resource,
    TResult Function(R5ResourceNotification value)? r5Resource,
    TResult Function(Dstu2Request value)? dstu2Request,
    TResult Function(Stu3Request value)? stu3Request,
    TResult Function(R4Request value)? r4Request,
    TResult Function(R5Request value)? r5Request,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AtFhirNotificationCopyWith<$Res> {
  factory $AtFhirNotificationCopyWith(
          AtFhirNotification value, $Res Function(AtFhirNotification) then) =
      _$AtFhirNotificationCopyWithImpl<$Res, AtFhirNotification>;
}

/// @nodoc
class _$AtFhirNotificationCopyWithImpl<$Res, $Val extends AtFhirNotification>
    implements $AtFhirNotificationCopyWith<$Res> {
  _$AtFhirNotificationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$Dstu2ResourceNotificationCopyWith<$Res> {
  factory _$$Dstu2ResourceNotificationCopyWith(
          _$Dstu2ResourceNotification value,
          $Res Function(_$Dstu2ResourceNotification) then) =
      __$$Dstu2ResourceNotificationCopyWithImpl<$Res>;
  @useResult
  $Res call({dstu2.Resource value});
}

/// @nodoc
class __$$Dstu2ResourceNotificationCopyWithImpl<$Res>
    extends _$AtFhirNotificationCopyWithImpl<$Res, _$Dstu2ResourceNotification>
    implements _$$Dstu2ResourceNotificationCopyWith<$Res> {
  __$$Dstu2ResourceNotificationCopyWithImpl(_$Dstu2ResourceNotification _value,
      $Res Function(_$Dstu2ResourceNotification) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$Dstu2ResourceNotification(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as dstu2.Resource,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$Dstu2ResourceNotification extends Dstu2ResourceNotification {
  const _$Dstu2ResourceNotification(this.value, {final String? $type})
      : $type = $type ?? 'dstu2Resource',
        super._();

  factory _$Dstu2ResourceNotification.fromJson(Map<String, dynamic> json) =>
      _$$Dstu2ResourceNotificationFromJson(json);

  @override
  final dstu2.Resource value;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'AtFhirNotification.dstu2Resource(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Dstu2ResourceNotification &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$Dstu2ResourceNotificationCopyWith<_$Dstu2ResourceNotification>
      get copyWith => __$$Dstu2ResourceNotificationCopyWithImpl<
          _$Dstu2ResourceNotification>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dstu2.Resource value) dstu2Resource,
    required TResult Function(stu3.Resource value) stu3Resource,
    required TResult Function(r4.Resource value) r4Resource,
    required TResult Function(r5.Resource value) r5Resource,
    required TResult Function(dstu2_request.FhirRequest value) dstu2Request,
    required TResult Function(stu3_request.FhirRequest value) stu3Request,
    required TResult Function(r4_request.FhirRequest value) r4Request,
    required TResult Function(r5_request.FhirRequest value) r5Request,
  }) {
    return dstu2Resource(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(dstu2.Resource value)? dstu2Resource,
    TResult? Function(stu3.Resource value)? stu3Resource,
    TResult? Function(r4.Resource value)? r4Resource,
    TResult? Function(r5.Resource value)? r5Resource,
    TResult? Function(dstu2_request.FhirRequest value)? dstu2Request,
    TResult? Function(stu3_request.FhirRequest value)? stu3Request,
    TResult? Function(r4_request.FhirRequest value)? r4Request,
    TResult? Function(r5_request.FhirRequest value)? r5Request,
  }) {
    return dstu2Resource?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dstu2.Resource value)? dstu2Resource,
    TResult Function(stu3.Resource value)? stu3Resource,
    TResult Function(r4.Resource value)? r4Resource,
    TResult Function(r5.Resource value)? r5Resource,
    TResult Function(dstu2_request.FhirRequest value)? dstu2Request,
    TResult Function(stu3_request.FhirRequest value)? stu3Request,
    TResult Function(r4_request.FhirRequest value)? r4Request,
    TResult Function(r5_request.FhirRequest value)? r5Request,
    required TResult orElse(),
  }) {
    if (dstu2Resource != null) {
      return dstu2Resource(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Dstu2ResourceNotification value) dstu2Resource,
    required TResult Function(Stu3ResourceNotification value) stu3Resource,
    required TResult Function(R4ResourceNotification value) r4Resource,
    required TResult Function(R5ResourceNotification value) r5Resource,
    required TResult Function(Dstu2Request value) dstu2Request,
    required TResult Function(Stu3Request value) stu3Request,
    required TResult Function(R4Request value) r4Request,
    required TResult Function(R5Request value) r5Request,
  }) {
    return dstu2Resource(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Dstu2ResourceNotification value)? dstu2Resource,
    TResult? Function(Stu3ResourceNotification value)? stu3Resource,
    TResult? Function(R4ResourceNotification value)? r4Resource,
    TResult? Function(R5ResourceNotification value)? r5Resource,
    TResult? Function(Dstu2Request value)? dstu2Request,
    TResult? Function(Stu3Request value)? stu3Request,
    TResult? Function(R4Request value)? r4Request,
    TResult? Function(R5Request value)? r5Request,
  }) {
    return dstu2Resource?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Dstu2ResourceNotification value)? dstu2Resource,
    TResult Function(Stu3ResourceNotification value)? stu3Resource,
    TResult Function(R4ResourceNotification value)? r4Resource,
    TResult Function(R5ResourceNotification value)? r5Resource,
    TResult Function(Dstu2Request value)? dstu2Request,
    TResult Function(Stu3Request value)? stu3Request,
    TResult Function(R4Request value)? r4Request,
    TResult Function(R5Request value)? r5Request,
    required TResult orElse(),
  }) {
    if (dstu2Resource != null) {
      return dstu2Resource(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$Dstu2ResourceNotificationToJson(
      this,
    );
  }
}

abstract class Dstu2ResourceNotification extends AtFhirNotification {
  const factory Dstu2ResourceNotification(final dstu2.Resource value) =
      _$Dstu2ResourceNotification;
  const Dstu2ResourceNotification._() : super._();

  factory Dstu2ResourceNotification.fromJson(Map<String, dynamic> json) =
      _$Dstu2ResourceNotification.fromJson;

  @override
  dstu2.Resource get value;
  @JsonKey(ignore: true)
  _$$Dstu2ResourceNotificationCopyWith<_$Dstu2ResourceNotification>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$Stu3ResourceNotificationCopyWith<$Res> {
  factory _$$Stu3ResourceNotificationCopyWith(_$Stu3ResourceNotification value,
          $Res Function(_$Stu3ResourceNotification) then) =
      __$$Stu3ResourceNotificationCopyWithImpl<$Res>;
  @useResult
  $Res call({stu3.Resource value});
}

/// @nodoc
class __$$Stu3ResourceNotificationCopyWithImpl<$Res>
    extends _$AtFhirNotificationCopyWithImpl<$Res, _$Stu3ResourceNotification>
    implements _$$Stu3ResourceNotificationCopyWith<$Res> {
  __$$Stu3ResourceNotificationCopyWithImpl(_$Stu3ResourceNotification _value,
      $Res Function(_$Stu3ResourceNotification) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$Stu3ResourceNotification(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as stu3.Resource,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$Stu3ResourceNotification extends Stu3ResourceNotification {
  const _$Stu3ResourceNotification(this.value, {final String? $type})
      : $type = $type ?? 'stu3Resource',
        super._();

  factory _$Stu3ResourceNotification.fromJson(Map<String, dynamic> json) =>
      _$$Stu3ResourceNotificationFromJson(json);

  @override
  final stu3.Resource value;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'AtFhirNotification.stu3Resource(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Stu3ResourceNotification &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$Stu3ResourceNotificationCopyWith<_$Stu3ResourceNotification>
      get copyWith =>
          __$$Stu3ResourceNotificationCopyWithImpl<_$Stu3ResourceNotification>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dstu2.Resource value) dstu2Resource,
    required TResult Function(stu3.Resource value) stu3Resource,
    required TResult Function(r4.Resource value) r4Resource,
    required TResult Function(r5.Resource value) r5Resource,
    required TResult Function(dstu2_request.FhirRequest value) dstu2Request,
    required TResult Function(stu3_request.FhirRequest value) stu3Request,
    required TResult Function(r4_request.FhirRequest value) r4Request,
    required TResult Function(r5_request.FhirRequest value) r5Request,
  }) {
    return stu3Resource(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(dstu2.Resource value)? dstu2Resource,
    TResult? Function(stu3.Resource value)? stu3Resource,
    TResult? Function(r4.Resource value)? r4Resource,
    TResult? Function(r5.Resource value)? r5Resource,
    TResult? Function(dstu2_request.FhirRequest value)? dstu2Request,
    TResult? Function(stu3_request.FhirRequest value)? stu3Request,
    TResult? Function(r4_request.FhirRequest value)? r4Request,
    TResult? Function(r5_request.FhirRequest value)? r5Request,
  }) {
    return stu3Resource?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dstu2.Resource value)? dstu2Resource,
    TResult Function(stu3.Resource value)? stu3Resource,
    TResult Function(r4.Resource value)? r4Resource,
    TResult Function(r5.Resource value)? r5Resource,
    TResult Function(dstu2_request.FhirRequest value)? dstu2Request,
    TResult Function(stu3_request.FhirRequest value)? stu3Request,
    TResult Function(r4_request.FhirRequest value)? r4Request,
    TResult Function(r5_request.FhirRequest value)? r5Request,
    required TResult orElse(),
  }) {
    if (stu3Resource != null) {
      return stu3Resource(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Dstu2ResourceNotification value) dstu2Resource,
    required TResult Function(Stu3ResourceNotification value) stu3Resource,
    required TResult Function(R4ResourceNotification value) r4Resource,
    required TResult Function(R5ResourceNotification value) r5Resource,
    required TResult Function(Dstu2Request value) dstu2Request,
    required TResult Function(Stu3Request value) stu3Request,
    required TResult Function(R4Request value) r4Request,
    required TResult Function(R5Request value) r5Request,
  }) {
    return stu3Resource(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Dstu2ResourceNotification value)? dstu2Resource,
    TResult? Function(Stu3ResourceNotification value)? stu3Resource,
    TResult? Function(R4ResourceNotification value)? r4Resource,
    TResult? Function(R5ResourceNotification value)? r5Resource,
    TResult? Function(Dstu2Request value)? dstu2Request,
    TResult? Function(Stu3Request value)? stu3Request,
    TResult? Function(R4Request value)? r4Request,
    TResult? Function(R5Request value)? r5Request,
  }) {
    return stu3Resource?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Dstu2ResourceNotification value)? dstu2Resource,
    TResult Function(Stu3ResourceNotification value)? stu3Resource,
    TResult Function(R4ResourceNotification value)? r4Resource,
    TResult Function(R5ResourceNotification value)? r5Resource,
    TResult Function(Dstu2Request value)? dstu2Request,
    TResult Function(Stu3Request value)? stu3Request,
    TResult Function(R4Request value)? r4Request,
    TResult Function(R5Request value)? r5Request,
    required TResult orElse(),
  }) {
    if (stu3Resource != null) {
      return stu3Resource(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$Stu3ResourceNotificationToJson(
      this,
    );
  }
}

abstract class Stu3ResourceNotification extends AtFhirNotification {
  const factory Stu3ResourceNotification(final stu3.Resource value) =
      _$Stu3ResourceNotification;
  const Stu3ResourceNotification._() : super._();

  factory Stu3ResourceNotification.fromJson(Map<String, dynamic> json) =
      _$Stu3ResourceNotification.fromJson;

  @override
  stu3.Resource get value;
  @JsonKey(ignore: true)
  _$$Stu3ResourceNotificationCopyWith<_$Stu3ResourceNotification>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$R4ResourceNotificationCopyWith<$Res> {
  factory _$$R4ResourceNotificationCopyWith(_$R4ResourceNotification value,
          $Res Function(_$R4ResourceNotification) then) =
      __$$R4ResourceNotificationCopyWithImpl<$Res>;
  @useResult
  $Res call({r4.Resource value});
}

/// @nodoc
class __$$R4ResourceNotificationCopyWithImpl<$Res>
    extends _$AtFhirNotificationCopyWithImpl<$Res, _$R4ResourceNotification>
    implements _$$R4ResourceNotificationCopyWith<$Res> {
  __$$R4ResourceNotificationCopyWithImpl(_$R4ResourceNotification _value,
      $Res Function(_$R4ResourceNotification) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$R4ResourceNotification(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as r4.Resource,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$R4ResourceNotification extends R4ResourceNotification {
  const _$R4ResourceNotification(this.value, {final String? $type})
      : $type = $type ?? 'r4Resource',
        super._();

  factory _$R4ResourceNotification.fromJson(Map<String, dynamic> json) =>
      _$$R4ResourceNotificationFromJson(json);

  @override
  final r4.Resource value;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'AtFhirNotification.r4Resource(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$R4ResourceNotification &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$R4ResourceNotificationCopyWith<_$R4ResourceNotification> get copyWith =>
      __$$R4ResourceNotificationCopyWithImpl<_$R4ResourceNotification>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dstu2.Resource value) dstu2Resource,
    required TResult Function(stu3.Resource value) stu3Resource,
    required TResult Function(r4.Resource value) r4Resource,
    required TResult Function(r5.Resource value) r5Resource,
    required TResult Function(dstu2_request.FhirRequest value) dstu2Request,
    required TResult Function(stu3_request.FhirRequest value) stu3Request,
    required TResult Function(r4_request.FhirRequest value) r4Request,
    required TResult Function(r5_request.FhirRequest value) r5Request,
  }) {
    return r4Resource(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(dstu2.Resource value)? dstu2Resource,
    TResult? Function(stu3.Resource value)? stu3Resource,
    TResult? Function(r4.Resource value)? r4Resource,
    TResult? Function(r5.Resource value)? r5Resource,
    TResult? Function(dstu2_request.FhirRequest value)? dstu2Request,
    TResult? Function(stu3_request.FhirRequest value)? stu3Request,
    TResult? Function(r4_request.FhirRequest value)? r4Request,
    TResult? Function(r5_request.FhirRequest value)? r5Request,
  }) {
    return r4Resource?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dstu2.Resource value)? dstu2Resource,
    TResult Function(stu3.Resource value)? stu3Resource,
    TResult Function(r4.Resource value)? r4Resource,
    TResult Function(r5.Resource value)? r5Resource,
    TResult Function(dstu2_request.FhirRequest value)? dstu2Request,
    TResult Function(stu3_request.FhirRequest value)? stu3Request,
    TResult Function(r4_request.FhirRequest value)? r4Request,
    TResult Function(r5_request.FhirRequest value)? r5Request,
    required TResult orElse(),
  }) {
    if (r4Resource != null) {
      return r4Resource(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Dstu2ResourceNotification value) dstu2Resource,
    required TResult Function(Stu3ResourceNotification value) stu3Resource,
    required TResult Function(R4ResourceNotification value) r4Resource,
    required TResult Function(R5ResourceNotification value) r5Resource,
    required TResult Function(Dstu2Request value) dstu2Request,
    required TResult Function(Stu3Request value) stu3Request,
    required TResult Function(R4Request value) r4Request,
    required TResult Function(R5Request value) r5Request,
  }) {
    return r4Resource(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Dstu2ResourceNotification value)? dstu2Resource,
    TResult? Function(Stu3ResourceNotification value)? stu3Resource,
    TResult? Function(R4ResourceNotification value)? r4Resource,
    TResult? Function(R5ResourceNotification value)? r5Resource,
    TResult? Function(Dstu2Request value)? dstu2Request,
    TResult? Function(Stu3Request value)? stu3Request,
    TResult? Function(R4Request value)? r4Request,
    TResult? Function(R5Request value)? r5Request,
  }) {
    return r4Resource?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Dstu2ResourceNotification value)? dstu2Resource,
    TResult Function(Stu3ResourceNotification value)? stu3Resource,
    TResult Function(R4ResourceNotification value)? r4Resource,
    TResult Function(R5ResourceNotification value)? r5Resource,
    TResult Function(Dstu2Request value)? dstu2Request,
    TResult Function(Stu3Request value)? stu3Request,
    TResult Function(R4Request value)? r4Request,
    TResult Function(R5Request value)? r5Request,
    required TResult orElse(),
  }) {
    if (r4Resource != null) {
      return r4Resource(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$R4ResourceNotificationToJson(
      this,
    );
  }
}

abstract class R4ResourceNotification extends AtFhirNotification {
  const factory R4ResourceNotification(final r4.Resource value) =
      _$R4ResourceNotification;
  const R4ResourceNotification._() : super._();

  factory R4ResourceNotification.fromJson(Map<String, dynamic> json) =
      _$R4ResourceNotification.fromJson;

  @override
  r4.Resource get value;
  @JsonKey(ignore: true)
  _$$R4ResourceNotificationCopyWith<_$R4ResourceNotification> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$R5ResourceNotificationCopyWith<$Res> {
  factory _$$R5ResourceNotificationCopyWith(_$R5ResourceNotification value,
          $Res Function(_$R5ResourceNotification) then) =
      __$$R5ResourceNotificationCopyWithImpl<$Res>;
  @useResult
  $Res call({r5.Resource value});
}

/// @nodoc
class __$$R5ResourceNotificationCopyWithImpl<$Res>
    extends _$AtFhirNotificationCopyWithImpl<$Res, _$R5ResourceNotification>
    implements _$$R5ResourceNotificationCopyWith<$Res> {
  __$$R5ResourceNotificationCopyWithImpl(_$R5ResourceNotification _value,
      $Res Function(_$R5ResourceNotification) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$R5ResourceNotification(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as r5.Resource,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$R5ResourceNotification extends R5ResourceNotification {
  const _$R5ResourceNotification(this.value, {final String? $type})
      : $type = $type ?? 'r5Resource',
        super._();

  factory _$R5ResourceNotification.fromJson(Map<String, dynamic> json) =>
      _$$R5ResourceNotificationFromJson(json);

  @override
  final r5.Resource value;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'AtFhirNotification.r5Resource(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$R5ResourceNotification &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$R5ResourceNotificationCopyWith<_$R5ResourceNotification> get copyWith =>
      __$$R5ResourceNotificationCopyWithImpl<_$R5ResourceNotification>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dstu2.Resource value) dstu2Resource,
    required TResult Function(stu3.Resource value) stu3Resource,
    required TResult Function(r4.Resource value) r4Resource,
    required TResult Function(r5.Resource value) r5Resource,
    required TResult Function(dstu2_request.FhirRequest value) dstu2Request,
    required TResult Function(stu3_request.FhirRequest value) stu3Request,
    required TResult Function(r4_request.FhirRequest value) r4Request,
    required TResult Function(r5_request.FhirRequest value) r5Request,
  }) {
    return r5Resource(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(dstu2.Resource value)? dstu2Resource,
    TResult? Function(stu3.Resource value)? stu3Resource,
    TResult? Function(r4.Resource value)? r4Resource,
    TResult? Function(r5.Resource value)? r5Resource,
    TResult? Function(dstu2_request.FhirRequest value)? dstu2Request,
    TResult? Function(stu3_request.FhirRequest value)? stu3Request,
    TResult? Function(r4_request.FhirRequest value)? r4Request,
    TResult? Function(r5_request.FhirRequest value)? r5Request,
  }) {
    return r5Resource?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dstu2.Resource value)? dstu2Resource,
    TResult Function(stu3.Resource value)? stu3Resource,
    TResult Function(r4.Resource value)? r4Resource,
    TResult Function(r5.Resource value)? r5Resource,
    TResult Function(dstu2_request.FhirRequest value)? dstu2Request,
    TResult Function(stu3_request.FhirRequest value)? stu3Request,
    TResult Function(r4_request.FhirRequest value)? r4Request,
    TResult Function(r5_request.FhirRequest value)? r5Request,
    required TResult orElse(),
  }) {
    if (r5Resource != null) {
      return r5Resource(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Dstu2ResourceNotification value) dstu2Resource,
    required TResult Function(Stu3ResourceNotification value) stu3Resource,
    required TResult Function(R4ResourceNotification value) r4Resource,
    required TResult Function(R5ResourceNotification value) r5Resource,
    required TResult Function(Dstu2Request value) dstu2Request,
    required TResult Function(Stu3Request value) stu3Request,
    required TResult Function(R4Request value) r4Request,
    required TResult Function(R5Request value) r5Request,
  }) {
    return r5Resource(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Dstu2ResourceNotification value)? dstu2Resource,
    TResult? Function(Stu3ResourceNotification value)? stu3Resource,
    TResult? Function(R4ResourceNotification value)? r4Resource,
    TResult? Function(R5ResourceNotification value)? r5Resource,
    TResult? Function(Dstu2Request value)? dstu2Request,
    TResult? Function(Stu3Request value)? stu3Request,
    TResult? Function(R4Request value)? r4Request,
    TResult? Function(R5Request value)? r5Request,
  }) {
    return r5Resource?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Dstu2ResourceNotification value)? dstu2Resource,
    TResult Function(Stu3ResourceNotification value)? stu3Resource,
    TResult Function(R4ResourceNotification value)? r4Resource,
    TResult Function(R5ResourceNotification value)? r5Resource,
    TResult Function(Dstu2Request value)? dstu2Request,
    TResult Function(Stu3Request value)? stu3Request,
    TResult Function(R4Request value)? r4Request,
    TResult Function(R5Request value)? r5Request,
    required TResult orElse(),
  }) {
    if (r5Resource != null) {
      return r5Resource(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$R5ResourceNotificationToJson(
      this,
    );
  }
}

abstract class R5ResourceNotification extends AtFhirNotification {
  const factory R5ResourceNotification(final r5.Resource value) =
      _$R5ResourceNotification;
  const R5ResourceNotification._() : super._();

  factory R5ResourceNotification.fromJson(Map<String, dynamic> json) =
      _$R5ResourceNotification.fromJson;

  @override
  r5.Resource get value;
  @JsonKey(ignore: true)
  _$$R5ResourceNotificationCopyWith<_$R5ResourceNotification> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$Dstu2RequestCopyWith<$Res> {
  factory _$$Dstu2RequestCopyWith(
          _$Dstu2Request value, $Res Function(_$Dstu2Request) then) =
      __$$Dstu2RequestCopyWithImpl<$Res>;
  @useResult
  $Res call({dstu2_request.FhirRequest value});

  dstu2_request.$FhirRequestCopyWith<$Res> get value;
}

/// @nodoc
class __$$Dstu2RequestCopyWithImpl<$Res>
    extends _$AtFhirNotificationCopyWithImpl<$Res, _$Dstu2Request>
    implements _$$Dstu2RequestCopyWith<$Res> {
  __$$Dstu2RequestCopyWithImpl(
      _$Dstu2Request _value, $Res Function(_$Dstu2Request) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$Dstu2Request(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as dstu2_request.FhirRequest,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  dstu2_request.$FhirRequestCopyWith<$Res> get value {
    return dstu2_request.$FhirRequestCopyWith<$Res>(_value.value, (value) {
      return _then(_value.copyWith(value: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$Dstu2Request extends Dstu2Request {
  const _$Dstu2Request(this.value, {final String? $type})
      : $type = $type ?? 'dstu2Request',
        super._();

  factory _$Dstu2Request.fromJson(Map<String, dynamic> json) =>
      _$$Dstu2RequestFromJson(json);

  @override
  final dstu2_request.FhirRequest value;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'AtFhirNotification.dstu2Request(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Dstu2Request &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$Dstu2RequestCopyWith<_$Dstu2Request> get copyWith =>
      __$$Dstu2RequestCopyWithImpl<_$Dstu2Request>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dstu2.Resource value) dstu2Resource,
    required TResult Function(stu3.Resource value) stu3Resource,
    required TResult Function(r4.Resource value) r4Resource,
    required TResult Function(r5.Resource value) r5Resource,
    required TResult Function(dstu2_request.FhirRequest value) dstu2Request,
    required TResult Function(stu3_request.FhirRequest value) stu3Request,
    required TResult Function(r4_request.FhirRequest value) r4Request,
    required TResult Function(r5_request.FhirRequest value) r5Request,
  }) {
    return dstu2Request(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(dstu2.Resource value)? dstu2Resource,
    TResult? Function(stu3.Resource value)? stu3Resource,
    TResult? Function(r4.Resource value)? r4Resource,
    TResult? Function(r5.Resource value)? r5Resource,
    TResult? Function(dstu2_request.FhirRequest value)? dstu2Request,
    TResult? Function(stu3_request.FhirRequest value)? stu3Request,
    TResult? Function(r4_request.FhirRequest value)? r4Request,
    TResult? Function(r5_request.FhirRequest value)? r5Request,
  }) {
    return dstu2Request?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dstu2.Resource value)? dstu2Resource,
    TResult Function(stu3.Resource value)? stu3Resource,
    TResult Function(r4.Resource value)? r4Resource,
    TResult Function(r5.Resource value)? r5Resource,
    TResult Function(dstu2_request.FhirRequest value)? dstu2Request,
    TResult Function(stu3_request.FhirRequest value)? stu3Request,
    TResult Function(r4_request.FhirRequest value)? r4Request,
    TResult Function(r5_request.FhirRequest value)? r5Request,
    required TResult orElse(),
  }) {
    if (dstu2Request != null) {
      return dstu2Request(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Dstu2ResourceNotification value) dstu2Resource,
    required TResult Function(Stu3ResourceNotification value) stu3Resource,
    required TResult Function(R4ResourceNotification value) r4Resource,
    required TResult Function(R5ResourceNotification value) r5Resource,
    required TResult Function(Dstu2Request value) dstu2Request,
    required TResult Function(Stu3Request value) stu3Request,
    required TResult Function(R4Request value) r4Request,
    required TResult Function(R5Request value) r5Request,
  }) {
    return dstu2Request(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Dstu2ResourceNotification value)? dstu2Resource,
    TResult? Function(Stu3ResourceNotification value)? stu3Resource,
    TResult? Function(R4ResourceNotification value)? r4Resource,
    TResult? Function(R5ResourceNotification value)? r5Resource,
    TResult? Function(Dstu2Request value)? dstu2Request,
    TResult? Function(Stu3Request value)? stu3Request,
    TResult? Function(R4Request value)? r4Request,
    TResult? Function(R5Request value)? r5Request,
  }) {
    return dstu2Request?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Dstu2ResourceNotification value)? dstu2Resource,
    TResult Function(Stu3ResourceNotification value)? stu3Resource,
    TResult Function(R4ResourceNotification value)? r4Resource,
    TResult Function(R5ResourceNotification value)? r5Resource,
    TResult Function(Dstu2Request value)? dstu2Request,
    TResult Function(Stu3Request value)? stu3Request,
    TResult Function(R4Request value)? r4Request,
    TResult Function(R5Request value)? r5Request,
    required TResult orElse(),
  }) {
    if (dstu2Request != null) {
      return dstu2Request(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$Dstu2RequestToJson(
      this,
    );
  }
}

abstract class Dstu2Request extends AtFhirNotification {
  const factory Dstu2Request(final dstu2_request.FhirRequest value) =
      _$Dstu2Request;
  const Dstu2Request._() : super._();

  factory Dstu2Request.fromJson(Map<String, dynamic> json) =
      _$Dstu2Request.fromJson;

  @override
  dstu2_request.FhirRequest get value;
  @JsonKey(ignore: true)
  _$$Dstu2RequestCopyWith<_$Dstu2Request> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$Stu3RequestCopyWith<$Res> {
  factory _$$Stu3RequestCopyWith(
          _$Stu3Request value, $Res Function(_$Stu3Request) then) =
      __$$Stu3RequestCopyWithImpl<$Res>;
  @useResult
  $Res call({stu3_request.FhirRequest value});

  stu3_request.$FhirRequestCopyWith<$Res> get value;
}

/// @nodoc
class __$$Stu3RequestCopyWithImpl<$Res>
    extends _$AtFhirNotificationCopyWithImpl<$Res, _$Stu3Request>
    implements _$$Stu3RequestCopyWith<$Res> {
  __$$Stu3RequestCopyWithImpl(
      _$Stu3Request _value, $Res Function(_$Stu3Request) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$Stu3Request(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as stu3_request.FhirRequest,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  stu3_request.$FhirRequestCopyWith<$Res> get value {
    return stu3_request.$FhirRequestCopyWith<$Res>(_value.value, (value) {
      return _then(_value.copyWith(value: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$Stu3Request extends Stu3Request {
  const _$Stu3Request(this.value, {final String? $type})
      : $type = $type ?? 'stu3Request',
        super._();

  factory _$Stu3Request.fromJson(Map<String, dynamic> json) =>
      _$$Stu3RequestFromJson(json);

  @override
  final stu3_request.FhirRequest value;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'AtFhirNotification.stu3Request(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Stu3Request &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$Stu3RequestCopyWith<_$Stu3Request> get copyWith =>
      __$$Stu3RequestCopyWithImpl<_$Stu3Request>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dstu2.Resource value) dstu2Resource,
    required TResult Function(stu3.Resource value) stu3Resource,
    required TResult Function(r4.Resource value) r4Resource,
    required TResult Function(r5.Resource value) r5Resource,
    required TResult Function(dstu2_request.FhirRequest value) dstu2Request,
    required TResult Function(stu3_request.FhirRequest value) stu3Request,
    required TResult Function(r4_request.FhirRequest value) r4Request,
    required TResult Function(r5_request.FhirRequest value) r5Request,
  }) {
    return stu3Request(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(dstu2.Resource value)? dstu2Resource,
    TResult? Function(stu3.Resource value)? stu3Resource,
    TResult? Function(r4.Resource value)? r4Resource,
    TResult? Function(r5.Resource value)? r5Resource,
    TResult? Function(dstu2_request.FhirRequest value)? dstu2Request,
    TResult? Function(stu3_request.FhirRequest value)? stu3Request,
    TResult? Function(r4_request.FhirRequest value)? r4Request,
    TResult? Function(r5_request.FhirRequest value)? r5Request,
  }) {
    return stu3Request?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dstu2.Resource value)? dstu2Resource,
    TResult Function(stu3.Resource value)? stu3Resource,
    TResult Function(r4.Resource value)? r4Resource,
    TResult Function(r5.Resource value)? r5Resource,
    TResult Function(dstu2_request.FhirRequest value)? dstu2Request,
    TResult Function(stu3_request.FhirRequest value)? stu3Request,
    TResult Function(r4_request.FhirRequest value)? r4Request,
    TResult Function(r5_request.FhirRequest value)? r5Request,
    required TResult orElse(),
  }) {
    if (stu3Request != null) {
      return stu3Request(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Dstu2ResourceNotification value) dstu2Resource,
    required TResult Function(Stu3ResourceNotification value) stu3Resource,
    required TResult Function(R4ResourceNotification value) r4Resource,
    required TResult Function(R5ResourceNotification value) r5Resource,
    required TResult Function(Dstu2Request value) dstu2Request,
    required TResult Function(Stu3Request value) stu3Request,
    required TResult Function(R4Request value) r4Request,
    required TResult Function(R5Request value) r5Request,
  }) {
    return stu3Request(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Dstu2ResourceNotification value)? dstu2Resource,
    TResult? Function(Stu3ResourceNotification value)? stu3Resource,
    TResult? Function(R4ResourceNotification value)? r4Resource,
    TResult? Function(R5ResourceNotification value)? r5Resource,
    TResult? Function(Dstu2Request value)? dstu2Request,
    TResult? Function(Stu3Request value)? stu3Request,
    TResult? Function(R4Request value)? r4Request,
    TResult? Function(R5Request value)? r5Request,
  }) {
    return stu3Request?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Dstu2ResourceNotification value)? dstu2Resource,
    TResult Function(Stu3ResourceNotification value)? stu3Resource,
    TResult Function(R4ResourceNotification value)? r4Resource,
    TResult Function(R5ResourceNotification value)? r5Resource,
    TResult Function(Dstu2Request value)? dstu2Request,
    TResult Function(Stu3Request value)? stu3Request,
    TResult Function(R4Request value)? r4Request,
    TResult Function(R5Request value)? r5Request,
    required TResult orElse(),
  }) {
    if (stu3Request != null) {
      return stu3Request(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$Stu3RequestToJson(
      this,
    );
  }
}

abstract class Stu3Request extends AtFhirNotification {
  const factory Stu3Request(final stu3_request.FhirRequest value) =
      _$Stu3Request;
  const Stu3Request._() : super._();

  factory Stu3Request.fromJson(Map<String, dynamic> json) =
      _$Stu3Request.fromJson;

  @override
  stu3_request.FhirRequest get value;
  @JsonKey(ignore: true)
  _$$Stu3RequestCopyWith<_$Stu3Request> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$R4RequestCopyWith<$Res> {
  factory _$$R4RequestCopyWith(
          _$R4Request value, $Res Function(_$R4Request) then) =
      __$$R4RequestCopyWithImpl<$Res>;
  @useResult
  $Res call({r4_request.FhirRequest value});

  r4_request.$FhirRequestCopyWith<$Res> get value;
}

/// @nodoc
class __$$R4RequestCopyWithImpl<$Res>
    extends _$AtFhirNotificationCopyWithImpl<$Res, _$R4Request>
    implements _$$R4RequestCopyWith<$Res> {
  __$$R4RequestCopyWithImpl(
      _$R4Request _value, $Res Function(_$R4Request) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$R4Request(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as r4_request.FhirRequest,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  r4_request.$FhirRequestCopyWith<$Res> get value {
    return r4_request.$FhirRequestCopyWith<$Res>(_value.value, (value) {
      return _then(_value.copyWith(value: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$R4Request extends R4Request {
  const _$R4Request(this.value, {final String? $type})
      : $type = $type ?? 'r4Request',
        super._();

  factory _$R4Request.fromJson(Map<String, dynamic> json) =>
      _$$R4RequestFromJson(json);

  @override
  final r4_request.FhirRequest value;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'AtFhirNotification.r4Request(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$R4Request &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$R4RequestCopyWith<_$R4Request> get copyWith =>
      __$$R4RequestCopyWithImpl<_$R4Request>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dstu2.Resource value) dstu2Resource,
    required TResult Function(stu3.Resource value) stu3Resource,
    required TResult Function(r4.Resource value) r4Resource,
    required TResult Function(r5.Resource value) r5Resource,
    required TResult Function(dstu2_request.FhirRequest value) dstu2Request,
    required TResult Function(stu3_request.FhirRequest value) stu3Request,
    required TResult Function(r4_request.FhirRequest value) r4Request,
    required TResult Function(r5_request.FhirRequest value) r5Request,
  }) {
    return r4Request(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(dstu2.Resource value)? dstu2Resource,
    TResult? Function(stu3.Resource value)? stu3Resource,
    TResult? Function(r4.Resource value)? r4Resource,
    TResult? Function(r5.Resource value)? r5Resource,
    TResult? Function(dstu2_request.FhirRequest value)? dstu2Request,
    TResult? Function(stu3_request.FhirRequest value)? stu3Request,
    TResult? Function(r4_request.FhirRequest value)? r4Request,
    TResult? Function(r5_request.FhirRequest value)? r5Request,
  }) {
    return r4Request?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dstu2.Resource value)? dstu2Resource,
    TResult Function(stu3.Resource value)? stu3Resource,
    TResult Function(r4.Resource value)? r4Resource,
    TResult Function(r5.Resource value)? r5Resource,
    TResult Function(dstu2_request.FhirRequest value)? dstu2Request,
    TResult Function(stu3_request.FhirRequest value)? stu3Request,
    TResult Function(r4_request.FhirRequest value)? r4Request,
    TResult Function(r5_request.FhirRequest value)? r5Request,
    required TResult orElse(),
  }) {
    if (r4Request != null) {
      return r4Request(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Dstu2ResourceNotification value) dstu2Resource,
    required TResult Function(Stu3ResourceNotification value) stu3Resource,
    required TResult Function(R4ResourceNotification value) r4Resource,
    required TResult Function(R5ResourceNotification value) r5Resource,
    required TResult Function(Dstu2Request value) dstu2Request,
    required TResult Function(Stu3Request value) stu3Request,
    required TResult Function(R4Request value) r4Request,
    required TResult Function(R5Request value) r5Request,
  }) {
    return r4Request(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Dstu2ResourceNotification value)? dstu2Resource,
    TResult? Function(Stu3ResourceNotification value)? stu3Resource,
    TResult? Function(R4ResourceNotification value)? r4Resource,
    TResult? Function(R5ResourceNotification value)? r5Resource,
    TResult? Function(Dstu2Request value)? dstu2Request,
    TResult? Function(Stu3Request value)? stu3Request,
    TResult? Function(R4Request value)? r4Request,
    TResult? Function(R5Request value)? r5Request,
  }) {
    return r4Request?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Dstu2ResourceNotification value)? dstu2Resource,
    TResult Function(Stu3ResourceNotification value)? stu3Resource,
    TResult Function(R4ResourceNotification value)? r4Resource,
    TResult Function(R5ResourceNotification value)? r5Resource,
    TResult Function(Dstu2Request value)? dstu2Request,
    TResult Function(Stu3Request value)? stu3Request,
    TResult Function(R4Request value)? r4Request,
    TResult Function(R5Request value)? r5Request,
    required TResult orElse(),
  }) {
    if (r4Request != null) {
      return r4Request(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$R4RequestToJson(
      this,
    );
  }
}

abstract class R4Request extends AtFhirNotification {
  const factory R4Request(final r4_request.FhirRequest value) = _$R4Request;
  const R4Request._() : super._();

  factory R4Request.fromJson(Map<String, dynamic> json) = _$R4Request.fromJson;

  @override
  r4_request.FhirRequest get value;
  @JsonKey(ignore: true)
  _$$R4RequestCopyWith<_$R4Request> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$R5RequestCopyWith<$Res> {
  factory _$$R5RequestCopyWith(
          _$R5Request value, $Res Function(_$R5Request) then) =
      __$$R5RequestCopyWithImpl<$Res>;
  @useResult
  $Res call({r5_request.FhirRequest value});

  r5_request.$FhirRequestCopyWith<$Res> get value;
}

/// @nodoc
class __$$R5RequestCopyWithImpl<$Res>
    extends _$AtFhirNotificationCopyWithImpl<$Res, _$R5Request>
    implements _$$R5RequestCopyWith<$Res> {
  __$$R5RequestCopyWithImpl(
      _$R5Request _value, $Res Function(_$R5Request) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$R5Request(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as r5_request.FhirRequest,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  r5_request.$FhirRequestCopyWith<$Res> get value {
    return r5_request.$FhirRequestCopyWith<$Res>(_value.value, (value) {
      return _then(_value.copyWith(value: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$R5Request extends R5Request {
  const _$R5Request(this.value, {final String? $type})
      : $type = $type ?? 'r5Request',
        super._();

  factory _$R5Request.fromJson(Map<String, dynamic> json) =>
      _$$R5RequestFromJson(json);

  @override
  final r5_request.FhirRequest value;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'AtFhirNotification.r5Request(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$R5Request &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$R5RequestCopyWith<_$R5Request> get copyWith =>
      __$$R5RequestCopyWithImpl<_$R5Request>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dstu2.Resource value) dstu2Resource,
    required TResult Function(stu3.Resource value) stu3Resource,
    required TResult Function(r4.Resource value) r4Resource,
    required TResult Function(r5.Resource value) r5Resource,
    required TResult Function(dstu2_request.FhirRequest value) dstu2Request,
    required TResult Function(stu3_request.FhirRequest value) stu3Request,
    required TResult Function(r4_request.FhirRequest value) r4Request,
    required TResult Function(r5_request.FhirRequest value) r5Request,
  }) {
    return r5Request(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(dstu2.Resource value)? dstu2Resource,
    TResult? Function(stu3.Resource value)? stu3Resource,
    TResult? Function(r4.Resource value)? r4Resource,
    TResult? Function(r5.Resource value)? r5Resource,
    TResult? Function(dstu2_request.FhirRequest value)? dstu2Request,
    TResult? Function(stu3_request.FhirRequest value)? stu3Request,
    TResult? Function(r4_request.FhirRequest value)? r4Request,
    TResult? Function(r5_request.FhirRequest value)? r5Request,
  }) {
    return r5Request?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dstu2.Resource value)? dstu2Resource,
    TResult Function(stu3.Resource value)? stu3Resource,
    TResult Function(r4.Resource value)? r4Resource,
    TResult Function(r5.Resource value)? r5Resource,
    TResult Function(dstu2_request.FhirRequest value)? dstu2Request,
    TResult Function(stu3_request.FhirRequest value)? stu3Request,
    TResult Function(r4_request.FhirRequest value)? r4Request,
    TResult Function(r5_request.FhirRequest value)? r5Request,
    required TResult orElse(),
  }) {
    if (r5Request != null) {
      return r5Request(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Dstu2ResourceNotification value) dstu2Resource,
    required TResult Function(Stu3ResourceNotification value) stu3Resource,
    required TResult Function(R4ResourceNotification value) r4Resource,
    required TResult Function(R5ResourceNotification value) r5Resource,
    required TResult Function(Dstu2Request value) dstu2Request,
    required TResult Function(Stu3Request value) stu3Request,
    required TResult Function(R4Request value) r4Request,
    required TResult Function(R5Request value) r5Request,
  }) {
    return r5Request(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Dstu2ResourceNotification value)? dstu2Resource,
    TResult? Function(Stu3ResourceNotification value)? stu3Resource,
    TResult? Function(R4ResourceNotification value)? r4Resource,
    TResult? Function(R5ResourceNotification value)? r5Resource,
    TResult? Function(Dstu2Request value)? dstu2Request,
    TResult? Function(Stu3Request value)? stu3Request,
    TResult? Function(R4Request value)? r4Request,
    TResult? Function(R5Request value)? r5Request,
  }) {
    return r5Request?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Dstu2ResourceNotification value)? dstu2Resource,
    TResult Function(Stu3ResourceNotification value)? stu3Resource,
    TResult Function(R4ResourceNotification value)? r4Resource,
    TResult Function(R5ResourceNotification value)? r5Resource,
    TResult Function(Dstu2Request value)? dstu2Request,
    TResult Function(Stu3Request value)? stu3Request,
    TResult Function(R4Request value)? r4Request,
    TResult Function(R5Request value)? r5Request,
    required TResult orElse(),
  }) {
    if (r5Request != null) {
      return r5Request(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$R5RequestToJson(
      this,
    );
  }
}

abstract class R5Request extends AtFhirNotification {
  const factory R5Request(final r5_request.FhirRequest value) = _$R5Request;
  const R5Request._() : super._();

  factory R5Request.fromJson(Map<String, dynamic> json) = _$R5Request.fromJson;

  @override
  r5_request.FhirRequest get value;
  @JsonKey(ignore: true)
  _$$R5RequestCopyWith<_$R5Request> get copyWith =>
      throw _privateConstructorUsedError;
}
