import 'package:schema_org/schemas/energy_efficiency_enumeration.dart';

/// Used to indicate whether a product is EnergyStar certified.
/// See https://schema.org/EnergyStarEnergyEfficiencyEnumeration
enum SchemaEnergyStarEnergyEfficiencyEnumeration
    implements SchemaEnergyEfficiencyEnumeration {
  /// Represents EnergyStar certification.
  energyStarCertified(
      'https://schema.org/EnergyStarEnergyEfficiencyEnumeration');

  /// Constructor for [SchemaEnergyStarEnergyEfficiencyEnumeration]
  const SchemaEnergyStarEnergyEfficiencyEnumeration(this.value);

  /// Enum value as a string
  final String value;

  /// Serialize [SchemaEnergyStarEnergyEfficiencyEnumeration] to JSON-LD
  String toJsonLd() => value;
}
