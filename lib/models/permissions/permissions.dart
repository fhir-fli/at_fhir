import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

import '../permission_group.dart';

part 'permissions.freezed.dart';

/// Class to store Permissions for a group
@freezed
class Permissions with _$Permissions {
  /// Private constructor
  const Permissions._();

  /// Class to store Permissions for a group
  const factory Permissions({
    required PermissionGroup permissionGroup,
    @Default(<String>[]) List<String> atSigns,
  }) = _Permissions;

  /// Generates the key for storing the group at the atSign
  String get atKey => 'fhir.permission.$permissionGroup';

  /// Turns the list of atSigns to a single json String
  String get atSignsString => jsonEncode(atSigns);

  /// returns a Permissions with the new atSign added
  Permissions addAtsign(String newAtSign) => Permissions(
      permissionGroup: permissionGroup,
      atSigns: [if (atSigns.isNotEmpty) ...atSigns, newAtSign]);

  /// returns a Permissions with all of the new atSigns added
  Permissions addAtsignList(List<String> newAtSigns) =>
      Permissions(permissionGroup: permissionGroup, atSigns: [
        if (atSigns.isNotEmpty) ...atSigns,
        if (newAtSigns.isNotEmpty) ...newAtSigns,
      ]);
}
