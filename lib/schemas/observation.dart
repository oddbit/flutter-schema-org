import 'package:schema_org/src/utils.dart';
import 'package:schema_org/src/schema_serializable.dart';
import 'package:schema_org/schemas/quantitative_value.dart';
import 'package:schema_org/schemas/property.dart';
import 'package:schema_org/schemas/statistical_variable.dart';
import 'package:schema_org/schemas/defined_term.dart';
import 'package:schema_org/schemas/measurement_method_enum.dart';
import 'package:schema_org/schemas/enumeration.dart';
import 'package:schema_org/schemas/place.dart';
import 'package:schema_org/schemas/thing.dart';
import 'package:schema_org/schemas/property_value.dart';
import 'package:schema_org/schemas/structured_value.dart';
import 'package:schema_org/schemas/measurement_type_enumeration.dart';
import 'package:schema_org/schemas/qualitative_value.dart';
import 'package:schema_org/schemas/text_object.dart';
import 'package:schema_org/schemas/image_object.dart';
import 'package:schema_org/schemas/creative_work.dart';
import 'package:schema_org/schemas/action.dart';
import 'package:schema_org/schemas/event.dart';

/// Instances of the class [[Observation]] are used to specify
/// observations about an entity at a particular time The principal
/// properties of an [[Observation]] are [[observationAbout]],
/// [[measuredProperty]], [[statType]], [[value] and
/// [[observationDate]] and [[measuredProperty]] Some but not all
/// Observations represent a [[QuantitativeValue]] Quantitative
/// observations can be about a [[StatisticalVariable]], which is an
/// abstract specification about which we can make observations that
/// are grounded at a particular location and time    Observations
/// can also encode a subset of simple RDF-like statements (its
/// observationAbout, a StatisticalVariable, defining the
/// measuredPoperty; its observationAbout property indicating the
/// entity the statement is about, and [[value]] )  In the context
/// of a quantitative knowledge graph, typical properties could
/// include [[measuredProperty]], [[observationAbout]],
/// [[observationDate]], [[value]], [[unitCode]], [[unitText]],
/// [[measurementMethod]].
/// See https://schema.org/Observation
class SchemaObservation implements SchemaSerializable {
  /// A [[marginOfError]] for an [[Observation]].
  SchemaQuantitativeValue? marginOfError;

  /// //www.gs1.org/voc/?show=properties).
  SchemaProperty? measuredProperty;

  /// Identifies the denominator variable when an observation
  /// represents a ratio or percentage.
  SchemaStatisticalVariable? measurementDenominator;

  /// A subproperty of [[measurementTechnique]] that can be used for
  /// specifying specific methods, in particular via
  /// [[MeasurementMethodEnum]].  Supported types: [DefinedTerm],
  /// [MeasurementMethodEnum], [String], [String]
  dynamic measurementMethod;

  /// Provides additional qualification to an observation For example,
  /// a GDP observation measures the Nominal value.
  SchemaEnumeration? measurementQualifier;

  /// "mass spectrometry" or "nmr spectroscopy" or "colorimetry" or
  /// "immunofluorescence" If the [[variableMeasured]] is "depression
  /// rating", the [[measurementTechnique]] could be "Zung Scale" or
  /// "HAM-D" or "Beck Depression Inventory"   If there are several
  /// [[variableMeasured]] properties recorded for some given data
  /// object, use a [[PropertyValue]] for each [[variableMeasured]]
  /// and attach the corresponding [[measurementTechnique]] The value
  /// can also be from an enumeration, organized as a
  /// [[MeasurementMetholdEnumeration]].  Supported types:
  /// [DefinedTerm], [MeasurementMethodEnum], [String], [String]
  dynamic measurementTechnique;

  /// The [[observationAbout]] property identifies an entity, often a
  /// [[Place]], associated with an [[Observation]].  Supported types:
  /// [Place], [Thing]
  dynamic observationAbout;

  /// The observationDate of an [[Observation]].
  String? observationDate;

  /// The length of time an Observation took place over The format
  /// follows `P[0-9]*[Y|M|D|h|m|s]` For example, P1Y is Period 1
  /// Year, P3M is Period 3 Months, P3h is Period 3 hours.
  String? observationPeriod;

