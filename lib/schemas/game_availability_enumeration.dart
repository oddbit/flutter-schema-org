library schema_org;

/// For a [[VideoGame]], such as used with a [[PlayGameAction]], an
/// enumeration of the kind of game availability offered.
/// See https://schema.org/GameAvailabilityEnumeration
enum SchemaGameAvailabilityEnumeration {
  /// Indicates demo game availability, i.e a somehow limited
  /// demonstration of the full game.
  demoGameAvailability('https://schema.org/GameAvailabilityEnumeration'),

  /// Indicates full game availability.
  fullGameAvailability('https://schema.org/GameAvailabilityEnumeration');

  /// Constructor for [SchemaGameAvailabilityEnumeration]
  const SchemaGameAvailabilityEnumeration(this.value);

  /// Enum value as a string
  final String value;

  /// Serialize [SchemaGameAvailabilityEnumeration] to JSON-LD
  String toJsonLd() => value;
}
