library schema_org;

import 'package:schema_org/utils.dart';
import 'package:schema_org/schema_org.dart';
import 'package:schema_org/schemas/software_application.dart';
import 'package:schema_org/schemas/web_site.dart';
import 'package:schema_org/schemas/action.dart';
import 'package:schema_org/schemas/place.dart';
import 'package:schema_org/schemas/postal_address.dart';
import 'package:schema_org/schemas/virtual_location.dart';
import 'package:schema_org/schemas/text_object.dart';
import 'package:schema_org/schemas/property_value.dart';
import 'package:schema_org/schemas/image_object.dart';
import 'package:schema_org/schemas/creative_work.dart';
import 'package:schema_org/schemas/event.dart';

/// A summary of how users have interacted with this CreativeWork In
/// most cases, authors will use a subtype to specify the specific
/// type of interaction.
/// See https://schema.org/InteractionCounter
class SchemaInteractionCounter implements SchemaSerializable {
  /// The endTime of something For a reserved event or service (e.g
  /// FoodEstablishmentReservation), the time that it is expected to
  /// end For actions that span a period of time, when the action was
  /// performed E.g John wrote a book from January to *December* For
  /// media, including audio and video, it's the time offset of the
  /// end of a clip within a larger file.\n\nNote that Event uses
  /// startDate/endDate instead of startTime/endTime, even when
  /// describing dates with times This situation may be clarified in
  /// future revisions.  Supported types: [String], [String]
  String? endTime;

  /// The WebSite or SoftwareApplication where the interactions took
  /// place.  Supported types: [SoftwareApplication], [WebSite]
  dynamic interactionService;

  /// The Action representing the type of interaction For up votes,
  /// +1s, etc use [[LikeAction]] For down votes use [[DislikeAction]]
  /// Otherwise, use the most specific Action.
  SchemaAction? interactionType;

  /// The location of, for example, where an event is happening, where
  /// an organization is located, or where an action takes place.
  /// Supported types: [Place], [PostalAddress], [String],
  /// [VirtualLocation]
  dynamic location;

  /// The startTime of something For a reserved event or service (e.g
  /// FoodEstablishmentReservation), the time that it is expected to
  /// start For actions that span a period of time, when the action
  /// was performed E.g John wrote a book from *January* to December
  /// For media, including audio and video, it's the time offset of
  /// the start of a clip within a larger file.\n\nNote that Event
  /// uses startDate/endDate instead of startTime/endTime, even when
  /// describing dates with times This situation may be clarified in
  /// future revisions.  Supported types: [String], [String]
  String? startTime;

  /// The number of interactions for the CreativeWork using the
  /// WebSite or SoftwareApplication.
  int? userInteractionCount;

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

  /// Create a new instance of [SchemaInteractionCounter]
  SchemaInteractionCounter({
    this.endTime,
    this.interactionService,
    this.interactionType,
    this.location,
    this.startTime,
    this.userInteractionCount,
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

  /// Serialize [SchemaInteractionCounter] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        '@context': 'https://schema.org',
        '@type': 'InteractionCounter',
        'endTime': convertToJsonLd(endTime, [String, String]),
        'interactionService': convertToJsonLd(
            interactionService, [SchemaSoftwareApplication, SchemaWebSite]),
        'interactionType': convertToJsonLd(interactionType, [SchemaAction]),
        'location': convertToJsonLd(location,
            [SchemaPlace, SchemaPostalAddress, String, SchemaVirtualLocation]),
        'startTime': convertToJsonLd(startTime, [String, String]),
        'userInteractionCount': convertToJsonLd(userInteractionCount, [int]),
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
