library schema_org;

import 'package:schema_org/utils.dart';
import 'package:schema_org/schema_org.dart';
import 'package:schema_org/schemas/property_value.dart';
import 'package:schema_org/schemas/country.dart';
import 'package:schema_org/schemas/return_fees_enumeration.dart';
import 'package:schema_org/schemas/return_label_source_enumeration.dart';
import 'package:schema_org/schemas/monetary_amount.dart';
import 'package:schema_org/schemas/offer_item_condition.dart';
import 'package:schema_org/schemas/refund_type_enumeration.dart';
import 'package:schema_org/schemas/return_method_enumeration.dart';
import 'package:schema_org/schemas/merchant_return_enumeration.dart';
import 'package:schema_org/schemas/merchant_return_policy_seasonal_override.dart';
import 'package:schema_org/schemas/text_object.dart';
import 'package:schema_org/schemas/image_object.dart';
import 'package:schema_org/schemas/creative_work.dart';
import 'package:schema_org/schemas/action.dart';
import 'package:schema_org/schemas/event.dart';

/// A MerchantReturnPolicy provides information about product return
/// policies associated with an [[Organization]], [[Product]], or
/// [[Offer]].
/// See https://schema.org/MerchantReturnPolicy
class SchemaMerchantReturnPolicy implements SchemaSerializable {
  /// //schema.org/gtin13, ...) will typically expect such data to be
  /// provided using those properties, rather than using the generic
  /// property/value mechanism.
  SchemaPropertyValue? additionalProperty;

  /// A country where a particular merchant return policy applies to,
  /// for example the two-letter ISO 3166-1 alpha-2 country code.
  /// Supported types: [Country], [String]
  dynamic applicableCountry;

  /// The type of return fees if the product is returned due to
  /// customer remorse.
  SchemaReturnFeesEnumeration? customerRemorseReturnFees;

  /// The method (from an enumeration) by which the customer obtains a
  /// return shipping label for a product returned due to customer
  /// remorse.
  SchemaReturnLabelSourceEnumeration? customerRemorseReturnLabelSource;

  /// The amount of shipping costs if a product is returned due to
  /// customer remorse Applicable when property
  /// [[customerRemorseReturnFees]] equals [[ReturnShippingFees]].
  SchemaMonetaryAmount? customerRemorseReturnShippingFeesAmount;

  /// Are in-store returns offered? (For more advanced return methods
  /// use the [[returnMethod]] property.)
  bool? inStoreReturnsOffered;

  /// A predefined value from OfferItemCondition specifying the
  /// condition of the product or service, or the products or services
  /// included in the offer Also used for product return policies to
  /// specify the condition of products accepted for returns.
  SchemaOfferItemCondition? itemCondition;

  /// The type of return fees for returns of defect products.
  SchemaReturnFeesEnumeration? itemDefectReturnFees;

  /// The method (from an enumeration) by which the customer obtains a
  /// return shipping label for a defect product.
  SchemaReturnLabelSourceEnumeration? itemDefectReturnLabelSource;

  /// Amount of shipping costs for defect product returns Applicable
  /// when property [[itemDefectReturnFees]] equals
  /// [[ReturnShippingFees]].
  SchemaMonetaryAmount? itemDefectReturnShippingFeesAmount;

  /// Specifies either a fixed return date or the number of days (from
  /// the delivery date) that a product can be returned Used when the
  /// [[returnPolicyCategory]] property is specified as
  /// [[MerchantReturnFiniteReturnWindow]].  Supported types:
  /// [String], [String], [int]
  dynamic merchantReturnDays;

  /// Specifies a Web page or service by URL, for product returns.
  String? merchantReturnLink;

  /// A refund type, from an enumerated list.
  SchemaRefundTypeEnumeration? refundType;

  /// Use [[MonetaryAmount]] to specify a fixed restocking fee for
  /// product returns, or use [[Number]] to specify a percentage of
  /// the product price paid by the customer.  Supported types:
  /// [MonetaryAmount], [int]
  dynamic restockingFee;

  /// The type of return fees for purchased products (for any return
  /// reason).
  SchemaReturnFeesEnumeration? returnFees;

  /// The method (from an enumeration) by which the customer obtains a
  /// return shipping label for a product returned for any reason.
  SchemaReturnLabelSourceEnumeration? returnLabelSource;

  /// The type of return method offered, specified from an
  /// enumeration.
  SchemaReturnMethodEnumeration? returnMethod;

