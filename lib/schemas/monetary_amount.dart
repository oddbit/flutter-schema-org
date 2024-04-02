import 'package:schema_org/src/utils.dart';
import 'package:schema_org/src/schema_serializable.dart';
import 'package:schema_org/schemas/structured_value.dart';
import 'package:schema_org/schemas/text_object.dart';
import 'package:schema_org/schemas/property_value.dart';
import 'package:schema_org/schemas/image_object.dart';
import 'package:schema_org/schemas/creative_work.dart';
import 'package:schema_org/schemas/action.dart';
import 'package:schema_org/schemas/event.dart';

/// A monetary value or range This type can be used to describe an
/// amount of money such as $50 USD, or a range as in describing a
/// bank account being suitable for a balance between £1,000 and
/// £1,000,000 GBP, or the value of a salary, etc It is recommended
/// to use [[PriceSpecification]] Types to describe the price of an
/// Offer, Invoice, etc.
/// See https://schema.org/MonetaryAmount
class SchemaMonetaryAmount implements SchemaSerializable {
  /// //en.wikipedia.org/wiki/Local_exchange_trading_system) (LETS)
  /// and other currency types, e.g "Ithaca HOUR".
  String? currency;

  /// The upper value of some characteristic or property.
  int? maxValue;

  /// The lower value of some characteristic or property.
  int? minValue;

  /// The date when the item becomes valid.  Supported types:
  /// [String], [String]
  String? validFrom;

  /// The date after when the item is not valid For example the end of
  /// an offer, salary period, or a period of opening hours.
  /// Supported types: [String], [String]
  String? validThrough;

  /// The value of a [[QuantitativeValue]] (including [[Observation]])
  /// or property value node.\n\n* For [[QuantitativeValue]] and
  /// [[MonetaryAmount]], the recommended type for values is
  /// 'Number'.\n* For [[PropertyValue]], it can be 'Text', 'Number',
  /// 'Boolean', or 'StructuredValue'.\n* Use values from 0123456789
  /// (Unicode 'DIGIT ZERO' (U+0030) to 'DIGIT NINE' (U+0039)) rather
  /// than superficially similar Unicode symbols.\n* Use '.' (Unicode
  /// 'FULL STOP' (U+002E)) rather than ',' to indicate a decimal
  /// point Avoid using these symbols as a readability separator.
  /// Supported types: [String], [StructuredValue], [bool], [int]
  dynamic value;

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

  /// Create a new instance of [SchemaMonetaryAmount]
  SchemaMonetaryAmount({
    this.currency,
    this.maxValue,
    this.minValue,
    this.validFrom,
    this.validThrough,
    this.value,
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

  /// Serialize [SchemaMonetaryAmount] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        '@context': 'https://schema.org',
        '@type': 'MonetaryAmount',
        'currency': convertToJsonLd(currency, [String]),
        'maxValue': convertToJsonLd(maxValue, [int]),
        'minValue': convertToJsonLd(minValue, [int]),
        'validFrom': convertToJsonLd(validFrom, [String, String]),
        'validThrough': convertToJsonLd(validThrough, [String, String]),
        'value':
            convertToJsonLd(value, [String, SchemaStructuredValue, bool, int]),
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
