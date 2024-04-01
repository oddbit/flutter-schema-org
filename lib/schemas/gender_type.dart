library schema_org;

/// An enumeration of genders.
/// See https://schema.org/GenderType
enum SchemaGenderType {
  /// The female gender.
  female('https://schema.org/GenderType'),

  /// The male gender.
  male('https://schema.org/GenderType');

  /// Constructor for [SchemaGenderType]
  const SchemaGenderType(this.value);

  /// Enum value as a string
  final String value;

  /// Serialize [SchemaGenderType] to JSON-LD
  String toJsonLd() => value;
}
