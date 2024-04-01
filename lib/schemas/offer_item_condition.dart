library schema_org;

/// A list of possible conditions for the item.
/// See https://schema.org/OfferItemCondition
enum SchemaOfferItemCondition {
  /// Indicates that the item is damaged.
  damagedCondition('https://schema.org/OfferItemCondition'),

  /// Indicates that the item is new.
  newCondition('https://schema.org/OfferItemCondition'),

  /// Indicates that the item is refurbished.
  refurbishedCondition('https://schema.org/OfferItemCondition'),

  /// Indicates that the item is used.
  usedCondition('https://schema.org/OfferItemCondition');

  /// Constructor for [SchemaOfferItemCondition]
  const SchemaOfferItemCondition(this.value);

  /// Enum value as a string
  final String value;

  /// Serialize [SchemaOfferItemCondition] to JSON-LD
  String toJsonLd() => value;
}