  /// Specifies an applicable return policy (from an enumeration).
  SchemaMerchantReturnEnumeration? returnPolicyCategory;

  /// //en.wikipedia.org/wiki/ISO_3166-1) Note that this can be
  /// different from the country where the product was originally
  /// shipped from or sent to.  Supported types: [Country], [String]
  dynamic returnPolicyCountry;

  /// Seasonal override of a return policy.
  SchemaMerchantReturnPolicySeasonalOverride? returnPolicySeasonalOverride;

  /// Amount of shipping costs for product returns (for any reason)
  /// Applicable when property [[returnFees]] equals
  /// [[ReturnShippingFees]].
  SchemaMonetaryAmount? returnShippingFeesAmount;

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

  /// Create a new instance of [SchemaMerchantReturnPolicy]
  SchemaMerchantReturnPolicy({
    this.additionalProperty,
    this.applicableCountry,
    this.customerRemorseReturnFees,
    this.customerRemorseReturnLabelSource,
    this.customerRemorseReturnShippingFeesAmount,
    this.inStoreReturnsOffered,
    this.itemCondition,
    this.itemDefectReturnFees,
    this.itemDefectReturnLabelSource,
    this.itemDefectReturnShippingFeesAmount,
    this.merchantReturnDays,
    this.merchantReturnLink,
    this.refundType,
    this.restockingFee,
    this.returnFees,
    this.returnLabelSource,
    this.returnMethod,
    this.returnPolicyCategory,
    this.returnPolicyCountry,
    this.returnPolicySeasonalOverride,
    this.returnShippingFeesAmount,
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

  /// Serialize [SchemaMerchantReturnPolicy] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        '@context': 'https://schema.org',
        '@type': 'MerchantReturnPolicy',
        'additionalProperty':
            convertToJsonLd(additionalProperty, [SchemaPropertyValue]),
        'applicableCountry':
            convertToJsonLd(applicableCountry, [SchemaCountry, String]),
        'customerRemorseReturnFees': convertToJsonLd(
            customerRemorseReturnFees, [SchemaReturnFeesEnumeration]),
        'customerRemorseReturnLabelSource': convertToJsonLd(
            customerRemorseReturnLabelSource,
            [SchemaReturnLabelSourceEnumeration]),
        'customerRemorseReturnShippingFeesAmount': convertToJsonLd(
            customerRemorseReturnShippingFeesAmount, [SchemaMonetaryAmount]),
        'inStoreReturnsOffered': convertToJsonLd(inStoreReturnsOffered, [bool]),
        'itemCondition':
            convertToJsonLd(itemCondition, [SchemaOfferItemCondition]),
        'itemDefectReturnFees': convertToJsonLd(
            itemDefectReturnFees, [SchemaReturnFeesEnumeration]),
        'itemDefectReturnLabelSource': convertToJsonLd(
            itemDefectReturnLabelSource, [SchemaReturnLabelSourceEnumeration]),
        'itemDefectReturnShippingFeesAmount': convertToJsonLd(
            itemDefectReturnShippingFeesAmount, [SchemaMonetaryAmount]),
        'merchantReturnDays':
            convertToJsonLd(merchantReturnDays, [String, String, int]),
        'merchantReturnLink': convertToJsonLd(merchantReturnLink, [String]),
        'refundType':
            convertToJsonLd(refundType, [SchemaRefundTypeEnumeration]),
        'restockingFee':
            convertToJsonLd(restockingFee, [SchemaMonetaryAmount, int]),
        'returnFees':
            convertToJsonLd(returnFees, [SchemaReturnFeesEnumeration]),
        'returnLabelSource': convertToJsonLd(
            returnLabelSource, [SchemaReturnLabelSourceEnumeration]),
        'returnMethod':
            convertToJsonLd(returnMethod, [SchemaReturnMethodEnumeration]),
        'returnPolicyCategory': convertToJsonLd(
            returnPolicyCategory, [SchemaMerchantReturnEnumeration]),
        'returnPolicyCountry':
            convertToJsonLd(returnPolicyCountry, [SchemaCountry, String]),
        'returnPolicySeasonalOverride': convertToJsonLd(
            returnPolicySeasonalOverride,
            [SchemaMerchantReturnPolicySeasonalOverride]),
        'returnShippingFeesAmount':
            convertToJsonLd(returnShippingFeesAmount, [SchemaMonetaryAmount]),
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
