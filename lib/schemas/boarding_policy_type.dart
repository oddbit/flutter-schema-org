library schema_org;

import 'package:schema_org/schema_org.dart';

/// A type of boarding policy used by an airline.
/// See https://schema.org/BoardingPolicyType
enum SchemaBoardingPolicyType implements SchemaSerializable {
  /// The airline boards by groups based on check-in time, priority,
  /// etc.
  groupBoardingPolicy('https://schema.org/BoardingPolicyType'),

  /// The airline boards by zones of the plane.
  zoneBoardingPolicy('https://schema.org/BoardingPolicyType');

  /// Constructor for [SchemaBoardingPolicyType]
  const SchemaBoardingPolicyType(this.value);

  /// Enum value as a string
  final String value;

  /// Serialize [SchemaBoardingPolicyType] to JSON-LD
  @override
  String toJsonLd() => value;
}