  /// The variableMeasured property can indicate (repeated as
  /// necessary) the variables that are measured in some dataset,
  /// either described as text or as pairs of identifier and
  /// description using PropertyValue, or more explicitly as a
  /// [[StatisticalVariable]].  Supported types: [Property],
  /// [PropertyValue], [StatisticalVariable], [String]
  dynamic variableMeasured;

  /// //schema.org/gtin13, ...) will typically expect such data to be
  /// provided using those properties, rather than using the generic
  /// property/value mechanism.
  SchemaPropertyValue? additionalProperty;

  /// The upper value of some characteristic or property.
  int? maxValue;

  /// The lower value of some characteristic or property.
  int? minValue;

  /// The unit of measurement given using the UN/CEFACT Common Code (3
  /// characters) or a URL Other codes than the UN/CEFACT Common Code
  /// may be used with a prefix followed by a colon.  Supported types:
  /// [String], [String]
  String? unitCode;

  /// A string or text indicating the unit of measurement Useful if
  /// you cannot provide a standard unit code for <a
  /// href='unitCode'>unitCode</a>.
  String? unitText;

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

  /// A secondary value that provides additional information on the
  /// original value, e.g a reference temperature or a type of
  /// measurement.  Supported types: [DefinedTerm], [Enumeration],
  /// [MeasurementTypeEnumeration], [PropertyValue],
  /// [QualitativeValue], [QuantitativeValue], [String],
  /// [StructuredValue]
  dynamic valueReference;

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

  /// Create a new instance of [SchemaObservation]
  SchemaObservation({
    this.marginOfError,
    this.measuredProperty,
    this.measurementDenominator,
    this.measurementMethod,
    this.measurementQualifier,
    this.measurementTechnique,
    this.observationAbout,
    this.observationDate,
    this.observationPeriod,
    this.variableMeasured,
    this.additionalProperty,
    this.maxValue,
    this.minValue,
    this.unitCode,
    this.unitText,
    this.value,
    this.valueReference,
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

  /// Serialize [SchemaObservation] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        '@context': 'https://schema.org',
        '@type': 'Observation',
        'marginOfError':
            convertToJsonLd(marginOfError, [SchemaQuantitativeValue]),
        'measuredProperty': convertToJsonLd(measuredProperty, [SchemaProperty]),
        'measurementDenominator': convertToJsonLd(
            measurementDenominator, [SchemaStatisticalVariable]),
        'measurementMethod': convertToJsonLd(measurementMethod,
            [SchemaDefinedTerm, SchemaMeasurementMethodEnum, String, String]),
        'measurementQualifier':
            convertToJsonLd(measurementQualifier, [SchemaEnumeration]),
        'measurementTechnique': convertToJsonLd(measurementTechnique,
            [SchemaDefinedTerm, SchemaMeasurementMethodEnum, String, String]),
        'observationAbout':
            convertToJsonLd(observationAbout, [SchemaPlace, SchemaThing]),
        'observationDate': convertToJsonLd(observationDate, [String]),
        'observationPeriod': convertToJsonLd(observationPeriod, [String]),
        'variableMeasured': convertToJsonLd(variableMeasured, [
          SchemaProperty,
          SchemaPropertyValue,
          SchemaStatisticalVariable,
          String
        ]),
        'additionalProperty':
            convertToJsonLd(additionalProperty, [SchemaPropertyValue]),
        'maxValue': convertToJsonLd(maxValue, [int]),
        'minValue': convertToJsonLd(minValue, [int]),
        'unitCode': convertToJsonLd(unitCode, [String, String]),
        'unitText': convertToJsonLd(unitText, [String]),
        'value':
            convertToJsonLd(value, [String, SchemaStructuredValue, bool, int]),
        'valueReference': convertToJsonLd(valueReference, [
          SchemaDefinedTerm,
          SchemaEnumeration,
          SchemaMeasurementTypeEnumeration,
          SchemaPropertyValue,
          SchemaQualitativeValue,
          SchemaQuantitativeValue,
          String,
          SchemaStructuredValue
        ]),
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
