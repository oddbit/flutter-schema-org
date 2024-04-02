import 'package:schema_org/src/utils.dart';
import 'package:schema_org/src/schema_serializable.dart';
import 'package:schema_org/schemas/class.dart';
import 'package:schema_org/schemas/enumeration.dart';
import 'package:schema_org/schemas/text_object.dart';
import 'package:schema_org/schemas/property_value.dart';
import 'package:schema_org/schemas/image_object.dart';
import 'package:schema_org/schemas/creative_work.dart';
import 'package:schema_org/schemas/action.dart';
import 'package:schema_org/schemas/event.dart';

/// Property.
/// See https://schema.org/Property
class SchemaProperty implements SchemaSerializable {
  /// Relates a property to a class that is (one of) the type(s) the
  /// property is expected to be used on.
  SchemaClass? domainIncludes;

  /// Relates a property to a property that is its inverse Inverse
  /// properties relate the same pairs of items to each other, but in
  /// reversed direction For example, the 'alumni' and 'alumniOf'
  /// properties are inverseOf each other Some properties don't have
  /// explicit inverses; in these situations RDFa and JSON-LD syntax
  /// for reverse properties can be used.
  SchemaProperty? inverseOf;

  /// Relates a property to a class that constitutes (one of) the
  /// expected type(s) for values of the property.
  SchemaClass? rangeIncludes;

  /// Relates a term (i.e a property, class or enumeration) to one
  /// that supersedes it.  Supported types: [Class], [Enumeration],
  /// [Property]
  dynamic supersededBy;

  /// //schema.org/docs/styleguide.html">style guide</a>.  Supported
  /// types: [String], [String]
  String? additionalType;

  /// An alias for the item.
  String? alternateName;

  /// A description of the item.  Supported types: [String],
  /// [TextObject]
  dynamic description;

  /// A sub property of description A short description of the item
  /// used to disambiguate from other, similar items Information from
  /// other properties (in particular, name) may be necessary for the
  /// description to be useful for disambiguation.
  String? disambiguatingDescription;

  /// The identifier property represents any kind of identifier for
  /// any kind of [[Thing]], such as ISBNs, GTIN codes, UUIDs etc
  /// Schema.org provides dedicated properties for representing many
  /// of these, either as textual strings or as URL (URI) links See
  /// [background notes](/docs/datamodel.html#identifierBg) for more
  /// details    Supported types: [PropertyValue], [String], [String]
  dynamic identifier;

  /// An image of the item This can be a [[URL]] or a fully described
  /// [[ImageObject]].  Supported types: [ImageObject], [String]
  dynamic image;

  /// Indicates a page (or other CreativeWork) for which this thing is
  /// the main entity being described See [background
  /// notes](/docs/datamodel.html#mainEntityBackground) for details.
  /// Supported types: [CreativeWork], [String]
  dynamic mainEntityOfPage;

  /// The name of the item.
  String? name;

  /// Indicates a potential Action, which describes an idealized
  /// action in which this thing would play an 'object' role.
  SchemaAction? potentialAction;

  /// URL of a reference Web page that unambiguously indicates the
  /// item's identity E.g the URL of the item's Wikipedia page,
  /// Wikidata entry, or official website.
  String? sameAs;

  /// A CreativeWork or Event about this Thing.  Supported types:
  /// [CreativeWork], [Event]
  dynamic subjectOf;

  /// URL of the item.
  String? url;

  /// Create a new instance of [SchemaProperty]
  SchemaProperty({
    this.domainIncludes,
    this.inverseOf,
    this.rangeIncludes,
    this.supersededBy,
    this.additionalType,
    this.alternateName,
    this.description,
    this.disambiguatingDescription,
    this.identifier,
    this.image,
    this.mainEntityOfPage,
    this.name,
    this.potentialAction,
    this.sameAs,
    this.subjectOf,
    this.url,
  });

  /// Serialize [SchemaProperty] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        '@context': 'https://schema.org',
        '@type': 'Property',
        'domainIncludes': convertToJsonLd(domainIncludes, [SchemaClass]),
        'inverseOf': convertToJsonLd(inverseOf, [SchemaProperty]),
        'rangeIncludes': convertToJsonLd(rangeIncludes, [SchemaClass]),
        'supersededBy': convertToJsonLd(
            supersededBy, [SchemaClass, SchemaEnumeration, SchemaProperty]),
        'additionalType': convertToJsonLd(additionalType, [String, String]),
        'alternateName': convertToJsonLd(alternateName, [String]),
        'description': convertToJsonLd(description, [String, SchemaTextObject]),
        'disambiguatingDescription':
            convertToJsonLd(disambiguatingDescription, [String]),
        'identifier':
            convertToJsonLd(identifier, [SchemaPropertyValue, String, String]),
        'image': convertToJsonLd(image, [SchemaImageObject, String]),
        'mainEntityOfPage':
            convertToJsonLd(mainEntityOfPage, [SchemaCreativeWork, String]),
        'name': convertToJsonLd(name, [String]),
        'potentialAction': convertToJsonLd(potentialAction, [SchemaAction]),
        'sameAs': convertToJsonLd(sameAs, [String]),
        'subjectOf':
            convertToJsonLd(subjectOf, [SchemaCreativeWork, SchemaEvent]),
        'url': convertToJsonLd(url, [String]),
      });
}
