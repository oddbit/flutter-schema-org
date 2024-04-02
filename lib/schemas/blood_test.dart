library schema_org;

import 'package:schema_org/utils.dart';
import 'package:schema_org/schema_org.dart';
import 'package:schema_org/schemas/drug.dart';
import 'package:schema_org/schemas/medical_enumeration.dart';
import 'package:schema_org/schemas/medical_sign.dart';
import 'package:schema_org/schemas/medical_condition.dart';
import 'package:schema_org/schemas/medical_device.dart';
import 'package:schema_org/schemas/medical_code.dart';
import 'package:schema_org/schemas/grant.dart';
import 'package:schema_org/schemas/medical_guideline.dart';
import 'package:schema_org/schemas/drug_legal_status.dart';
import 'package:schema_org/schemas/medicine_system.dart';
import 'package:schema_org/schemas/organization.dart';
import 'package:schema_org/schemas/medical_specialty.dart';
import 'package:schema_org/schemas/medical_study.dart';
import 'package:schema_org/schemas/text_object.dart';
import 'package:schema_org/schemas/property_value.dart';
import 'package:schema_org/schemas/image_object.dart';
import 'package:schema_org/schemas/creative_work.dart';
import 'package:schema_org/schemas/action.dart';
import 'package:schema_org/schemas/event.dart';

/// A medical test performed on a sample of a patient's blood.
/// See https://schema.org/BloodTest
class SchemaBloodTest implements SchemaSerializable {
  /// Drugs that affect the test's results.
  SchemaDrug? affectedBy;

  /// Range of acceptable values for a typical patient, when
  /// applicable.  Supported types: [MedicalEnumeration], [String]
  dynamic normalRange;

  /// A sign detected by the test.
  SchemaMedicalSign? signDetected;

  /// A condition the test is used to diagnose.
  SchemaMedicalCondition? usedToDiagnose;

  /// Device used to perform the test.
  SchemaMedicalDevice? usesDevice;

  /// A medical code for the entity, taken from a controlled
  /// vocabulary or ontology such as ICD-9, DiseasesDB, MeSH,
  /// SNOMED-CT, RxNorm, etc.
  SchemaMedicalCode? code;

  /// A [[Grant]] that directly or indirectly provide funding or
  /// sponsorship for this item See also [[ownershipFundingInfo]].
  SchemaGrant? funding;

  /// A medical guideline related to this entity.
  SchemaMedicalGuideline? guideline;

  /// The drug or supplement's legal status, including any controlled
  /// substance schedules that apply.  Supported types:
  /// [DrugLegalStatus], [MedicalEnumeration], [String]
  dynamic legalStatus;

  /// The system of medicine that includes this MedicalEntity, for
  /// example 'evidence-based', 'homeopathic', 'chiropractic', etc.
  SchemaMedicineSystem? medicineSystem;

  /// If applicable, the organization that officially recognizes this
  /// entity as part of its endorsed system of medicine.
  SchemaOrganization? recognizingAuthority;

  /// If applicable, a medical specialty in which this entity is
  /// relevant.
  SchemaMedicalSpecialty? relevantSpecialty;

  /// A medical study or trial related to this entity.
  SchemaMedicalStudy? study;

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

  /// Create a new instance of [SchemaBloodTest]
  SchemaBloodTest({
    this.affectedBy,
    this.normalRange,
    this.signDetected,
    this.usedToDiagnose,
    this.usesDevice,
    this.code,
    this.funding,
    this.guideline,
    this.legalStatus,
    this.medicineSystem,
    this.recognizingAuthority,
    this.relevantSpecialty,
    this.study,
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

  /// Serialize [SchemaBloodTest] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        '@context': 'https://schema.org',
        '@type': 'BloodTest',
        'affectedBy': convertToJsonLd(affectedBy, [SchemaDrug]),
        'normalRange':
            convertToJsonLd(normalRange, [SchemaMedicalEnumeration, String]),
        'signDetected': convertToJsonLd(signDetected, [SchemaMedicalSign]),
        'usedToDiagnose':
            convertToJsonLd(usedToDiagnose, [SchemaMedicalCondition]),
        'usesDevice': convertToJsonLd(usesDevice, [SchemaMedicalDevice]),
        'code': convertToJsonLd(code, [SchemaMedicalCode]),
        'funding': convertToJsonLd(funding, [SchemaGrant]),
        'guideline': convertToJsonLd(guideline, [SchemaMedicalGuideline]),
        'legalStatus': convertToJsonLd(legalStatus,
            [SchemaDrugLegalStatus, SchemaMedicalEnumeration, String]),
        'medicineSystem':
            convertToJsonLd(medicineSystem, [SchemaMedicineSystem]),
        'recognizingAuthority':
            convertToJsonLd(recognizingAuthority, [SchemaOrganization]),
        'relevantSpecialty':
            convertToJsonLd(relevantSpecialty, [SchemaMedicalSpecialty]),
        'study': convertToJsonLd(study, [SchemaMedicalStudy]),
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
