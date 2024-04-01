library schema_org;

import 'package:schema_org/schemas/status_enumeration.dart';

/// Status of a game server.
/// See https://schema.org/GameServerStatus
enum SchemaGameServerStatus implements SchemaStatusEnumeration {
  /// OfflinePermanently Server is offline and not available.
  offlinePermanently('https://schema.org/GameServerStatus'),

  /// OfflineTemporarily Server is offline now but it can be online
  /// soon.
  offlineTemporarily('https://schema.org/GameServerStatus'),

  /// Online Server is available.
  online('https://schema.org/GameServerStatus'),

  /// OnlineFull Server is online but unavailable The maximum number
  /// of players has reached.
  onlineFull('https://schema.org/GameServerStatus');

  /// Constructor for [SchemaGameServerStatus]
  const SchemaGameServerStatus(this.value);

  /// Enum value as a string
  final String value;

  /// Serialize [SchemaGameServerStatus] to JSON-LD
  String toJsonLd() => value;
}
