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
      return AtFhirDstu2ResourceNotification.fromJson(json);
    case 'stu3Resource':
      return AtFhirStu3ResourceNotification.fromJson(json);
    case 'r4Resource':
      return AtFhirR4ResourceNotification.fromJson(json);
    case 'r5Resource':
      return AtFhirR5ResourceNotification.fromJson(json);
    case 'dstu2Request':
      return AtFhirDstu2RequestNotification.fromJson(json);
    case 'stu3Request':
      return AtFhirStu3RequestNotification.fromJson(json);
    case 'r4Request':
      return AtFhirR4RequestNotification.fromJson(json);
    case 'r5Request':
      return AtFhirR5RequestNotification.fromJson(json);

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
    required TResult Function(AtFhirDstu2ResourceNotification value)
        dstu2Resource,
    required TResult Function(AtFhirStu3ResourceNotification value)
        stu3Resource,
    required TResult Function(AtFhirR4ResourceNotification value) r4Resource,
    required TResult Function(AtFhirR5ResourceNotification value) r5Resource,
    required TResult Function(AtFhirDstu2RequestNotification value)
        dstu2Request,
    required TResult Function(AtFhirStu3RequestNotification value) stu3Request,
    required TResult Function(AtFhirR4RequestNotification value) r4Request,
    required TResult Function(AtFhirR5RequestNotification value) r5Request,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AtFhirDstu2ResourceNotification value)? dstu2Resource,
    TResult? Function(AtFhirStu3ResourceNotification value)? stu3Resource,
    TResult? Function(AtFhirR4ResourceNotification value)? r4Resource,
    TResult? Function(AtFhirR5ResourceNotification value)? r5Resource,
    TResult? Function(AtFhirDstu2RequestNotification value)? dstu2Request,
    TResult? Function(AtFhirStu3RequestNotification value)? stu3Request,
    TResult? Function(AtFhirR4RequestNotification value)? r4Request,
    TResult? Function(AtFhirR5RequestNotification value)? r5Request,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AtFhirDstu2ResourceNotification value)? dstu2Resource,
    TResult Function(AtFhirStu3ResourceNotification value)? stu3Resource,
    TResult Function(AtFhirR4ResourceNotification value)? r4Resource,
    TResult Function(AtFhirR5ResourceNotification value)? r5Resource,
    TResult Function(AtFhirDstu2RequestNotification value)? dstu2Request,
    TResult Function(AtFhirStu3RequestNotification value)? stu3Request,
    TResult Function(AtFhirR4RequestNotification value)? r4Request,
    TResult Function(AtFhirR5RequestNotification value)? r5Request,
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
abstract class _$$AtFhirDstu2ResourceNotificationImplCopyWith<$Res> {
  factory _$$AtFhirDstu2ResourceNotificationImplCopyWith(
          _$AtFhirDstu2ResourceNotificationImpl value,
          $Res Function(_$AtFhirDstu2ResourceNotificationImpl) then) =
      __$$AtFhirDstu2ResourceNotificationImplCopyWithImpl<$Res>;
  @useResult
  $Res call({dstu2.Resource value});
}

