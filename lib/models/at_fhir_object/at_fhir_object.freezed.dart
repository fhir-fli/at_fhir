// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'at_fhir_object.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AtFhirObject _$AtFhirObjectFromJson(Map<String, dynamic> json) {
  return _AtFhirObject.fromJson(json);
}

/// @nodoc
mixin _$AtFhirObject {
  String get atKey => throw _privateConstructorUsedError;
  String get atFhirResource => throw _privateConstructorUsedError;
  bool get isOperationOutcome => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AtFhirObjectCopyWith<AtFhirObject> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AtFhirObjectCopyWith<$Res> {
  factory $AtFhirObjectCopyWith(
          AtFhirObject value, $Res Function(AtFhirObject) then) =
      _$AtFhirObjectCopyWithImpl<$Res, AtFhirObject>;
  @useResult
  $Res call({String atKey, String atFhirResource, bool isOperationOutcome});
}

/// @nodoc
class _$AtFhirObjectCopyWithImpl<$Res, $Val extends AtFhirObject>
    implements $AtFhirObjectCopyWith<$Res> {
  _$AtFhirObjectCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? atKey = null,
    Object? atFhirResource = null,
    Object? isOperationOutcome = null,
  }) {
    return _then(_value.copyWith(
      atKey: null == atKey
          ? _value.atKey
          : atKey // ignore: cast_nullable_to_non_nullable
              as String,
      atFhirResource: null == atFhirResource
          ? _value.atFhirResource
          : atFhirResource // ignore: cast_nullable_to_non_nullable
              as String,
      isOperationOutcome: null == isOperationOutcome
          ? _value.isOperationOutcome
          : isOperationOutcome // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AtFhirObjectCopyWith<$Res>
    implements $AtFhirObjectCopyWith<$Res> {
  factory _$$_AtFhirObjectCopyWith(
          _$_AtFhirObject value, $Res Function(_$_AtFhirObject) then) =
      __$$_AtFhirObjectCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String atKey, String atFhirResource, bool isOperationOutcome});
}

/// @nodoc
class __$$_AtFhirObjectCopyWithImpl<$Res>
    extends _$AtFhirObjectCopyWithImpl<$Res, _$_AtFhirObject>
    implements _$$_AtFhirObjectCopyWith<$Res> {
  __$$_AtFhirObjectCopyWithImpl(
      _$_AtFhirObject _value, $Res Function(_$_AtFhirObject) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? atKey = null,
    Object? atFhirResource = null,
    Object? isOperationOutcome = null,
  }) {
    return _then(_$_AtFhirObject(
      atKey: null == atKey
          ? _value.atKey
          : atKey // ignore: cast_nullable_to_non_nullable
              as String,
      atFhirResource: null == atFhirResource
          ? _value.atFhirResource
          : atFhirResource // ignore: cast_nullable_to_non_nullable
              as String,
      isOperationOutcome: null == isOperationOutcome
          ? _value.isOperationOutcome
          : isOperationOutcome // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AtFhirObject extends _AtFhirObject {
  const _$_AtFhirObject(
      {required this.atKey,
      required this.atFhirResource,
      required this.isOperationOutcome})
      : super._();

  factory _$_AtFhirObject.fromJson(Map<String, dynamic> json) =>
      _$$_AtFhirObjectFromJson(json);

  @override
  final String atKey;
  @override
  final String atFhirResource;
  @override
  final bool isOperationOutcome;

  @override
  String toString() {
    return 'AtFhirObject(atKey: $atKey, atFhirResource: $atFhirResource, isOperationOutcome: $isOperationOutcome)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AtFhirObject &&
            (identical(other.atKey, atKey) || other.atKey == atKey) &&
            (identical(other.atFhirResource, atFhirResource) ||
                other.atFhirResource == atFhirResource) &&
            (identical(other.isOperationOutcome, isOperationOutcome) ||
                other.isOperationOutcome == isOperationOutcome));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, atKey, atFhirResource, isOperationOutcome);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AtFhirObjectCopyWith<_$_AtFhirObject> get copyWith =>
      __$$_AtFhirObjectCopyWithImpl<_$_AtFhirObject>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AtFhirObjectToJson(
      this,
    );
  }
}

abstract class _AtFhirObject extends AtFhirObject {
  const factory _AtFhirObject(
      {required final String atKey,
      required final String atFhirResource,
      required final bool isOperationOutcome}) = _$_AtFhirObject;
  const _AtFhirObject._() : super._();

  factory _AtFhirObject.fromJson(Map<String, dynamic> json) =
      _$_AtFhirObject.fromJson;

  @override
  String get atKey;
  @override
  String get atFhirResource;
  @override
  bool get isOperationOutcome;
  @override
  @JsonKey(ignore: true)
  _$$_AtFhirObjectCopyWith<_$_AtFhirObject> get copyWith =>
      throw _privateConstructorUsedError;
}
