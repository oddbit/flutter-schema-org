library schema_org;

import 'package:schema_org/schema_org.dart';

/// soundtrack, live album, studio album, etc.
/// See https://schema.org/MusicAlbumProductionType
enum SchemaMusicAlbumProductionType implements SchemaSerializable {
  /// CompilationAlbum.
  compilationAlbum('https://schema.org/MusicAlbumProductionType'),

  /// DJMixAlbum.
  dJMixAlbum('https://schema.org/MusicAlbumProductionType'),

  /// DemoAlbum.
  demoAlbum('https://schema.org/MusicAlbumProductionType'),

  /// LiveAlbum.
  liveAlbum('https://schema.org/MusicAlbumProductionType'),

  /// MixtapeAlbum.
  mixtapeAlbum('https://schema.org/MusicAlbumProductionType'),

  /// RemixAlbum.
  remixAlbum('https://schema.org/MusicAlbumProductionType'),

  /// SoundtrackAlbum.
  soundtrackAlbum('https://schema.org/MusicAlbumProductionType'),

  /// SpokenWordAlbum.
  spokenWordAlbum('https://schema.org/MusicAlbumProductionType'),

  /// StudioAlbum.
  studioAlbum('https://schema.org/MusicAlbumProductionType');

  /// Constructor for [SchemaMusicAlbumProductionType]
  const SchemaMusicAlbumProductionType(this.value);

  /// Enum value as a string
  final String value;

  /// Serialize [SchemaMusicAlbumProductionType] to JSON-LD
  @override
  String toJsonLd() => value;
}
