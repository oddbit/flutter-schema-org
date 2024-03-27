import 'package:json_annotation/json_annotation.dart';
import 'package:schema_org/converters/creative_work_event.dart';
import 'package:schema_org/converters/creative_work_string.dart';
import 'package:schema_org/converters/image_object_string.dart';
import 'package:schema_org/schemas/thing.dart';

part 'creative_work.g.dart';

/// Implements CreativeWork schema, see https://schema.org/CreativeWork
@JsonSerializable()
class CreativeWork extends Thing {
  CreativeWork({
    this.dateCreated,
    this.dateModified,
    this.author,
    this.awards,
    super.additionalType,
    super.alternateName,
    super.description,
    super.disambiguatingDescription,
    super.identifier,
    super.image,
    required super.name,
    super.sameAs,
    super.subjectOf,
    super.url,
  });

  factory CreativeWork.fromJson(Map<String, dynamic> json) =>
      _$CreativeWorkFromJson(json);

  @override
  @JsonKey(name: '@type')
  get type => 'CreativeWork';

  /// The date on which the work was created.
  final DateTime? dateCreated;

  /// The date on which the work was most recently updated.
  final DateTime? dateModified;

  /// The author of this creative work (person or organization).
  final String? author;

  /// A list of awards won by this creative work.
  final List<String>? awards;

  @override
  Map<String, dynamic> toJson() => _$CreativeWorkToJson(this);
}
