// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'at_fhir_permissions.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Permissions {
  String get permissionGroup => throw _privateConstructorUsedError;
  List<String> get atSigns => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PermissionsCopyWith<Permissions> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PermissionsCopyWith<$Res> {
  factory $PermissionsCopyWith(
          Permissions value, $Res Function(Permissions) then) =
      _$PermissionsCopyWithImpl<$Res, Permissions>;
  @useResult
  $Res call({String permissionGroup, List<String> atSigns});
}

/// @nodoc
class _$PermissionsCopyWithImpl<$Res, $Val extends Permissions>
    implements $PermissionsCopyWith<$Res> {
  _$PermissionsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? permissionGroup = null,
    Object? atSigns = null,
  }) {
    return _then(_value.copyWith(
      permissionGroup: null == permissionGroup
          ? _value.permissionGroup
          : permissionGroup // ignore: cast_nullable_to_non_nullable
              as String,
      atSigns: null == atSigns
          ? _value.atSigns
          : atSigns // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PermissionsCopyWith<$Res>
    implements $PermissionsCopyWith<$Res> {
  factory _$$_PermissionsCopyWith(
          _$_Permissions value, $Res Function(_$_Permissions) then) =
      __$$_PermissionsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String permissionGroup, List<String> atSigns});
}

/// @nodoc
class __$$_PermissionsCopyWithImpl<$Res>
    extends _$PermissionsCopyWithImpl<$Res, _$_Permissions>
    implements _$$_PermissionsCopyWith<$Res> {
  __$$_PermissionsCopyWithImpl(
      _$_Permissions _value, $Res Function(_$_Permissions) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? permissionGroup = null,
    Object? atSigns = null,
  }) {
    return _then(_$_Permissions(
      permissionGroup: null == permissionGroup
          ? _value.permissionGroup
          : permissionGroup // ignore: cast_nullable_to_non_nullable
              as String,
      atSigns: null == atSigns
          ? _value._atSigns
          : atSigns // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$_Permissions extends _Permissions {
  const _$_Permissions(
      {required this.permissionGroup,
      final List<String> atSigns = const <String>[]})
      : _atSigns = atSigns,
        super._();

  @override
  final String permissionGroup;
  final List<String> _atSigns;
  @override
  @JsonKey()
  List<String> get atSigns {
    if (_atSigns is EqualUnmodifiableListView) return _atSigns;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_atSigns);
  }

  @override
  String toString() {
    return 'Permissions(permissionGroup: $permissionGroup, atSigns: $atSigns)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Permissions &&
            (identical(other.permissionGroup, permissionGroup) ||
                other.permissionGroup == permissionGroup) &&
            const DeepCollectionEquality().equals(other._atSigns, _atSigns));
  }

  @override
  int get hashCode => Object.hash(runtimeType, permissionGroup,
      const DeepCollectionEquality().hash(_atSigns));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PermissionsCopyWith<_$_Permissions> get copyWith =>
      __$$_PermissionsCopyWithImpl<_$_Permissions>(this, _$identity);
}

abstract class _Permissions extends Permissions {
  const factory _Permissions(
      {required final String permissionGroup,
      final List<String> atSigns}) = _$_Permissions;
  const _Permissions._() : super._();

  @override
  String get permissionGroup;
  @override
  List<String> get atSigns;
  @override
  @JsonKey(ignore: true)
  _$$_PermissionsCopyWith<_$_Permissions> get copyWith =>
      throw _privateConstructorUsedError;
}
