/// Simplified versions of FHIR for generating atSigns
enum AtFhirVersion {
  dstu2,
  stu3,
  r4,
  r5;

  /// Want a simple toString() method for creating atSigns
  @override
  String toString() {
    super.toString();
    switch (this) {
      case AtFhirVersion.dstu2:
        return 'dstu2';
      case AtFhirVersion.stu3:
        return 'stu3';
      case AtFhirVersion.r4:
        return 'r4';
      case AtFhirVersion.r5:
        return 'r5';
    }
  }
}
