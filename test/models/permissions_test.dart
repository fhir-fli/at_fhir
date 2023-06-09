import '../../lib/models/permission_group.dart';
import '../../lib/models/permissions/permissions.dart';
import 'package:test/test.dart';

void permissionsTest() {
  group('Permissions', () {
    test('creates Permissions object', () {
      final permissionGroup = PermissionGroup.nurse;
      final permissions = Permissions(permissionGroup: permissionGroup);

      expect(permissions, isA<Permissions>());
      expect(permissions.permissionGroup, equals(permissionGroup));
      expect(permissions.atSigns, isEmpty);
    });

    test('generates correct atKey', () {
      final permissionGroup = PermissionGroup.physician;
      final permissions = Permissions(permissionGroup: permissionGroup);

      expect(permissions.atKey, equals('fhir.permission.$permissionGroup'));
    });

    test('adds new atSign', () {
      final permissionGroup = PermissionGroup.physician;
      final permissions =
          Permissions(permissionGroup: permissionGroup, atSigns: ['@atsign1']);

      final updatedPermissions = permissions.addAtsign('@atsign2');

      expect(updatedPermissions.permissionGroup, equals(permissionGroup));
      expect(updatedPermissions.atSigns, equals(['@atsign1', '@atsign2']));
    });

    test('adds list of new atSigns', () {
      final permissionGroup = PermissionGroup.nurse;
      final permissions =
          Permissions(permissionGroup: permissionGroup, atSigns: ['@atsign1']);

      final updatedPermissions =
          permissions.addAtsignList(['@atsign2', '@atsign3']);

      expect(updatedPermissions.permissionGroup, equals(permissionGroup));
      expect(updatedPermissions.atSigns,
          equals(['@atsign1', '@atsign2', '@atsign3']));
    });
  });

  group('Permissions', () {
    test('can be created with a permission group and a list of atSigns', () {
      final permissionGroup = PermissionGroup.nurse;
      final atSigns = ['johndoe', 'janedoe'];

      final permissions = Permissions(
        permissionGroup: permissionGroup,
        atSigns: atSigns,
      );

      expect(permissions.permissionGroup, permissionGroup);
      expect(permissions.atSigns, atSigns);
    });

    test('can add a new atSign', () {
      final permissionGroup = PermissionGroup.physician;
      final atSigns = ['johndoe'];
      final newAtSign = 'janedoe';

      final permissions = Permissions(
        permissionGroup: permissionGroup,
        atSigns: atSigns,
      );

      final newPermissions = permissions.addAtsign(newAtSign);

      expect(newPermissions.permissionGroup, permissionGroup);
      expect(newPermissions.atSigns, ['johndoe', 'janedoe']);
    });

    test('can add a list of new atSigns', () {
      final permissionGroup = PermissionGroup.nurse;
      final atSigns = ['johndoe'];
      final newAtSigns = ['janedoe', 'peterdoe'];

      final permissions = Permissions(
        permissionGroup: permissionGroup,
        atSigns: atSigns,
      );

      final newPermissions = permissions.addAtsignList(newAtSigns);

      expect(newPermissions.permissionGroup, permissionGroup);
      expect(newPermissions.atSigns, ['johndoe', 'janedoe', 'peterdoe']);
    });
  });
}
