library schema_org;

/// An enumeration of several kinds of Map.
/// See https://schema.org/MapCategoryType
enum SchemaMapCategoryType {
  /// A parking map.
  parkingMap('https://schema.org/MapCategoryType'),

  /// A seating map.
  seatingMap('https://schema.org/MapCategoryType'),

  /// A transit map.
  transitMap('https://schema.org/MapCategoryType'),

  /// A venue map (e.g for malls, auditoriums, museums, etc.).
  venueMap('https://schema.org/MapCategoryType');

  /// Constructor for [SchemaMapCategoryType]
  const SchemaMapCategoryType(this.value);

  /// Enum value as a string
  final String value;

  /// Serialize [SchemaMapCategoryType] to JSON-LD
  String toJsonLd() => value;
}
