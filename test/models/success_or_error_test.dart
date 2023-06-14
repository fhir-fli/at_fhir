import 'package:at_fhir/models/success_or_error/success_or_error.dart';
import 'package:at_client/at_client.dart';
import 'package:test/test.dart';

void successOrErrorTest() {
  group('SuccessOrError tests', () {
    test('success() should create SuccessNotError object', () {
      final result = SuccessOrError.success();
      expect(result, isA<SuccessNotError>());
    });

    test('successString() should create SuccessString object', () {
      final value = 'Hello';
      final result = SuccessOrError.successString(value);
      expect(result, isA<SuccessString>());
      expect((result as SuccessString).value, value);
    });

    test('successBool() should create SuccessBool object', () {
      final value = true;
      final result = SuccessOrError.successBool(value);
      expect(result, isA<SuccessBool>());
      expect((result as SuccessBool).value, value);
    });

    test(
        'successNotificationResult() should create SuccessNotificationResult object',
        () {
      final notificationResult = NotificationResult();
      final result =
          SuccessOrError.successNotificationResult(notificationResult);
      expect(result, isA<SuccessNotificationResult>());
      expect((result as SuccessNotificationResult).value, notificationResult);
    });

    test('failureMessage() should create FailureMessageError object', () {
      final exception = 'Error occurred';
      final result = SuccessOrError.failureMessage(exception);
      expect(result, isA<FailureMessageError>());
      expect((result as FailureMessageError).exception, exception);
    });

    test('exception() should create ExceptionError object', () {
      final exception = Exception('An exception occurred');
      final stackTrace = StackTrace.current;
      final result = SuccessOrError.exception(exception, stackTrace);
      expect(result, isA<ExceptionError>());
      expect((result as ExceptionError).exception, exception);
      expect(result.stackTrace, stackTrace);
    });

    test('atSign() should create AtError object', () {
      final exception = AtException('AtError occurred');
      final stackTrace = StackTrace.current;
      final result = SuccessOrError.atSign(exception, stackTrace);
      expect(result, isA<AtError>());
      expect((result as AtError).exception, exception);
      expect(result.stackTrace, stackTrace);
    });
  });
}
