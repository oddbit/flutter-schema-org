import 'package:json_annotation/json_annotation.dart';
import 'package:schema_org/converters/creative_work_event.dart';
import 'package:schema_org/converters/creative_work_string.dart';
import 'package:schema_org/converters/image_object_string.dart';
import 'package:schema_org/schemas/creative_work.dart';

part 'thing.g.dart';

/// Implements Thing schema, see https://schema.org/Thing
/// The most generic type of item.
@JsonSerializable()
class Thing {
  Thing({
    this.additionalType,
    this.alternateName,
    this.description,
    this.disambiguatingDescription,
    this.identifier,
    this.image,
    this.mainEntityOfPage,
    required this.name,
    this.sameAs,
    this.subjectOf,
    this.url,
  }) :
        // TODO: Add type assertions for the `dynamic` parameters
        assert(mainEntityOfPage is CreativeWork || mainEntityOfPage is String);

  factory Thing.fromJson(Map<String, dynamic> json) => _$ThingFromJson(json);

  /// The schema.org context
  @JsonKey(name: '@context')
  final context = 'https://schema.org';

  /// The schema.org type
  @JsonKey(name: '@type')
  get type => 'Thing';

  /// An additional type for the item, typically used for adding more specific
  /// types from external vocabularies in microdata syntax. This is a
  /// relationship between something and a class that the thing is in. Typically
  /// the value is a URI-identified RDF class, and in this case corresponds to
  /// the use of rdf:type in RDF. Text values can be used sparingly, for cases
  /// where useful information can be added without their being an appropriate
  /// schema to reference. In the case of text values, the class label should
  /// follow the schema.org style guide.
  String? additionalType;

  /// An alias for the item.
  String? alternateName;

  /// A description of the item.
  String? description;

  /// A sub property of description. A short description of the item used to
  /// disambiguate from other, similar items. Information from other properties
  /// (in particular, name) may be necessary for the description to be useful
  /// for disambiguation.
  String? disambiguatingDescription;

  /// The identifier property represents any kind of identifier for any kind of
  /// Thing, such as ISBNs, GTIN codes, UUIDs etc. Schema.org provides dedicated
  /// properties for representing many of these, either as textual strings or as
  /// URL (URI) links. See background notes for more details.
  String? identifier;

  /// An image of the item.
  /// This can be a URL or a fully described [ImageObject].
  @JsonKey(
    toJson: ImageObjectStringConverter.toJson,
    fromJson: ImageObjectStringConverter.fromJson,
  )
  dynamic image;

  @JsonKey(
    toJson: CreativeWorkStringConverter.toJson,
    fromJson: CreativeWorkStringConverter.fromJson,
  )
  dynamic mainEntityOfPage;

  /// The name of the item.
  String name;

  /// URL of a reference Web page that unambiguously indicates the item's
  /// identity. E.g. the URL of the item's Wikipedia page, Wikidata entry, or
  /// official website.
  String? sameAs;

  /// A [CreativeWork] or [Event] about this Thing.
  @JsonKey(
    toJson: CreativeWorkEventConverter.toJson,
    fromJson: CreativeWorkEventConverter.fromJson,
  )
  dynamic subjectOf;

  /// URL of the item.
  String? url;

  /// Convert the object to JSON-LD format
  Map<String, dynamic> toJson() => _$ThingToJson(this);
}
