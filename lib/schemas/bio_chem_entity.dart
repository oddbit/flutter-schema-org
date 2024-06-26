import 'package:schema_org/src/schema_serializable.dart';
import 'package:schema_org/src/utils.dart';
import 'package:schema_org/schemas/medical_condition.dart';
import 'package:schema_org/schemas/property_value.dart';
import 'package:schema_org/schemas/defined_term.dart';
import 'package:schema_org/schemas/grant.dart';
import 'package:schema_org/schemas/gene.dart';
import 'package:schema_org/schemas/taxon.dart';
import 'package:schema_org/schemas/text_object.dart';
import 'package:schema_org/schemas/image_object.dart';
import 'package:schema_org/schemas/creative_work.dart';
import 'package:schema_org/schemas/action.dart';
import 'package:schema_org/schemas/event.dart';

/// a protein; a gene; a chemical; a synthetic chemical.
/// See https://schema.org/BioChemEntity
class SchemaBioChemEntity implements SchemaSerializable {
  /// Disease associated to this BioChemEntity. Such disease can be a
  /// MedicalCondition or a URL. If you want to add an evidence supporting the
  /// association, please use PropertyValue.
  ///
  /// Supported types: [SchemaMedicalCondition], [SchemaPropertyValue],
  /// [String]
  dynamic associatedDisease;

  /// A BioChemEntity that is known to interact with this item.
  SchemaBioChemEntity? bioChemInteraction;

  /// A similar BioChemEntity, e.g., obtained by fingerprint similarity
  /// algorithms.
  SchemaBioChemEntity? bioChemSimilarity;

  /// A role played by the BioChemEntity within a biological context.
  SchemaDefinedTerm? biologicalRole;

  /// A [SchemaGrant] that directly or indirectly provide funding or
  /// sponsorship for this item. See also [SchemaownershipFundingInfo].
  SchemaGrant? funding;

  /// Indicates a BioChemEntity that (in some sense) has this BioChemEntity as
  /// a part.
  SchemaBioChemEntity? hasBioChemEntityPart;

  /// Molecular function performed by this BioChemEntity; please use
  /// PropertyValue if you want to include any evidence.
  ///
  /// Supported types: [SchemaDefinedTerm], [SchemaPropertyValue], [String]
  dynamic hasMolecularFunction;

  /// A common representation such as a protein sequence or chemical structure
  /// for this entity. For images use schema.org/image.
  ///
  /// Supported types: [SchemaPropertyValue], [String], [String]
  dynamic hasRepresentation;

  /// Another BioChemEntity encoding by this one.
  SchemaGene? isEncodedByBioChemEntity;

  /// Biological process this BioChemEntity is involved in; please use
  /// PropertyValue if you want to include any evidence.
  ///
  /// Supported types: [SchemaDefinedTerm], [SchemaPropertyValue], [String]
  dynamic isInvolvedInBiologicalProcess;

  /// Subcellular location where this BioChemEntity is located; please use
  /// PropertyValue if you want to include any evidence.
  ///
  /// Supported types: [SchemaDefinedTerm], [SchemaPropertyValue], [String]
  dynamic isLocatedInSubcellularLocation;

  /// Indicates a BioChemEntity that is (in some sense) a part of this
  /// BioChemEntity.
  SchemaBioChemEntity? isPartOfBioChemEntity;

  /// The taxonomic grouping of the organism that expresses, encodes, or in
  /// some way related to the BioChemEntity.
  ///
  /// Supported types: [SchemaDefinedTerm], [String], [String], [SchemaTaxon]
  dynamic taxonomicRange;

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

  /// Create a new instance of [SchemaBioChemEntity]
  SchemaBioChemEntity({
    this.associatedDisease,
    this.bioChemInteraction,
    this.bioChemSimilarity,
    this.biologicalRole,
    this.funding,
    this.hasBioChemEntityPart,
    this.hasMolecularFunction,
    this.hasRepresentation,
    this.isEncodedByBioChemEntity,
    this.isInvolvedInBiologicalProcess,
    this.isLocatedInSubcellularLocation,
    this.isPartOfBioChemEntity,
    this.taxonomicRange,
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

  /// Serialize [SchemaBioChemEntity] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        '@context': 'https://schema.org',
        '@type': 'BioChemEntity',
        'associatedDisease': convertToJsonLd(associatedDisease,
            [SchemaMedicalCondition, SchemaPropertyValue, String]),
        'bioChemInteraction':
            convertToJsonLd(bioChemInteraction, [SchemaBioChemEntity]),
        'bioChemSimilarity':
            convertToJsonLd(bioChemSimilarity, [SchemaBioChemEntity]),
        'biologicalRole': convertToJsonLd(biologicalRole, [SchemaDefinedTerm]),
        'funding': convertToJsonLd(funding, [SchemaGrant]),
        'hasBioChemEntityPart':
            convertToJsonLd(hasBioChemEntityPart, [SchemaBioChemEntity]),
        'hasMolecularFunction': convertToJsonLd(hasMolecularFunction,
            [SchemaDefinedTerm, SchemaPropertyValue, String]),
        'hasRepresentation': convertToJsonLd(
            hasRepresentation, [SchemaPropertyValue, String, String]),
        'isEncodedByBioChemEntity':
            convertToJsonLd(isEncodedByBioChemEntity, [SchemaGene]),
        'isInvolvedInBiologicalProcess': convertToJsonLd(
            isInvolvedInBiologicalProcess,
            [SchemaDefinedTerm, SchemaPropertyValue, String]),
        'isLocatedInSubcellularLocation': convertToJsonLd(
            isLocatedInSubcellularLocation,
            [SchemaDefinedTerm, SchemaPropertyValue, String]),
        'isPartOfBioChemEntity':
            convertToJsonLd(isPartOfBioChemEntity, [SchemaBioChemEntity]),
        'taxonomicRange': convertToJsonLd(
            taxonomicRange, [SchemaDefinedTerm, String, String, SchemaTaxon]),
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
