// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'success_or_error_message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SuccessOrErrorMessage {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() success,
    required TResult Function(String message) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? success,
    TResult? Function(String message)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? success,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SuccessNotError value) success,
    required TResult Function(ErrorNotSuccess value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SuccessNotError value)? success,
    TResult? Function(ErrorNotSuccess value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SuccessNotError value)? success,
    TResult Function(ErrorNotSuccess value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SuccessOrErrorMessageCopyWith<$Res> {
  factory $SuccessOrErrorMessageCopyWith(SuccessOrErrorMessage value,
          $Res Function(SuccessOrErrorMessage) then) =
      _$SuccessOrErrorMessageCopyWithImpl<$Res, SuccessOrErrorMessage>;
}

/// @nodoc
class _$SuccessOrErrorMessageCopyWithImpl<$Res,
        $Val extends SuccessOrErrorMessage>
    implements $SuccessOrErrorMessageCopyWith<$Res> {
  _$SuccessOrErrorMessageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SuccessNotErrorCopyWith<$Res> {
  factory _$$SuccessNotErrorCopyWith(
          _$SuccessNotError value, $Res Function(_$SuccessNotError) then) =
      __$$SuccessNotErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SuccessNotErrorCopyWithImpl<$Res>
    extends _$SuccessOrErrorMessageCopyWithImpl<$Res, _$SuccessNotError>
    implements _$$SuccessNotErrorCopyWith<$Res> {
  __$$SuccessNotErrorCopyWithImpl(
      _$SuccessNotError _value, $Res Function(_$SuccessNotError) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SuccessNotError implements SuccessNotError {
  const _$SuccessNotError();

  @override
  String toString() {
    return 'SuccessOrErrorMessage.success()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SuccessNotError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() success,
    required TResult Function(String message) failure,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? success,
    TResult? Function(String message)? failure,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? success,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SuccessNotError value) success,
    required TResult Function(ErrorNotSuccess value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SuccessNotError value)? success,
    TResult? Function(ErrorNotSuccess value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SuccessNotError value)? success,
    TResult Function(ErrorNotSuccess value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class SuccessNotError implements SuccessOrErrorMessage {
  const factory SuccessNotError() = _$SuccessNotError;
}

/// @nodoc
abstract class _$$ErrorNotSuccessCopyWith<$Res> {
  factory _$$ErrorNotSuccessCopyWith(
          _$ErrorNotSuccess value, $Res Function(_$ErrorNotSuccess) then) =
      __$$ErrorNotSuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ErrorNotSuccessCopyWithImpl<$Res>
    extends _$SuccessOrErrorMessageCopyWithImpl<$Res, _$ErrorNotSuccess>
    implements _$$ErrorNotSuccessCopyWith<$Res> {
  __$$ErrorNotSuccessCopyWithImpl(
      _$ErrorNotSuccess _value, $Res Function(_$ErrorNotSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ErrorNotSuccess(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorNotSuccess implements ErrorNotSuccess {
  const _$ErrorNotSuccess(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'SuccessOrErrorMessage.failure(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorNotSuccess &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorNotSuccessCopyWith<_$ErrorNotSuccess> get copyWith =>
      __$$ErrorNotSuccessCopyWithImpl<_$ErrorNotSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() success,
    required TResult Function(String message) failure,
  }) {
    return failure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? success,
    TResult? Function(String message)? failure,
  }) {
    return failure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? success,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SuccessNotError value) success,
    required TResult Function(ErrorNotSuccess value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SuccessNotError value)? success,
    TResult? Function(ErrorNotSuccess value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SuccessNotError value)? success,
    TResult Function(ErrorNotSuccess value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class ErrorNotSuccess implements SuccessOrErrorMessage {
  const factory ErrorNotSuccess(final String message) = _$ErrorNotSuccess;

  String get message;
  @JsonKey(ignore: true)
  _$$ErrorNotSuccessCopyWith<_$ErrorNotSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}
