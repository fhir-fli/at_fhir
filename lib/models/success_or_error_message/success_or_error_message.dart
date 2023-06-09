import 'package:freezed_annotation/freezed_annotation.dart';

part 'success_or_error_message.freezed.dart';

/// A class that returns either a success object, or a failure object with a
/// String message (I feel like I often need this type of return value)
@freezed
class SuccessOrErrorMessage with _$SuccessOrErrorMessage {
  const factory SuccessOrErrorMessage.success() = SuccessNotError;
  const factory SuccessOrErrorMessage.failure(String message) = ErrorNotSuccess;
}
