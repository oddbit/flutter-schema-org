library schema_org;

import 'package:schema_org/utils.dart';
import 'package:schema_org/schemas/defined_term.dart';
import 'package:schema_org/schemas/quantitative_value.dart';
import 'package:schema_org/schemas/medical_condition.dart';
import 'package:schema_org/schemas/property_value.dart';
import 'package:schema_org/schemas/bio_chem_entity.dart';
import 'package:schema_org/schemas/grant.dart';
import 'package:schema_org/schemas/gene.dart';
import 'package:schema_org/schemas/taxon.dart';
import 'package:schema_org/schemas/text_object.dart';
import 'package:schema_org/schemas/image_object.dart';
import 'package:schema_org/schemas/creative_work.dart';
import 'package:schema_org/schemas/action.dart';
import 'package:schema_org/schemas/event.dart';

/// Any constitutionally or isotopically distinct atom, molecule,
/// ion, ion pair, radical, radical ion, complex, conformer etc.,
/// identifiable as a separately distinguishable entity.
/// See https://schema.org/MolecularEntity
class SchemaMolecularEntity {
  /// A role played by the BioChemEntity within a chemical context.
  SchemaDefinedTerm? chemicalRole;

  /// Non-proprietary identifier for molecular entity that can be used
  /// in printed and electronic data sources thus enabling easier
  /// linking of diverse data compilations.
  String? inChI;

  /// InChIKey is a hashed version of the full InChI (using the
  /// SHA-256 algorithm).
  String? inChIKey;

  /// Systematic method of naming chemical compounds as recommended by
  /// the International Union of Pure and Applied Chemistry (IUPAC).
  String? iupacName;

  /// The empirical formula is the simplest whole number ratio of all
  /// the atoms in a molecule.
  String? molecularFormula;

  /// This is the molecular weight of the entity being described, not
  /// of the parent Units should be included in the form
  /// '&lt;Number&gt; &lt;unit&gt;', for example '12 amu' or as
  /// '&lt;QuantitativeValue&gt;.  Supported types:
  /// [QuantitativeValue], [String]
  dynamic molecularWeight;

  /// The monoisotopic mass is the sum of the masses of the atoms in a
  /// molecule using the unbound, ground-state, rest mass of the
  /// principal (most abundant) isotope for each element instead of
  /// the isotopic average mass Please include the units in the form
  /// '&lt;Number&gt; &lt;unit&gt;', for example '770.230488 g/mol' or
  /// as '&lt;QuantitativeValue&gt;.  Supported types:
  /// [QuantitativeValue], [String]
  dynamic monoisotopicMolecularWeight;

  /// Intended use of the BioChemEntity by humans.
  SchemaDefinedTerm? potentialUse;

  /// A specification in form of a line notation for describing the
  /// structure of chemical species using short ASCII strings Double
  /// bond stereochemistry \ indicators may need to be escaped in the
  /// string in formats where the backslash is an escape character.
  String? smiles;

  /// Disease associated to this BioChemEntity Such disease can be a
  /// MedicalCondition or a URL If you want to add an evidence
  /// supporting the association, please use PropertyValue.  Supported
  /// types: [MedicalCondition], [PropertyValue], [String]
  dynamic associatedDisease;

  /// A BioChemEntity that is known to interact with this item.
  SchemaBioChemEntity? bioChemInteraction;

  /// A similar BioChemEntity, e.g., obtained by fingerprint
  /// similarity algorithms.
  SchemaBioChemEntity? bioChemSimilarity;

  /// A role played by the BioChemEntity within a biological context.
  SchemaDefinedTerm? biologicalRole;

  /// A [[Grant]] that directly or indirectly provide funding or
  /// sponsorship for this item See also [[ownershipFundingInfo]].
  SchemaGrant? funding;

  /// Indicates a BioChemEntity that (in some sense) has this
  /// BioChemEntity as a part.
  SchemaBioChemEntity? hasBioChemEntityPart;

  /// Molecular function performed by this BioChemEntity; please use
  /// PropertyValue if you want to include any evidence.  Supported
  /// types: [DefinedTerm], [PropertyValue], [String]
  dynamic hasMolecularFunction;

  /// A common representation such as a protein sequence or chemical
  /// structure for this entity For images use schema.org/image.
  /// Supported types: [PropertyValue], [String], [String]
  dynamic hasRepresentation;

  /// Another BioChemEntity encoding by this one.
  SchemaGene? isEncodedByBioChemEntity;

  /// Biological process this BioChemEntity is involved in; please use
  /// PropertyValue if you want to include any evidence.  Supported
  /// types: [DefinedTerm], [PropertyValue], [String]
  dynamic isInvolvedInBiologicalProcess;

  /// Subcellular location where this BioChemEntity is located; please
  /// use PropertyValue if you want to include any evidence.
  /// Supported types: [DefinedTerm], [PropertyValue], [String]
  dynamic isLocatedInSubcellularLocation;

  /// Indicates a BioChemEntity that is (in some sense) a part of this
  /// BioChemEntity.
  SchemaBioChemEntity? isPartOfBioChemEntity;

  /// The taxonomic grouping of the organism that expresses, encodes,
  /// or in some way related to the BioChemEntity.  Supported types:
  /// [DefinedTerm], [String], [String], [Taxon]
  dynamic taxonomicRange;

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

  /// Create a new instance of [SchemaMolecularEntity]
  SchemaMolecularEntity({
    this.chemicalRole,
    this.inChI,
    this.inChIKey,
    this.iupacName,
    this.molecularFormula,
    this.molecularWeight,
    this.monoisotopicMolecularWeight,
    this.potentialUse,
    this.smiles,
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

  /// Serialize [SchemaMolecularEntity] to JSON-LD
  Map<String, dynamic> toJsonLd() => {
        '@context': 'https://schema.org',
        '@type': 'MolecularEntity',
        'chemicalRole': convertToJsonLd(chemicalRole, [SchemaDefinedTerm]),
        'inChI': convertToJsonLd(inChI, [String]),
        'inChIKey': convertToJsonLd(inChIKey, [String]),
        'iupacName': convertToJsonLd(iupacName, [String]),
        'molecularFormula': convertToJsonLd(molecularFormula, [String]),
        'molecularWeight':
            convertToJsonLd(molecularWeight, [SchemaQuantitativeValue, String]),
        'monoisotopicMolecularWeight': convertToJsonLd(
            monoisotopicMolecularWeight, [SchemaQuantitativeValue, String]),
        'potentialUse': convertToJsonLd(potentialUse, [SchemaDefinedTerm]),
        'smiles': convertToJsonLd(smiles, [String]),
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
      };
}
