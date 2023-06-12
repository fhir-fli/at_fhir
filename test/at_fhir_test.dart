import 'models/models.dart';
import 'services/services.dart';

Future<void> main() async {
  print(
    '**************************************************************\n'
    '        Models\n'
    '**************************************************************',
  );
  atFhirObjectTest();
  atFhirVersionTest();
  permissionGroupTest();
  permissionsTest();
  successOrErrorMessageTest();
  print(
    '**************************************************************\n'
    '        Services\n'
    '**************************************************************',
  );
}