/// @nodoc
class __$$AtFhirDstu2ResourceNotificationImplCopyWithImpl<$Res>
    extends _$AtFhirNotificationCopyWithImpl<$Res,
        _$AtFhirDstu2ResourceNotificationImpl>
    implements _$$AtFhirDstu2ResourceNotificationImplCopyWith<$Res> {
  __$$AtFhirDstu2ResourceNotificationImplCopyWithImpl(
      _$AtFhirDstu2ResourceNotificationImpl _value,
      $Res Function(_$AtFhirDstu2ResourceNotificationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$AtFhirDstu2ResourceNotificationImpl(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as dstu2.Resource,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AtFhirDstu2ResourceNotificationImpl
    extends AtFhirDstu2ResourceNotification {
  const _$AtFhirDstu2ResourceNotificationImpl(this.value, {final String? $type})
      : $type = $type ?? 'dstu2Resource',
        super._();

  factory _$AtFhirDstu2ResourceNotificationImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$AtFhirDstu2ResourceNotificationImplFromJson(json);

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
            other is _$AtFhirDstu2ResourceNotificationImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AtFhirDstu2ResourceNotificationImplCopyWith<
          _$AtFhirDstu2ResourceNotificationImpl>
      get copyWith => __$$AtFhirDstu2ResourceNotificationImplCopyWithImpl<
          _$AtFhirDstu2ResourceNotificationImpl>(this, _$identity);

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
    required TResult Function(AtFhirDstu2ResourceNotification value)
        dstu2Resource,
    required TResult Function(AtFhirStu3ResourceNotification value)
        stu3Resource,
    required TResult Function(AtFhirR4ResourceNotification value) r4Resource,
    required TResult Function(AtFhirR5ResourceNotification value) r5Resource,
    required TResult Function(AtFhirDstu2RequestNotification value)
        dstu2Request,
    required TResult Function(AtFhirStu3RequestNotification value) stu3Request,
    required TResult Function(AtFhirR4RequestNotification value) r4Request,
    required TResult Function(AtFhirR5RequestNotification value) r5Request,
  }) {
    return dstu2Resource(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AtFhirDstu2ResourceNotification value)? dstu2Resource,
    TResult? Function(AtFhirStu3ResourceNotification value)? stu3Resource,
    TResult? Function(AtFhirR4ResourceNotification value)? r4Resource,
    TResult? Function(AtFhirR5ResourceNotification value)? r5Resource,
    TResult? Function(AtFhirDstu2RequestNotification value)? dstu2Request,
    TResult? Function(AtFhirStu3RequestNotification value)? stu3Request,
    TResult? Function(AtFhirR4RequestNotification value)? r4Request,
    TResult? Function(AtFhirR5RequestNotification value)? r5Request,
  }) {
    return dstu2Resource?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AtFhirDstu2ResourceNotification value)? dstu2Resource,
    TResult Function(AtFhirStu3ResourceNotification value)? stu3Resource,
    TResult Function(AtFhirR4ResourceNotification value)? r4Resource,
    TResult Function(AtFhirR5ResourceNotification value)? r5Resource,
    TResult Function(AtFhirDstu2RequestNotification value)? dstu2Request,
    TResult Function(AtFhirStu3RequestNotification value)? stu3Request,
    TResult Function(AtFhirR4RequestNotification value)? r4Request,
    TResult Function(AtFhirR5RequestNotification value)? r5Request,
    required TResult orElse(),
  }) {
    if (dstu2Resource != null) {
      return dstu2Resource(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$AtFhirDstu2ResourceNotificationImplToJson(
      this,
    );
  }
}

abstract class AtFhirDstu2ResourceNotification extends AtFhirNotification {
  const factory AtFhirDstu2ResourceNotification(final dstu2.Resource value) =
      _$AtFhirDstu2ResourceNotificationImpl;
  const AtFhirDstu2ResourceNotification._() : super._();

  factory AtFhirDstu2ResourceNotification.fromJson(Map<String, dynamic> json) =
      _$AtFhirDstu2ResourceNotificationImpl.fromJson;

  @override
  dstu2.Resource get value;
  @JsonKey(ignore: true)
  _$$AtFhirDstu2ResourceNotificationImplCopyWith<
          _$AtFhirDstu2ResourceNotificationImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AtFhirStu3ResourceNotificationImplCopyWith<$Res> {
  factory _$$AtFhirStu3ResourceNotificationImplCopyWith(
          _$AtFhirStu3ResourceNotificationImpl value,
          $Res Function(_$AtFhirStu3ResourceNotificationImpl) then) =
      __$$AtFhirStu3ResourceNotificationImplCopyWithImpl<$Res>;
  @useResult
  $Res call({stu3.Resource value});
}

/// @nodoc
class __$$AtFhirStu3ResourceNotificationImplCopyWithImpl<$Res>
    extends _$AtFhirNotificationCopyWithImpl<$Res,
        _$AtFhirStu3ResourceNotificationImpl>
    implements _$$AtFhirStu3ResourceNotificationImplCopyWith<$Res> {
  __$$AtFhirStu3ResourceNotificationImplCopyWithImpl(
      _$AtFhirStu3ResourceNotificationImpl _value,
      $Res Function(_$AtFhirStu3ResourceNotificationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$AtFhirStu3ResourceNotificationImpl(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as stu3.Resource,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AtFhirStu3ResourceNotificationImpl
    extends AtFhirStu3ResourceNotification {
  const _$AtFhirStu3ResourceNotificationImpl(this.value, {final String? $type})
      : $type = $type ?? 'stu3Resource',
        super._();

  factory _$AtFhirStu3ResourceNotificationImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$AtFhirStu3ResourceNotificationImplFromJson(json);

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
            other is _$AtFhirStu3ResourceNotificationImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AtFhirStu3ResourceNotificationImplCopyWith<
          _$AtFhirStu3ResourceNotificationImpl>
      get copyWith => __$$AtFhirStu3ResourceNotificationImplCopyWithImpl<
          _$AtFhirStu3ResourceNotificationImpl>(this, _$identity);

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
    required TResult Function(AtFhirDstu2ResourceNotification value)
        dstu2Resource,
    required TResult Function(AtFhirStu3ResourceNotification value)
        stu3Resource,
    required TResult Function(AtFhirR4ResourceNotification value) r4Resource,
    required TResult Function(AtFhirR5ResourceNotification value) r5Resource,
    required TResult Function(AtFhirDstu2RequestNotification value)
        dstu2Request,
    required TResult Function(AtFhirStu3RequestNotification value) stu3Request,
    required TResult Function(AtFhirR4RequestNotification value) r4Request,
    required TResult Function(AtFhirR5RequestNotification value) r5Request,
  }) {
    return stu3Resource(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AtFhirDstu2ResourceNotification value)? dstu2Resource,
    TResult? Function(AtFhirStu3ResourceNotification value)? stu3Resource,
    TResult? Function(AtFhirR4ResourceNotification value)? r4Resource,
    TResult? Function(AtFhirR5ResourceNotification value)? r5Resource,
    TResult? Function(AtFhirDstu2RequestNotification value)? dstu2Request,
    TResult? Function(AtFhirStu3RequestNotification value)? stu3Request,
    TResult? Function(AtFhirR4RequestNotification value)? r4Request,
    TResult? Function(AtFhirR5RequestNotification value)? r5Request,
  }) {
    return stu3Resource?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AtFhirDstu2ResourceNotification value)? dstu2Resource,
    TResult Function(AtFhirStu3ResourceNotification value)? stu3Resource,
    TResult Function(AtFhirR4ResourceNotification value)? r4Resource,
    TResult Function(AtFhirR5ResourceNotification value)? r5Resource,
    TResult Function(AtFhirDstu2RequestNotification value)? dstu2Request,
    TResult Function(AtFhirStu3RequestNotification value)? stu3Request,
    TResult Function(AtFhirR4RequestNotification value)? r4Request,
    TResult Function(AtFhirR5RequestNotification value)? r5Request,
    required TResult orElse(),
  }) {
    if (stu3Resource != null) {
      return stu3Resource(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$AtFhirStu3ResourceNotificationImplToJson(
      this,
    );
  }
}

abstract class AtFhirStu3ResourceNotification extends AtFhirNotification {
  const factory AtFhirStu3ResourceNotification(final stu3.Resource value) =
      _$AtFhirStu3ResourceNotificationImpl;
  const AtFhirStu3ResourceNotification._() : super._();

  factory AtFhirStu3ResourceNotification.fromJson(Map<String, dynamic> json) =
      _$AtFhirStu3ResourceNotificationImpl.fromJson;

  @override
  stu3.Resource get value;
  @JsonKey(ignore: true)
  _$$AtFhirStu3ResourceNotificationImplCopyWith<
          _$AtFhirStu3ResourceNotificationImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AtFhirR4ResourceNotificationImplCopyWith<$Res> {
  factory _$$AtFhirR4ResourceNotificationImplCopyWith(
          _$AtFhirR4ResourceNotificationImpl value,
          $Res Function(_$AtFhirR4ResourceNotificationImpl) then) =
      __$$AtFhirR4ResourceNotificationImplCopyWithImpl<$Res>;
  @useResult
  $Res call({r4.Resource value});
}

/// @nodoc
class __$$AtFhirR4ResourceNotificationImplCopyWithImpl<$Res>
    extends _$AtFhirNotificationCopyWithImpl<$Res,
        _$AtFhirR4ResourceNotificationImpl>
    implements _$$AtFhirR4ResourceNotificationImplCopyWith<$Res> {
  __$$AtFhirR4ResourceNotificationImplCopyWithImpl(
      _$AtFhirR4ResourceNotificationImpl _value,
      $Res Function(_$AtFhirR4ResourceNotificationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$AtFhirR4ResourceNotificationImpl(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as r4.Resource,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AtFhirR4ResourceNotificationImpl extends AtFhirR4ResourceNotification {
  const _$AtFhirR4ResourceNotificationImpl(this.value, {final String? $type})
      : $type = $type ?? 'r4Resource',
        super._();

  factory _$AtFhirR4ResourceNotificationImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$AtFhirR4ResourceNotificationImplFromJson(json);

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
            other is _$AtFhirR4ResourceNotificationImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AtFhirR4ResourceNotificationImplCopyWith<
          _$AtFhirR4ResourceNotificationImpl>
      get copyWith => __$$AtFhirR4ResourceNotificationImplCopyWithImpl<
          _$AtFhirR4ResourceNotificationImpl>(this, _$identity);

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
    required TResult Function(AtFhirDstu2ResourceNotification value)
        dstu2Resource,
    required TResult Function(AtFhirStu3ResourceNotification value)
        stu3Resource,
    required TResult Function(AtFhirR4ResourceNotification value) r4Resource,
    required TResult Function(AtFhirR5ResourceNotification value) r5Resource,
    required TResult Function(AtFhirDstu2RequestNotification value)
        dstu2Request,
    required TResult Function(AtFhirStu3RequestNotification value) stu3Request,
    required TResult Function(AtFhirR4RequestNotification value) r4Request,
    required TResult Function(AtFhirR5RequestNotification value) r5Request,
  }) {
    return r4Resource(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AtFhirDstu2ResourceNotification value)? dstu2Resource,
    TResult? Function(AtFhirStu3ResourceNotification value)? stu3Resource,
    TResult? Function(AtFhirR4ResourceNotification value)? r4Resource,
    TResult? Function(AtFhirR5ResourceNotification value)? r5Resource,
    TResult? Function(AtFhirDstu2RequestNotification value)? dstu2Request,
    TResult? Function(AtFhirStu3RequestNotification value)? stu3Request,
    TResult? Function(AtFhirR4RequestNotification value)? r4Request,
    TResult? Function(AtFhirR5RequestNotification value)? r5Request,
  }) {
    return r4Resource?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AtFhirDstu2ResourceNotification value)? dstu2Resource,
    TResult Function(AtFhirStu3ResourceNotification value)? stu3Resource,
    TResult Function(AtFhirR4ResourceNotification value)? r4Resource,
    TResult Function(AtFhirR5ResourceNotification value)? r5Resource,
    TResult Function(AtFhirDstu2RequestNotification value)? dstu2Request,
    TResult Function(AtFhirStu3RequestNotification value)? stu3Request,
    TResult Function(AtFhirR4RequestNotification value)? r4Request,
    TResult Function(AtFhirR5RequestNotification value)? r5Request,
    required TResult orElse(),
  }) {
    if (r4Resource != null) {
      return r4Resource(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$AtFhirR4ResourceNotificationImplToJson(
      this,
    );
  }
}

abstract class AtFhirR4ResourceNotification extends AtFhirNotification {
  const factory AtFhirR4ResourceNotification(final r4.Resource value) =
      _$AtFhirR4ResourceNotificationImpl;
  const AtFhirR4ResourceNotification._() : super._();

  factory AtFhirR4ResourceNotification.fromJson(Map<String, dynamic> json) =
      _$AtFhirR4ResourceNotificationImpl.fromJson;

  @override
  r4.Resource get value;
  @JsonKey(ignore: true)
  _$$AtFhirR4ResourceNotificationImplCopyWith<
          _$AtFhirR4ResourceNotificationImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AtFhirR5ResourceNotificationImplCopyWith<$Res> {
  factory _$$AtFhirR5ResourceNotificationImplCopyWith(
          _$AtFhirR5ResourceNotificationImpl value,
          $Res Function(_$AtFhirR5ResourceNotificationImpl) then) =
      __$$AtFhirR5ResourceNotificationImplCopyWithImpl<$Res>;
  @useResult
  $Res call({r5.Resource value});
}

/// @nodoc
class __$$AtFhirR5ResourceNotificationImplCopyWithImpl<$Res>
    extends _$AtFhirNotificationCopyWithImpl<$Res,
        _$AtFhirR5ResourceNotificationImpl>
    implements _$$AtFhirR5ResourceNotificationImplCopyWith<$Res> {
  __$$AtFhirR5ResourceNotificationImplCopyWithImpl(
      _$AtFhirR5ResourceNotificationImpl _value,
      $Res Function(_$AtFhirR5ResourceNotificationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$AtFhirR5ResourceNotificationImpl(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as r5.Resource,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AtFhirR5ResourceNotificationImpl extends AtFhirR5ResourceNotification {
  const _$AtFhirR5ResourceNotificationImpl(this.value, {final String? $type})
      : $type = $type ?? 'r5Resource',
        super._();

  factory _$AtFhirR5ResourceNotificationImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$AtFhirR5ResourceNotificationImplFromJson(json);

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
            other is _$AtFhirR5ResourceNotificationImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AtFhirR5ResourceNotificationImplCopyWith<
          _$AtFhirR5ResourceNotificationImpl>
      get copyWith => __$$AtFhirR5ResourceNotificationImplCopyWithImpl<
          _$AtFhirR5ResourceNotificationImpl>(this, _$identity);

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
    required TResult Function(AtFhirDstu2ResourceNotification value)
        dstu2Resource,
    required TResult Function(AtFhirStu3ResourceNotification value)
        stu3Resource,
    required TResult Function(AtFhirR4ResourceNotification value) r4Resource,
    required TResult Function(AtFhirR5ResourceNotification value) r5Resource,
    required TResult Function(AtFhirDstu2RequestNotification value)
        dstu2Request,
    required TResult Function(AtFhirStu3RequestNotification value) stu3Request,
    required TResult Function(AtFhirR4RequestNotification value) r4Request,
    required TResult Function(AtFhirR5RequestNotification value) r5Request,
  }) {
    return r5Resource(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AtFhirDstu2ResourceNotification value)? dstu2Resource,
    TResult? Function(AtFhirStu3ResourceNotification value)? stu3Resource,
    TResult? Function(AtFhirR4ResourceNotification value)? r4Resource,
    TResult? Function(AtFhirR5ResourceNotification value)? r5Resource,
    TResult? Function(AtFhirDstu2RequestNotification value)? dstu2Request,
    TResult? Function(AtFhirStu3RequestNotification value)? stu3Request,
    TResult? Function(AtFhirR4RequestNotification value)? r4Request,
    TResult? Function(AtFhirR5RequestNotification value)? r5Request,
  }) {
    return r5Resource?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AtFhirDstu2ResourceNotification value)? dstu2Resource,
    TResult Function(AtFhirStu3ResourceNotification value)? stu3Resource,
    TResult Function(AtFhirR4ResourceNotification value)? r4Resource,
    TResult Function(AtFhirR5ResourceNotification value)? r5Resource,
    TResult Function(AtFhirDstu2RequestNotification value)? dstu2Request,
    TResult Function(AtFhirStu3RequestNotification value)? stu3Request,
    TResult Function(AtFhirR4RequestNotification value)? r4Request,
    TResult Function(AtFhirR5RequestNotification value)? r5Request,
    required TResult orElse(),
  }) {
    if (r5Resource != null) {
      return r5Resource(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$AtFhirR5ResourceNotificationImplToJson(
      this,
    );
  }
}

abstract class AtFhirR5ResourceNotification extends AtFhirNotification {
  const factory AtFhirR5ResourceNotification(final r5.Resource value) =
      _$AtFhirR5ResourceNotificationImpl;
  const AtFhirR5ResourceNotification._() : super._();

  factory AtFhirR5ResourceNotification.fromJson(Map<String, dynamic> json) =
      _$AtFhirR5ResourceNotificationImpl.fromJson;

  @override
  r5.Resource get value;
  @JsonKey(ignore: true)
  _$$AtFhirR5ResourceNotificationImplCopyWith<
          _$AtFhirR5ResourceNotificationImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AtFhirDstu2RequestNotificationImplCopyWith<$Res> {
  factory _$$AtFhirDstu2RequestNotificationImplCopyWith(
          _$AtFhirDstu2RequestNotificationImpl value,
          $Res Function(_$AtFhirDstu2RequestNotificationImpl) then) =
      __$$AtFhirDstu2RequestNotificationImplCopyWithImpl<$Res>;
  @useResult
  $Res call({dstu2_request.FhirRequest value});

  dstu2_request.$FhirRequestCopyWith<$Res> get value;
}

/// @nodoc
class __$$AtFhirDstu2RequestNotificationImplCopyWithImpl<$Res>
    extends _$AtFhirNotificationCopyWithImpl<$Res,
        _$AtFhirDstu2RequestNotificationImpl>
    implements _$$AtFhirDstu2RequestNotificationImplCopyWith<$Res> {
  __$$AtFhirDstu2RequestNotificationImplCopyWithImpl(
      _$AtFhirDstu2RequestNotificationImpl _value,
      $Res Function(_$AtFhirDstu2RequestNotificationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$AtFhirDstu2RequestNotificationImpl(
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
class _$AtFhirDstu2RequestNotificationImpl
    extends AtFhirDstu2RequestNotification {
  const _$AtFhirDstu2RequestNotificationImpl(this.value, {final String? $type})
      : $type = $type ?? 'dstu2Request',
        super._();

  factory _$AtFhirDstu2RequestNotificationImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$AtFhirDstu2RequestNotificationImplFromJson(json);

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
            other is _$AtFhirDstu2RequestNotificationImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AtFhirDstu2RequestNotificationImplCopyWith<
          _$AtFhirDstu2RequestNotificationImpl>
      get copyWith => __$$AtFhirDstu2RequestNotificationImplCopyWithImpl<
          _$AtFhirDstu2RequestNotificationImpl>(this, _$identity);

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
    required TResult Function(AtFhirDstu2ResourceNotification value)
        dstu2Resource,
    required TResult Function(AtFhirStu3ResourceNotification value)
        stu3Resource,
    required TResult Function(AtFhirR4ResourceNotification value) r4Resource,
    required TResult Function(AtFhirR5ResourceNotification value) r5Resource,
    required TResult Function(AtFhirDstu2RequestNotification value)
        dstu2Request,
    required TResult Function(AtFhirStu3RequestNotification value) stu3Request,
    required TResult Function(AtFhirR4RequestNotification value) r4Request,
    required TResult Function(AtFhirR5RequestNotification value) r5Request,
  }) {
    return dstu2Request(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AtFhirDstu2ResourceNotification value)? dstu2Resource,
    TResult? Function(AtFhirStu3ResourceNotification value)? stu3Resource,
    TResult? Function(AtFhirR4ResourceNotification value)? r4Resource,
    TResult? Function(AtFhirR5ResourceNotification value)? r5Resource,
    TResult? Function(AtFhirDstu2RequestNotification value)? dstu2Request,
    TResult? Function(AtFhirStu3RequestNotification value)? stu3Request,
    TResult? Function(AtFhirR4RequestNotification value)? r4Request,
    TResult? Function(AtFhirR5RequestNotification value)? r5Request,
  }) {
    return dstu2Request?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AtFhirDstu2ResourceNotification value)? dstu2Resource,
    TResult Function(AtFhirStu3ResourceNotification value)? stu3Resource,
    TResult Function(AtFhirR4ResourceNotification value)? r4Resource,
    TResult Function(AtFhirR5ResourceNotification value)? r5Resource,
    TResult Function(AtFhirDstu2RequestNotification value)? dstu2Request,
    TResult Function(AtFhirStu3RequestNotification value)? stu3Request,
    TResult Function(AtFhirR4RequestNotification value)? r4Request,
    TResult Function(AtFhirR5RequestNotification value)? r5Request,
    required TResult orElse(),
  }) {
    if (dstu2Request != null) {
      return dstu2Request(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$AtFhirDstu2RequestNotificationImplToJson(
      this,
    );
  }
}

abstract class AtFhirDstu2RequestNotification extends AtFhirNotification {
  const factory AtFhirDstu2RequestNotification(
          final dstu2_request.FhirRequest value) =
      _$AtFhirDstu2RequestNotificationImpl;
  const AtFhirDstu2RequestNotification._() : super._();

  factory AtFhirDstu2RequestNotification.fromJson(Map<String, dynamic> json) =
      _$AtFhirDstu2RequestNotificationImpl.fromJson;

  @override
  dstu2_request.FhirRequest get value;
  @JsonKey(ignore: true)
  _$$AtFhirDstu2RequestNotificationImplCopyWith<
          _$AtFhirDstu2RequestNotificationImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AtFhirStu3RequestNotificationImplCopyWith<$Res> {
  factory _$$AtFhirStu3RequestNotificationImplCopyWith(
          _$AtFhirStu3RequestNotificationImpl value,
          $Res Function(_$AtFhirStu3RequestNotificationImpl) then) =
      __$$AtFhirStu3RequestNotificationImplCopyWithImpl<$Res>;
  @useResult
  $Res call({stu3_request.FhirRequest value});

  stu3_request.$FhirRequestCopyWith<$Res> get value;
}

/// @nodoc
class __$$AtFhirStu3RequestNotificationImplCopyWithImpl<$Res>
    extends _$AtFhirNotificationCopyWithImpl<$Res,
        _$AtFhirStu3RequestNotificationImpl>
    implements _$$AtFhirStu3RequestNotificationImplCopyWith<$Res> {
  __$$AtFhirStu3RequestNotificationImplCopyWithImpl(
      _$AtFhirStu3RequestNotificationImpl _value,
      $Res Function(_$AtFhirStu3RequestNotificationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$AtFhirStu3RequestNotificationImpl(
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
class _$AtFhirStu3RequestNotificationImpl
    extends AtFhirStu3RequestNotification {
  const _$AtFhirStu3RequestNotificationImpl(this.value, {final String? $type})
      : $type = $type ?? 'stu3Request',
        super._();

  factory _$AtFhirStu3RequestNotificationImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$AtFhirStu3RequestNotificationImplFromJson(json);

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
            other is _$AtFhirStu3RequestNotificationImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AtFhirStu3RequestNotificationImplCopyWith<
          _$AtFhirStu3RequestNotificationImpl>
      get copyWith => __$$AtFhirStu3RequestNotificationImplCopyWithImpl<
          _$AtFhirStu3RequestNotificationImpl>(this, _$identity);

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
    required TResult Function(AtFhirDstu2ResourceNotification value)
        dstu2Resource,
    required TResult Function(AtFhirStu3ResourceNotification value)
        stu3Resource,
    required TResult Function(AtFhirR4ResourceNotification value) r4Resource,
    required TResult Function(AtFhirR5ResourceNotification value) r5Resource,
    required TResult Function(AtFhirDstu2RequestNotification value)
        dstu2Request,
    required TResult Function(AtFhirStu3RequestNotification value) stu3Request,
    required TResult Function(AtFhirR4RequestNotification value) r4Request,
    required TResult Function(AtFhirR5RequestNotification value) r5Request,
  }) {
    return stu3Request(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AtFhirDstu2ResourceNotification value)? dstu2Resource,
    TResult? Function(AtFhirStu3ResourceNotification value)? stu3Resource,
    TResult? Function(AtFhirR4ResourceNotification value)? r4Resource,
    TResult? Function(AtFhirR5ResourceNotification value)? r5Resource,
    TResult? Function(AtFhirDstu2RequestNotification value)? dstu2Request,
    TResult? Function(AtFhirStu3RequestNotification value)? stu3Request,
    TResult? Function(AtFhirR4RequestNotification value)? r4Request,
    TResult? Function(AtFhirR5RequestNotification value)? r5Request,
  }) {
    return stu3Request?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AtFhirDstu2ResourceNotification value)? dstu2Resource,
    TResult Function(AtFhirStu3ResourceNotification value)? stu3Resource,
    TResult Function(AtFhirR4ResourceNotification value)? r4Resource,
    TResult Function(AtFhirR5ResourceNotification value)? r5Resource,
    TResult Function(AtFhirDstu2RequestNotification value)? dstu2Request,
    TResult Function(AtFhirStu3RequestNotification value)? stu3Request,
    TResult Function(AtFhirR4RequestNotification value)? r4Request,
    TResult Function(AtFhirR5RequestNotification value)? r5Request,
    required TResult orElse(),
  }) {
    if (stu3Request != null) {
      return stu3Request(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$AtFhirStu3RequestNotificationImplToJson(
      this,
    );
  }
}

abstract class AtFhirStu3RequestNotification extends AtFhirNotification {
  const factory AtFhirStu3RequestNotification(
          final stu3_request.FhirRequest value) =
      _$AtFhirStu3RequestNotificationImpl;
  const AtFhirStu3RequestNotification._() : super._();

  factory AtFhirStu3RequestNotification.fromJson(Map<String, dynamic> json) =
      _$AtFhirStu3RequestNotificationImpl.fromJson;

  @override
  stu3_request.FhirRequest get value;
  @JsonKey(ignore: true)
  _$$AtFhirStu3RequestNotificationImplCopyWith<
          _$AtFhirStu3RequestNotificationImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AtFhirR4RequestNotificationImplCopyWith<$Res> {
  factory _$$AtFhirR4RequestNotificationImplCopyWith(
          _$AtFhirR4RequestNotificationImpl value,
          $Res Function(_$AtFhirR4RequestNotificationImpl) then) =
      __$$AtFhirR4RequestNotificationImplCopyWithImpl<$Res>;
  @useResult
  $Res call({r4_request.FhirRequest value});

  r4_request.$FhirRequestCopyWith<$Res> get value;
}

/// @nodoc
class __$$AtFhirR4RequestNotificationImplCopyWithImpl<$Res>
    extends _$AtFhirNotificationCopyWithImpl<$Res,
        _$AtFhirR4RequestNotificationImpl>
    implements _$$AtFhirR4RequestNotificationImplCopyWith<$Res> {
  __$$AtFhirR4RequestNotificationImplCopyWithImpl(
      _$AtFhirR4RequestNotificationImpl _value,
      $Res Function(_$AtFhirR4RequestNotificationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$AtFhirR4RequestNotificationImpl(
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
class _$AtFhirR4RequestNotificationImpl extends AtFhirR4RequestNotification {
  const _$AtFhirR4RequestNotificationImpl(this.value, {final String? $type})
      : $type = $type ?? 'r4Request',
        super._();

  factory _$AtFhirR4RequestNotificationImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$AtFhirR4RequestNotificationImplFromJson(json);

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
            other is _$AtFhirR4RequestNotificationImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AtFhirR4RequestNotificationImplCopyWith<_$AtFhirR4RequestNotificationImpl>
      get copyWith => __$$AtFhirR4RequestNotificationImplCopyWithImpl<
          _$AtFhirR4RequestNotificationImpl>(this, _$identity);

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
    required TResult Function(AtFhirDstu2ResourceNotification value)
        dstu2Resource,
    required TResult Function(AtFhirStu3ResourceNotification value)
        stu3Resource,
    required TResult Function(AtFhirR4ResourceNotification value) r4Resource,
    required TResult Function(AtFhirR5ResourceNotification value) r5Resource,
    required TResult Function(AtFhirDstu2RequestNotification value)
        dstu2Request,
    required TResult Function(AtFhirStu3RequestNotification value) stu3Request,
    required TResult Function(AtFhirR4RequestNotification value) r4Request,
    required TResult Function(AtFhirR5RequestNotification value) r5Request,
  }) {
    return r4Request(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AtFhirDstu2ResourceNotification value)? dstu2Resource,
    TResult? Function(AtFhirStu3ResourceNotification value)? stu3Resource,
    TResult? Function(AtFhirR4ResourceNotification value)? r4Resource,
    TResult? Function(AtFhirR5ResourceNotification value)? r5Resource,
    TResult? Function(AtFhirDstu2RequestNotification value)? dstu2Request,
    TResult? Function(AtFhirStu3RequestNotification value)? stu3Request,
    TResult? Function(AtFhirR4RequestNotification value)? r4Request,
    TResult? Function(AtFhirR5RequestNotification value)? r5Request,
  }) {
    return r4Request?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AtFhirDstu2ResourceNotification value)? dstu2Resource,
    TResult Function(AtFhirStu3ResourceNotification value)? stu3Resource,
    TResult Function(AtFhirR4ResourceNotification value)? r4Resource,
    TResult Function(AtFhirR5ResourceNotification value)? r5Resource,
    TResult Function(AtFhirDstu2RequestNotification value)? dstu2Request,
    TResult Function(AtFhirStu3RequestNotification value)? stu3Request,
    TResult Function(AtFhirR4RequestNotification value)? r4Request,
    TResult Function(AtFhirR5RequestNotification value)? r5Request,
    required TResult orElse(),
  }) {
    if (r4Request != null) {
      return r4Request(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$AtFhirR4RequestNotificationImplToJson(
      this,
    );
  }
}

abstract class AtFhirR4RequestNotification extends AtFhirNotification {
  const factory AtFhirR4RequestNotification(
      final r4_request.FhirRequest value) = _$AtFhirR4RequestNotificationImpl;
  const AtFhirR4RequestNotification._() : super._();

  factory AtFhirR4RequestNotification.fromJson(Map<String, dynamic> json) =
      _$AtFhirR4RequestNotificationImpl.fromJson;

  @override
  r4_request.FhirRequest get value;
  @JsonKey(ignore: true)
  _$$AtFhirR4RequestNotificationImplCopyWith<_$AtFhirR4RequestNotificationImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AtFhirR5RequestNotificationImplCopyWith<$Res> {
  factory _$$AtFhirR5RequestNotificationImplCopyWith(
          _$AtFhirR5RequestNotificationImpl value,
          $Res Function(_$AtFhirR5RequestNotificationImpl) then) =
      __$$AtFhirR5RequestNotificationImplCopyWithImpl<$Res>;
  @useResult
  $Res call({r5_request.FhirRequest value});

  r5_request.$FhirRequestCopyWith<$Res> get value;
}

/// @nodoc
class __$$AtFhirR5RequestNotificationImplCopyWithImpl<$Res>
    extends _$AtFhirNotificationCopyWithImpl<$Res,
        _$AtFhirR5RequestNotificationImpl>
    implements _$$AtFhirR5RequestNotificationImplCopyWith<$Res> {
  __$$AtFhirR5RequestNotificationImplCopyWithImpl(
      _$AtFhirR5RequestNotificationImpl _value,
      $Res Function(_$AtFhirR5RequestNotificationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$AtFhirR5RequestNotificationImpl(
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
class _$AtFhirR5RequestNotificationImpl extends AtFhirR5RequestNotification {
  const _$AtFhirR5RequestNotificationImpl(this.value, {final String? $type})
      : $type = $type ?? 'r5Request',
        super._();

  factory _$AtFhirR5RequestNotificationImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$AtFhirR5RequestNotificationImplFromJson(json);

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
            other is _$AtFhirR5RequestNotificationImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AtFhirR5RequestNotificationImplCopyWith<_$AtFhirR5RequestNotificationImpl>
      get copyWith => __$$AtFhirR5RequestNotificationImplCopyWithImpl<
          _$AtFhirR5RequestNotificationImpl>(this, _$identity);

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
    required TResult Function(AtFhirDstu2ResourceNotification value)
        dstu2Resource,
    required TResult Function(AtFhirStu3ResourceNotification value)
        stu3Resource,
    required TResult Function(AtFhirR4ResourceNotification value) r4Resource,
    required TResult Function(AtFhirR5ResourceNotification value) r5Resource,
    required TResult Function(AtFhirDstu2RequestNotification value)
        dstu2Request,
    required TResult Function(AtFhirStu3RequestNotification value) stu3Request,
    required TResult Function(AtFhirR4RequestNotification value) r4Request,
    required TResult Function(AtFhirR5RequestNotification value) r5Request,
  }) {
    return r5Request(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AtFhirDstu2ResourceNotification value)? dstu2Resource,
    TResult? Function(AtFhirStu3ResourceNotification value)? stu3Resource,
    TResult? Function(AtFhirR4ResourceNotification value)? r4Resource,
    TResult? Function(AtFhirR5ResourceNotification value)? r5Resource,
    TResult? Function(AtFhirDstu2RequestNotification value)? dstu2Request,
    TResult? Function(AtFhirStu3RequestNotification value)? stu3Request,
    TResult? Function(AtFhirR4RequestNotification value)? r4Request,
    TResult? Function(AtFhirR5RequestNotification value)? r5Request,
  }) {
    return r5Request?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AtFhirDstu2ResourceNotification value)? dstu2Resource,
    TResult Function(AtFhirStu3ResourceNotification value)? stu3Resource,
    TResult Function(AtFhirR4ResourceNotification value)? r4Resource,
    TResult Function(AtFhirR5ResourceNotification value)? r5Resource,
    TResult Function(AtFhirDstu2RequestNotification value)? dstu2Request,
    TResult Function(AtFhirStu3RequestNotification value)? stu3Request,
    TResult Function(AtFhirR4RequestNotification value)? r4Request,
    TResult Function(AtFhirR5RequestNotification value)? r5Request,
    required TResult orElse(),
  }) {
    if (r5Request != null) {
      return r5Request(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$AtFhirR5RequestNotificationImplToJson(
      this,
    );
  }
}

abstract class AtFhirR5RequestNotification extends AtFhirNotification {
  const factory AtFhirR5RequestNotification(
      final r5_request.FhirRequest value) = _$AtFhirR5RequestNotificationImpl;
  const AtFhirR5RequestNotification._() : super._();

  factory AtFhirR5RequestNotification.fromJson(Map<String, dynamic> json) =
      _$AtFhirR5RequestNotificationImpl.fromJson;

  @override
  r5_request.FhirRequest get value;
  @JsonKey(ignore: true)
  _$$AtFhirR5RequestNotificationImplCopyWith<_$AtFhirR5RequestNotificationImpl>
      get copyWith => throw _privateConstructorUsedError;
}
