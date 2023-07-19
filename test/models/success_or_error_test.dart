import 'package:at_client/at_client.dart';
import 'package:at_fhir/at_fhir.dart';
import 'package:test/test.dart';

void successOrErrorTest() {
  group('SuccessOrError tests', () {
    test('should create a SuccessNotError object', () {
      const SuccessOrError result = SuccessOrError.success();
      expect(result, isA<SuccessNotError>());
    });

    test('should create a SuccessString object', () {
      const SuccessOrError result = SuccessOrError.successString('value');
      expect(result, isA<SuccessString>());
      expect((result as SuccessString).value, 'value');
    });

    test('should create a SuccessBool object', () {
      const SuccessOrError result = SuccessOrError.successBool(true);
      expect(result, isA<SuccessBool>());
      expect((result as SuccessBool).value, true);
    });

    test('should create a SuccessNotificationResult object', () {
      final NotificationResult notificationResult = NotificationResult();
      final SuccessOrError result =
          SuccessOrError.successNotificationResult(notificationResult);
      expect(result, isA<SuccessNotificationResult>());
      expect((result as SuccessNotificationResult).value, notificationResult);
    });

    test('should create a FailureMessageError object', () {
      const SuccessOrError result = SuccessOrError.failureMessage('exception');
      expect(result, isA<FailureMessageError>());
      expect((result as FailureMessageError).exception, 'exception');
    });

    test('should create an ExceptionError object', () {
      final Exception exception = Exception('exception');
      final StackTrace stackTrace = StackTrace.current;
      final SuccessOrError result =
          SuccessOrError.exception(exception, stackTrace);
      expect(result, isA<ExceptionError>());
      expect((result as ExceptionError).exception, exception);
      expect(result.stackTrace, stackTrace);
    });

    test('should create an AtError object', () {
      final AtException atException = AtException('exception');
      final StackTrace stackTrace = StackTrace.current;
      final SuccessOrError result =
          SuccessOrError.atSign(atException, stackTrace);
      expect(result, isA<AtError>());
      expect((result as AtError).exception, atException);
      expect(result.stackTrace, stackTrace);
    });
  });
}
