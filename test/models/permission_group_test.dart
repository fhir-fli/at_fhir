import '../../lib/models/permission_group.dart';
import 'package:test/test.dart';

void permissionGroupTest() {
  group('PermissionGroup', () {
    test('physician should be equal to PermissionGroup.physician', () {
      expect(PermissionGroup.physician, equals(PermissionGroup.physician));
    });

    test('nurse should be equal to PermissionGroup.nurse', () {
      expect(PermissionGroup.nurse, equals(PermissionGroup.nurse));
    });

    test('toString() should return the correct string', () {
      expect(PermissionGroup.physician.toString(), equals('physician'));
      expect(PermissionGroup.nurse.toString(), equals('nurse'));
    });

    test('toKey() should return the correct key', () {
      expect(PermissionGroup.physician.toKey(),
          equals('fhir.permission.physician'));
      expect(PermissionGroup.nurse.toKey(), equals('fhir.permission.nurse'));
    });
  });
}
