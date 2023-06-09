import 'package:freezed_annotation/freezed_annotation.dart';

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
