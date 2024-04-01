library schema_org;

import 'package:schema_org/utils.dart';
import 'package:schema_org/schemas/medical_condition.dart';
import 'package:schema_org/schemas/quantitative_value.dart';
import 'package:schema_org/schemas/gender_type.dart';
import 'package:schema_org/schemas/administrative_area.dart';
import 'package:schema_org/schemas/text_object.dart';
import 'package:schema_org/schemas/property_value.dart';
import 'package:schema_org/schemas/image_object.dart';
import 'package:schema_org/schemas/creative_work.dart';
import 'package:schema_org/schemas/action.dart';
import 'package:schema_org/schemas/event.dart';

/// A set of characteristics belonging to people, e.g who compose an
/// item's target audience.
/// See https://schema.org/PeopleAudience
class SchemaPeopleAudience {
  /// Specifying the health condition(s) of a patient, medical study,
  /// or other target audience.
  SchemaMedicalCondition? healthCondition;

  /// Audiences defined by a person's gender.
  String? requiredGender;

  /// Audiences defined by a person's maximum age.
  int? requiredMaxAge;

  /// Audiences defined by a person's minimum age.
  int? requiredMinAge;

  /// The age or age range for the intended audience or person, for
  /// example 3-12 months for infants, 1-5 years for toddlers.
  SchemaQuantitativeValue? suggestedAge;

  /// The suggested gender of the intended person or audience, for
  /// example "male", "female", or "unisex".  Supported types:
  /// [GenderType], [String]
  dynamic suggestedGender;

  /// Maximum recommended age in years for the audience or user.
  int? suggestedMaxAge;

  /// A suggested range of body measurements for the intended audience
  /// or person, for example inseam between 32 and 34 inches or height
  /// between 170 and 190 cm Typically found on a size chart for
  /// wearable products.
  SchemaQuantitativeValue? suggestedMeasurement;

  /// Minimum recommended age in years for the audience or user.
  int? suggestedMinAge;

  /// The target group associated with a given audience (e.g veterans,
  /// car owners, musicians, etc.).
  String? audienceType;

  /// The geographic area associated with the audience.
  SchemaAdministrativeArea? geographicArea;

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

  /// Create a new instance of [SchemaPeopleAudience]
  SchemaPeopleAudience({
    this.healthCondition,
    this.requiredGender,
    this.requiredMaxAge,
    this.requiredMinAge,
    this.suggestedAge,
    this.suggestedGender,
    this.suggestedMaxAge,
    this.suggestedMeasurement,
    this.suggestedMinAge,
    this.audienceType,
    this.geographicArea,
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

  /// Serialize [SchemaPeopleAudience] to JSON-LD
  Map<String, dynamic> toJsonLd() => {
        '@context': 'https://schema.org',
        '@type': 'PeopleAudience',
        'healthCondition':
            convertToJsonLd(healthCondition, [SchemaMedicalCondition]),
        'requiredGender': convertToJsonLd(requiredGender, [String]),
        'requiredMaxAge': convertToJsonLd(requiredMaxAge, [int]),
        'requiredMinAge': convertToJsonLd(requiredMinAge, [int]),
        'suggestedAge':
            convertToJsonLd(suggestedAge, [SchemaQuantitativeValue]),
        'suggestedGender':
            convertToJsonLd(suggestedGender, [SchemaGenderType, String]),
        'suggestedMaxAge': convertToJsonLd(suggestedMaxAge, [int]),
        'suggestedMeasurement':
            convertToJsonLd(suggestedMeasurement, [SchemaQuantitativeValue]),
        'suggestedMinAge': convertToJsonLd(suggestedMinAge, [int]),
        'audienceType': convertToJsonLd(audienceType, [String]),
        'geographicArea':
            convertToJsonLd(geographicArea, [SchemaAdministrativeArea]),
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
      };
}
