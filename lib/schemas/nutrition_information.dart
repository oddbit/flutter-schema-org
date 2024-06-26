import 'package:schema_org/src/schema_serializable.dart';
import 'package:schema_org/src/utils.dart';
import 'package:schema_org/schemas/energy.dart';
import 'package:schema_org/schemas/mass.dart';
import 'package:schema_org/schemas/text_object.dart';
import 'package:schema_org/schemas/property_value.dart';
import 'package:schema_org/schemas/image_object.dart';
import 'package:schema_org/schemas/creative_work.dart';
import 'package:schema_org/schemas/action.dart';
import 'package:schema_org/schemas/event.dart';

/// Nutritional information about the recipe.
/// See https://schema.org/NutritionInformation
class SchemaNutritionInformation implements SchemaSerializable {
  /// The number of calories.
  SchemaEnergy? calories;

  /// The number of grams of carbohydrates.
  SchemaMass? carbohydrateContent;

  /// The number of milligrams of cholesterol.
  SchemaMass? cholesterolContent;

  /// The number of grams of fat.
  SchemaMass? fatContent;

  /// The number of grams of fiber.
  SchemaMass? fiberContent;

  /// The number of grams of protein.
  SchemaMass? proteinContent;

  /// The number of grams of saturated fat.
  SchemaMass? saturatedFatContent;

  /// The serving size, in terms of the number of volume or mass.
  String? servingSize;

  /// The number of milligrams of sodium.
  SchemaMass? sodiumContent;

  /// The number of grams of sugar.
  SchemaMass? sugarContent;

  /// The number of grams of trans fat.
  SchemaMass? transFatContent;

  /// The number of grams of unsaturated fat.
  SchemaMass? unsaturatedFatContent;

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

  /// Create a new instance of [SchemaNutritionInformation]
  SchemaNutritionInformation({
    this.calories,
    this.carbohydrateContent,
    this.cholesterolContent,
    this.fatContent,
    this.fiberContent,
    this.proteinContent,
    this.saturatedFatContent,
    this.servingSize,
    this.sodiumContent,
    this.sugarContent,
    this.transFatContent,
    this.unsaturatedFatContent,
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

  /// Serialize [SchemaNutritionInformation] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        '@context': 'https://schema.org',
        '@type': 'NutritionInformation',
        'calories': convertToJsonLd(calories, [SchemaEnergy]),
        'carbohydrateContent':
            convertToJsonLd(carbohydrateContent, [SchemaMass]),
        'cholesterolContent': convertToJsonLd(cholesterolContent, [SchemaMass]),
        'fatContent': convertToJsonLd(fatContent, [SchemaMass]),
        'fiberContent': convertToJsonLd(fiberContent, [SchemaMass]),
        'proteinContent': convertToJsonLd(proteinContent, [SchemaMass]),
        'saturatedFatContent':
            convertToJsonLd(saturatedFatContent, [SchemaMass]),
        'servingSize': convertToJsonLd(servingSize, [String]),
        'sodiumContent': convertToJsonLd(sodiumContent, [SchemaMass]),
        'sugarContent': convertToJsonLd(sugarContent, [SchemaMass]),
        'transFatContent': convertToJsonLd(transFatContent, [SchemaMass]),
        'unsaturatedFatContent':
            convertToJsonLd(unsaturatedFatContent, [SchemaMass]),
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
