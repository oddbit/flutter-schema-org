library schema_org;

/// A type of permission which can be granted for accessing a
/// digital document.
/// See https://schema.org/DigitalDocumentPermissionType
enum SchemaDigitalDocumentPermissionType {
  /// Permission to add comments to the document.
  commentPermission('https://schema.org/DigitalDocumentPermissionType'),

  /// Permission to read or view the document.
  readPermission('https://schema.org/DigitalDocumentPermissionType'),

  /// Permission to write or edit the document.
  writePermission('https://schema.org/DigitalDocumentPermissionType');

  /// Constructor for [SchemaDigitalDocumentPermissionType]
  const SchemaDigitalDocumentPermissionType(this.value);

  /// Enum value as a string
  final String value;

  /// Serialize [SchemaDigitalDocumentPermissionType] to JSON-LD
  String toJsonLd() => value;
}
