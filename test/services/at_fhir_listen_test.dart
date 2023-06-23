import 'package:at_client/at_client.dart';
import 'package:at_fhir/at_fhir.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:riverpod/riverpod.dart';
import 'package:test/test.dart';

void main() {
  final ProviderContainer container = ProviderContainer();
  final AsyncValue<AtFhirNotification> testListener =
      container.read(atFhirListenProvider);
}
