import 'package:freezed_annotation/freezed_annotation.dart';

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

/// Enumerated names of the permission groups
enum PermissionGroup {
  @JsonValue('physician')
  physician,
  @JsonValue('nurse')
  nurse;

  /// Want a simple toString() method for creating atSigns
  @override
  String toString() {
    super.toString();
    switch (this) {
      case PermissionGroup.physician:
        return 'physician';
      case PermissionGroup.nurse:
        return 'nurse';
    }
  }

  /// Creates the key to store the group permissions
  String toKey() {
    switch (this) {
      case PermissionGroup.physician:
        return 'fhir.permission.physician';
      case PermissionGroup.nurse:
        return 'fhir.permission.nurse';
    }
  }
}
