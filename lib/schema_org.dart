library schema_org;

import 'package:schema_org/converter.dart';

/// 3D_graphics_file_formats)); specific encoding formats can be
/// represented using the [[encodingFormat]] property applied to the
/// relevant [[MediaObject]]. For the case of a single file published
/// after Zip compression, the convention of appending '+zip' to the
/// [[encodingFormat]] can be used. Geospatial, AR/VR,
/// artistic/animation, gaming, engineering and scientific content
/// can all be represented using [[3DModel]].
class SchemaOrg3DModel {
  /// 3D_graphics_file_formats)); specific encoding formats can be
  /// represented using the [[encodingFormat]] property applied to the
  /// relevant [[MediaObject]]. For the case of a single file published
  /// after Zip compression, the convention of appending '+zip' to the
  /// [[encodingFormat]] can be used. Geospatial, AR/VR,
  /// artistic/animation, gaming, engineering and scientific content
  /// can all be represented using [[3DModel]].
  bool? isResizable;

  /// Create a new instance of [SchemaOrg3DModel]
  SchemaOrg3DModel({this.isResizable, });

  /// Serialize the class to a JSON-LD object
  Map<String, dynamic> toJson() => {'isResizable': convertToJson(isResizable, [bool]), };
}

