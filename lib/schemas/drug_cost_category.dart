library schema_org;

import 'package:schema_org/schemas/medical_enumeration.dart';

/// Enumerated categories of medical drug costs.
/// See https://schema.org/DrugCostCategory
enum SchemaDrugCostCategory implements SchemaMedicalEnumeration {
  /// The drug's cost represents the maximum reimbursement paid by an
  /// insurer for the drug.
  reimbursementCap('https://schema.org/DrugCostCategory'),

  /// The drug's cost represents the retail cost of the drug.
  retail('https://schema.org/DrugCostCategory'),

  /// The drug's cost represents the wholesale acquisition cost of the
  /// drug.
  wholesale('https://schema.org/DrugCostCategory');

  /// Constructor for [SchemaDrugCostCategory]
  const SchemaDrugCostCategory(this.value);

  /// Enum value as a string
  final String value;

  /// Serialize [SchemaDrugCostCategory] to JSON-LD
  String toJsonLd() => value;
}
