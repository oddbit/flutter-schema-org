import 'package:schema_org/src/schema_serializable.dart';
import 'package:schema_org/src/utils.dart';
import 'package:schema_org/schemas/organization.dart';
import 'package:schema_org/schemas/service.dart';
import 'package:schema_org/schemas/audience.dart';
import 'package:schema_org/schemas/duration.dart';
import 'package:schema_org/schemas/administrative_area.dart';
import 'package:schema_org/schemas/text_object.dart';
import 'package:schema_org/schemas/property_value.dart';
import 'package:schema_org/schemas/image_object.dart';
import 'package:schema_org/schemas/creative_work.dart';
import 'package:schema_org/schemas/action.dart';
import 'package:schema_org/schemas/event.dart';

/// A permit issued by a government agency.
/// See https://schema.org/GovernmentPermit
class SchemaGovernmentPermit implements SchemaSerializable {
  /// The organization issuing the item, for example a [SchemaPermit],
  /// [SchemaTicket], or [SchemaCertification].
  SchemaOrganization? issuedBy;

  /// The service through which the permit was granted.
  SchemaService? issuedThrough;

  /// The target audience for this permit.
  SchemaAudience? permitAudience;

  /// The duration of validity of a permit or similar thing.
  SchemaDuration? validFor;

  /// The date when the item becomes valid.
  ///
  /// Supported types: [String], [String]
  String? validFrom;

  /// The geographic area where the item is valid. Applies for example to a
  /// [SchemaPermit], a [SchemaCertification], or an
  /// [SchemaEducationalOccupationalCredential].
  SchemaAdministrativeArea? validIn;

  /// The date when the item is no longer valid.
  String? validUntil;

  /// //schema.org/docs/styleguide.html">style guide</a>.
  ///
  /// Supported types: [String], [String]
  String? additionalType;

  /// An alias for the item.
  String? alternateName;

  /// A description of the item.
  ///
  /// Supported types: [String], [SchemaTextObject]
  dynamic description;

  /// A sub property of description. A short description of the item used to
  /// disambiguate from other, similar items. Information from other properties
  /// (in particular, name) may be necessary for the description to be useful
  /// for disambiguation.
  String? disambiguatingDescription;

  /// The identifier property represents any kind of identifier for any kind of
  /// [SchemaThing], such as ISBNs, GTIN codes, UUIDs etc. Schema.org provides
  /// dedicated properties for representing many of these, either as textual
  /// strings or as URL (URI) links. See [background
  /// notes](/docs/datamodel.html#identifierBg) for more details.
  ///
  /// Supported types: [SchemaPropertyValue], [String], [String]
  dynamic identifier;

  /// An image of the item. This can be a [SchemaURL] or a fully described
  /// [SchemaImageObject].
  ///
  /// Supported types: [SchemaImageObject], [String]
  dynamic image;

  /// Indicates a page (or other CreativeWork) for which this thing is the main
  /// entity being described. See [background
  /// notes](/docs/datamodel.html#mainEntityBackground) for details.
  ///
  /// Supported types: [SchemaCreativeWork], [String]
  dynamic mainEntityOfPage;

  /// The name of the item.
  String? name;

  /// Indicates a potential Action, which describes an idealized action in
  /// which this thing would play an 'object' role.
  SchemaAction? potentialAction;

  /// URL of a reference Web page that unambiguously indicates the item's
  /// identity. E.g. the URL of the item's Wikipedia page, Wikidata entry, or
  /// official website.
  String? sameAs;

  /// A CreativeWork or Event about this Thing.
  ///
  /// Supported types: [SchemaCreativeWork], [SchemaEvent]
  dynamic subjectOf;

  /// URL of the item.
  String? url;

  /// Create a new instance of [SchemaGovernmentPermit]
  SchemaGovernmentPermit({
    this.issuedBy,
    this.issuedThrough,
    this.permitAudience,
    this.validFor,
    this.validFrom,
    this.validIn,
    this.validUntil,
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

  /// Serialize [SchemaGovernmentPermit] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        '@context': 'https://schema.org',
        '@type': 'GovernmentPermit',
        'issuedBy': convertToJsonLd(issuedBy, [SchemaOrganization]),
        'issuedThrough': convertToJsonLd(issuedThrough, [SchemaService]),
        'permitAudience': convertToJsonLd(permitAudience, [SchemaAudience]),
        'validFor': convertToJsonLd(validFor, [SchemaDuration]),
        'validFrom': convertToJsonLd(validFrom, [String, String]),
        'validIn': convertToJsonLd(validIn, [SchemaAdministrativeArea]),
        'validUntil': convertToJsonLd(validUntil, [String]),
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
