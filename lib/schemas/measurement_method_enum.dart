library schema_org;

/// Enumeration(s) for use with [[measurementMethod]].
/// See https://schema.org/MeasurementMethodEnum
enum SchemaMeasurementMethodEnum {
  /// An example [[MeasurementMethodEnum]] (to remove when real enums
  /// are added).
  exampleMeasurementMethodEnum('https://schema.org/MeasurementMethodEnum');

  /// Constructor for [SchemaMeasurementMethodEnum]
  const SchemaMeasurementMethodEnum(this.value);

  /// Enum value as a string
  final String value;

  /// Serialize [SchemaMeasurementMethodEnum] to JSON-LD
  String toJsonLd() => value;
}
