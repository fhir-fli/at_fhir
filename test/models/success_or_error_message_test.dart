import 'package:test/test.dart';
import '../../lib/models/success_or_error_message/success_or_error_message.dart';

void successOrErrorMessageTest() {
  group('SuccessOrErrorMessage', () {
    test('creates SuccessOrErrorMessage.success', () {
      final result = SuccessOrErrorMessage.success();

      expect(result, isA<SuccessOrErrorMessage>());
      expect(result, isA<SuccessNotError>());
    });

    test('creates SuccessOrErrorMessage.failure', () {
      final errorMessage = 'An error occurred';
      final result = SuccessOrErrorMessage.failure(errorMessage);

      expect(result, isA<SuccessOrErrorMessage>());
      expect(result, isA<ErrorNotSuccess>());
      expect((result as ErrorNotSuccess).message, equals(errorMessage));
    });

    test('success object should be equal', () {
      final success1 = SuccessOrErrorMessage.success();
      final success2 = SuccessOrErrorMessage.success();

      expect(success1, equals(success2));
      expect(success1.hashCode, equals(success2.hashCode));
    });

    test('failure objects with same message should be equal', () {
      final errorMessage = 'An error occurred';
      final failure1 = SuccessOrErrorMessage.failure(errorMessage);
      final failure2 = SuccessOrErrorMessage.failure(errorMessage);

      expect(failure1, equals(failure2));
      expect(failure1.hashCode, equals(failure2.hashCode));
    });

    test('failure objects with different messages should not be equal', () {
      final failure1 = SuccessOrErrorMessage.failure('Error 1');
      final failure2 = SuccessOrErrorMessage.failure('Error 2');

      expect(failure1, isNot(equals(failure2)));
    });
  });

  group('SuccessOrErrorMessage', () {
    test('can be created as a success', () {
      final success = SuccessOrErrorMessage.success();

      expect(success, isA<SuccessNotError>());
    });

    test('can be created as a failure', () {
      final failure =
          SuccessOrErrorMessage.failure('This is a failure message');

      expect(failure, isA<ErrorNotSuccess>());
      expect((failure as ErrorNotSuccess).message, 'This is a failure message');
    });
  });
}
