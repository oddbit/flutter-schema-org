library schema_org;

/// Enumerates several kinds of policies for product return fees.
/// See https://schema.org/ReturnFeesEnumeration
enum SchemaReturnFeesEnumeration {
  /// Specifies that product returns are free of charge for the
  /// customer.
  freeReturn('https://schema.org/ReturnFeesEnumeration'),

  /// Specifies that the customer must pay the original shipping costs
  /// when returning a product.
  originalShippingFees('https://schema.org/ReturnFeesEnumeration'),

  /// Specifies that the customer must pay a restocking fee when
  /// returning a product.
  restockingFees('https://schema.org/ReturnFeesEnumeration'),

  /// Specifies that product returns must be paid for, and are the
  /// responsibility of, the customer.
  returnFeesCustomerResponsibility('https://schema.org/ReturnFeesEnumeration'),

  /// Specifies that the customer must pay the return shipping costs
  /// when returning a product.
  returnShippingFees('https://schema.org/ReturnFeesEnumeration');

  /// Constructor for [SchemaReturnFeesEnumeration]
  const SchemaReturnFeesEnumeration(this.value);

  /// Enum value as a string
  final String value;

  /// Serialize [SchemaReturnFeesEnumeration] to JSON-LD
  String toJsonLd() => value;
}
