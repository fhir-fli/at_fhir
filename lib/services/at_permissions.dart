import 'dart:convert';

import 'package:at_fhir/services/atsign_interaction.dart';

import '../models/models.dart';

// TODO(Dokotela): needs more work to decide how this works. Placeholder that
// returns an appropriate value for now
Future<SuccessOrError> checkPermission({
  required String atSign,
}) async {
  return SuccessOrError.successBool(true);
}

/// Requests all of the atSigns associated with that PermissionGroup, adds the
/// new atSign to that list, and updates the list
Future<SuccessOrError> addAtSignToPermissionGroup({
  required String atSign,
  required String permissionGroup,
  String? nameSpace,
}) async {
  final atSignsString = await atSignGet(
    atKey: 'fhir.permission.$permissionGroup',
    nameSpace: nameSpace,
  );
  if (atSignsString is SuccessString) {
    final dynamic atSigns = jsonDecode(atSignsString.value);
    if (atSigns is List<String>) {
      atSigns.add(atSign);
      return await atSignPut(
        atKey: 'fhir.permission.$permissionGroup',
        value: jsonEncode(atSigns),
        nameSpace: nameSpace,
      );
    } else {
      // TODO(Dokotela): handle initialization of permission groups
      return SuccessOrError.failureMessage(
          'Unable to get list of permission groups.');
    }
  } else
    return atSignsString;
}

/// Requests all of the atSigns associated with that PermissionGroup, adds the
/// new atSign to that list, and updates the list
Future<SuccessOrError> removeAtSignFromPermissionGroup({
  required String atSign,
  required String permissionGroup,
  String? nameSpace,
}) async {
  final atSignsString = await atSignGet(
    atKey: 'fhir.permission.$permissionGroup',
    nameSpace: nameSpace,
  );
  if (atSignsString is SuccessString) {
    final dynamic atSigns = jsonDecode(atSignsString.value);
    if (atSigns is List<String>) {
      atSigns.remove(atSign);
      return await atSignPut(
        atKey: 'fhir.permission.$permissionGroup',
        value: jsonEncode(atSigns),
        nameSpace: nameSpace,
      );
    } else {
      // TODO(Dokotela): handle initialization of permission groups
      return SuccessOrError.failureMessage(
          'Unable to get list of permission groups.');
    }
  } else
    return atSignsString;
}

/// Creates a new permission group. First tries to look for the list of permission
/// groups that is already stored. It decodes this list, adds the new value
/// to the list, encodes it, and stores it back at the same atKey
Future<SuccessOrError> createPermissionGroup({
  required String permissionGroup,
  String? nameSpace,
}) async {
  final stringOfPermissionGroups =
      await atSignGet(atKey: 'fhir.permissiongroups', nameSpace: nameSpace);
  if (stringOfPermissionGroups is SuccessString) {
    final dynamic permissionGroups = jsonDecode(stringOfPermissionGroups.value);
    if (permissionGroups is List<String>) {
      permissionGroups.add(permissionGroup);
      return await atSignPut(
        atKey: 'fhir.permissiongroups',
        value: jsonEncode(permissionGroups),
        nameSpace: nameSpace,
      );
    } else {
      // TODO(Dokotela): handle initialization of permission groups
      return SuccessOrError.failureMessage(
          'Returned value was not a list of permission groups.');
    }
  } else
    return stringOfPermissionGroups;
}

/// Removes a new permission group. First tries to look for the list of permission
/// groups that is already stored. It decodes this list, removes the new value
/// from the list, encodes it, and stores it back at the same atKey
Future<SuccessOrError> removePermissionGroup({
  required String permissionGroup,
  String? nameSpace,
}) async {
  final stringOfPermissionGroups = await atSignGet(
    atKey: 'fhir.permissiongroups',
    nameSpace: nameSpace,
  );
  if (stringOfPermissionGroups is SuccessString) {
    final dynamic permissionGroups = jsonDecode(stringOfPermissionGroups.value);
    if (permissionGroups is List<String>) {
      return await atSignPut(
        atKey: 'fhir.permissiongroups',
        value: jsonEncode(permissionGroups),
        nameSpace: nameSpace,
      );
    } else {
      // TODO(Dokotela): handle initialization of permission groups
      return SuccessOrError.failureMessage(
          'Returned value was not a list of permission groups.');
    }
  } else
    return stringOfPermissionGroups;
}

/// Renames a permission group. It first finds the value (list of atsigns) that
/// are included in that permissionGroup, it then copies them over to the new
/// permissionGroupName, and finally updates the fhir.permissiongroups value
Future<SuccessOrError> renamePermissionGroup({
  required String oldPermissionGroupName,
  required String newPermissionGroupName,
  String? nameSpace,
}) async {
  final permissionGroupString = await atSignGet(
    atKey: 'fhir.permission.$oldPermissionGroupName',
    nameSpace: nameSpace,
  );

  if (permissionGroupString is SuccessString) {
    final copied = await atSignPut(
      atKey: 'fhir.permission.$newPermissionGroupName',
      value: permissionGroupString.value,
      nameSpace: nameSpace,
    );
    if (copied is SuccessNotError) {
      final deleted =
          await atSignDelete(atKey: 'fhir.permission.$oldPermissionGroupName');
      if (deleted is SuccessNotError) {
        final stringOfPermissionGroups = await atSignGet(
          atKey: 'fhir.permissiongroups',
          nameSpace: nameSpace,
        );
        if (stringOfPermissionGroups is SuccessString) {
          final dynamic permissionGroups =
              jsonDecode(stringOfPermissionGroups.value);
          if (permissionGroups is List<String>) {
            permissionGroups.remove(oldPermissionGroupName);
            permissionGroups.add(newPermissionGroupName);
            return atSignPut(
              atKey: 'fhir.permissiongroups',
              value: jsonEncode(permissionGroups),
              nameSpace: nameSpace,
            );
          } else {
            // TODO(Dokotela): handle initialization of permission groups
            return SuccessOrError.failureMessage(
                'Returned value was not a list of permission groups.');
          }
        } else {
          return stringOfPermissionGroups;
        }
      } else {
        return deleted;
      }
    } else {
      return copied;
    }
  } else {
    return permissionGroupString;
  }
}
