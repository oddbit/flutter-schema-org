library schema_org;

import 'package:schema_org/schemas/qualitative_value.dart';

/// A value indicating a steering position.
/// See https://schema.org/SteeringPositionValue
enum SchemaSteeringPositionValue implements SchemaQualitativeValue {
  /// The steering position is on the left side of the vehicle (viewed
  /// from the main direction of driving).
  leftHandDriving('https://schema.org/SteeringPositionValue'),

  /// The steering position is on the right side of the vehicle
  /// (viewed from the main direction of driving).
  rightHandDriving('https://schema.org/SteeringPositionValue');

  /// Constructor for [SchemaSteeringPositionValue]
  const SchemaSteeringPositionValue(this.value);

  /// Enum value as a string
  final String value;

  /// Serialize [SchemaSteeringPositionValue] to JSON-LD
  String toJsonLd() => value;
}
