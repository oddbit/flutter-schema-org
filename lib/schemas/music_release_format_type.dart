library schema_org;

/// Format of this release (the type of recording media used, i.e
/// compact disc, digital media, LP, etc.).
/// See https://schema.org/MusicReleaseFormatType
enum SchemaMusicReleaseFormatType {
  /// CDFormat.
  cDFormat('https://schema.org/MusicReleaseFormatType'),

  /// CassetteFormat.
  cassetteFormat('https://schema.org/MusicReleaseFormatType'),

  /// DVDFormat.
  dVDFormat('https://schema.org/MusicReleaseFormatType'),

  /// DigitalAudioTapeFormat.
  digitalAudioTapeFormat('https://schema.org/MusicReleaseFormatType'),

  /// DigitalFormat.
  digitalFormat('https://schema.org/MusicReleaseFormatType'),

  /// LaserDiscFormat.
  laserDiscFormat('https://schema.org/MusicReleaseFormatType'),

  /// VinylFormat.
  vinylFormat('https://schema.org/MusicReleaseFormatType');

  /// Constructor for [SchemaMusicReleaseFormatType]
  const SchemaMusicReleaseFormatType(this.value);

  /// Enum value as a string
  final String value;

  /// Serialize [SchemaMusicReleaseFormatType] to JSON-LD
  String toJsonLd() => value;
}
