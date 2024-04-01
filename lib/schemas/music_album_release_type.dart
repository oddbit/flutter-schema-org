library schema_org;

/// single, EP or album.
/// See https://schema.org/MusicAlbumReleaseType
enum SchemaMusicAlbumReleaseType {
  /// AlbumRelease.
  albumRelease('https://schema.org/MusicAlbumReleaseType'),

  /// BroadcastRelease.
  broadcastRelease('https://schema.org/MusicAlbumReleaseType'),

  /// EPRelease.
  ePRelease('https://schema.org/MusicAlbumReleaseType'),

  /// SingleRelease.
  singleRelease('https://schema.org/MusicAlbumReleaseType');

  /// Constructor for [SchemaMusicAlbumReleaseType]
  const SchemaMusicAlbumReleaseType(this.value);

  /// Enum value as a string
  final String value;

  /// Serialize [SchemaMusicAlbumReleaseType] to JSON-LD
  String toJsonLd() => value;
}
