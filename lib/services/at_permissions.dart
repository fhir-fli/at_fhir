import 'package:at_client/at_client.dart';

import '../models/models.dart';

/// Updates the permissions entry for the permissions object passed
Future<SuccessOrErrorMessage> updatePermissions(Permissions permissions) async {
  AtClient atClient = AtClientManager.getInstance().atClient;
  AtKey atKey = AtKey();
  atKey
    ..key = permissions.atKey
    ..namespace = 'fhir';
  final result = await atClient.put(atKey, permissions.atSigns);
  if (result) {
    return const SuccessOrErrorMessage.success();
  } else {
    return const SuccessOrErrorMessage.failure('Failure!');
  }
}

/// Returns a Permissions object that contains all of the atSigns included
/// in that particular PermissionGroup
Future<Permissions> getPermissions(String permissionGroup) async {
  AtClient atClient = AtClientManager.getInstance().atClient;

  AtKey atKey = AtKey()..key = permissionGroup;
  final AtValue atValue = await atClient.get(atKey);
  if (atValue.value is! List<String>) {
    return Permissions(permissionGroup: permissionGroup, atSigns: []);
  } else {
    return Permissions(
        permissionGroup: permissionGroup, atSigns: atValue.value);
  }
}
