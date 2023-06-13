import 'package:at_client/at_client.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'success_or_error.freezed.dart';

/// A class that returns either a success object, or a failure object with a
/// String message (I feel like I often need this type of return value)
@freezed
class SuccessOrError with _$SuccessOrError {
  const factory SuccessOrError.success() = SuccessNotError;
  const factory SuccessOrError.successString(String value) = SuccessString;
  const factory SuccessOrError.successBool(bool value) = SuccessBool;
  const factory SuccessOrError.failureMessage(String exception) =
      FailureMessageError;
  const factory SuccessOrError.exception(
      Object exception, StackTrace stackTrace) = ExceptionError;
  const factory SuccessOrError.atSign(
      AtException exception, StackTrace stackTrace) = AtError;
}
