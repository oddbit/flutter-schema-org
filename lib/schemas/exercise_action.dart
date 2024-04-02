import 'package:schema_org/src/utils.dart';
import 'package:schema_org/src/schema_serializable.dart';
import 'package:schema_org/schemas/place.dart';
import 'package:schema_org/schemas/diet.dart';
import 'package:schema_org/schemas/distance.dart';
import 'package:schema_org/schemas/exercise_plan.dart';
import 'package:schema_org/schemas/person.dart';
import 'package:schema_org/schemas/sports_activity_location.dart';
import 'package:schema_org/schemas/sports_event.dart';
import 'package:schema_org/schemas/sports_team.dart';
import 'package:schema_org/schemas/audience.dart';
import 'package:schema_org/schemas/event.dart';
import 'package:schema_org/schemas/action_status_type.dart';
import 'package:schema_org/schemas/organization.dart';
import 'package:schema_org/schemas/thing.dart';
import 'package:schema_org/schemas/postal_address.dart';
import 'package:schema_org/schemas/virtual_location.dart';
import 'package:schema_org/schemas/entry_point.dart';
import 'package:schema_org/schemas/text_object.dart';
import 'package:schema_org/schemas/property_value.dart';
import 'package:schema_org/schemas/image_object.dart';
import 'package:schema_org/schemas/creative_work.dart';
import 'package:schema_org/schemas/action.dart';

/// The act of participating in exertive activity for the purposes
/// of improving health and fitness.
/// See https://schema.org/ExerciseAction
class SchemaExerciseAction implements SchemaSerializable {
  /// A sub property of location The course where this action was
  /// taken.
  SchemaPlace? course;

  /// A sub property of instrument The diet used in this action.
  SchemaDiet? diet;

  /// The distance travelled, e.g exercising or travelling.
  SchemaDistance? distance;

  /// A sub property of location The course where this action was
  /// taken.
  SchemaPlace? exerciseCourse;

  /// A sub property of instrument The exercise plan used on this
  /// action.
  SchemaExercisePlan? exercisePlan;

  /// A sub property of instrument The diet used in this action.
  SchemaDiet? exerciseRelatedDiet;

  /// Type(s) of exercise or activity, such as strength training,
  /// flexibility training, aerobics, cardiac rehabilitation, etc.
  String? exerciseType;

  /// A sub property of location The original location of the object
  /// or the agent before the action.
  SchemaPlace? fromLocation;

  /// A sub property of participant The opponent on this action.
  SchemaPerson? opponent;

  /// A sub property of location The sports activity location where
  /// this action occurred.
  SchemaSportsActivityLocation? sportsActivityLocation;

  /// A sub property of location The sports event where this action
  /// occurred.
  SchemaSportsEvent? sportsEvent;

  /// A sub property of participant The sports team that participated
  /// on this action.
  SchemaSportsTeam? sportsTeam;

  /// A sub property of location The final location of the object or
  /// the agent after the action.
  SchemaPlace? toLocation;

  /// An intended audience, i.e a group for whom something was
  /// created.
  SchemaAudience? audience;

  /// Upcoming or past event associated with this place, organization,
  /// or action.
  SchemaEvent? event;

  /// Indicates the current disposition of the Action.
  SchemaActionStatusType? actionStatus;

  /// The direct performer or driver of the action (animate or
  /// inanimate) E.g *John* wrote a book.  Supported types:
  /// [Organization], [Person]
  dynamic agent;

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

  /// For failed actions, more information on the cause of the
  /// failure.
  SchemaThing? error;

  /// The object that helped the agent perform the action E.g John
  /// wrote a book with *a pen*.
  SchemaThing? instrument;

  /// The location of, for example, where an event is happening, where
  /// an organization is located, or where an action takes place.
  /// Supported types: [Place], [PostalAddress], [String],
  /// [VirtualLocation]
  dynamic location;

  /// The object upon which the action is carried out, whose state is
  /// kept intact or changed Also known as the semantic roles patient,
  /// affected or undergoer (which change their state) or theme (which
  /// doesn't) E.g John read *a book*.
  SchemaThing? object;

  /// Other co-agents that participated in the action indirectly E.g
  /// John wrote a book with *Steve*.  Supported types:
  /// [Organization], [Person]
  dynamic participant;

  /// The service provider, service operator, or service performer;
  /// the goods producer Another party (a seller) may offer those
  /// services or goods on behalf of the provider A provider may also
  /// serve as the seller.  Supported types: [Organization], [Person]
  dynamic provider;

  /// The result produced in the action E.g John wrote *a book*.
  SchemaThing? result;

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

  /// Indicates a target EntryPoint, or url, for an Action.  Supported
  /// types: [EntryPoint], [String]
  dynamic target;

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

  /// Create a new instance of [SchemaExerciseAction]
  SchemaExerciseAction({
    this.course,
    this.diet,
    this.distance,
    this.exerciseCourse,
    this.exercisePlan,
    this.exerciseRelatedDiet,
    this.exerciseType,
    this.fromLocation,
    this.opponent,
    this.sportsActivityLocation,
    this.sportsEvent,
    this.sportsTeam,
    this.toLocation,
    this.audience,
    this.event,
    this.actionStatus,
    this.agent,
    this.endTime,
    this.error,
    this.instrument,
    this.location,
    this.object,
    this.participant,
    this.provider,
    this.result,
    this.startTime,
    this.target,
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

  /// Serialize [SchemaExerciseAction] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        '@context': 'https://schema.org',
        '@type': 'ExerciseAction',
        'course': convertToJsonLd(course, [SchemaPlace]),
        'diet': convertToJsonLd(diet, [SchemaDiet]),
        'distance': convertToJsonLd(distance, [SchemaDistance]),
        'exerciseCourse': convertToJsonLd(exerciseCourse, [SchemaPlace]),
        'exercisePlan': convertToJsonLd(exercisePlan, [SchemaExercisePlan]),
        'exerciseRelatedDiet':
            convertToJsonLd(exerciseRelatedDiet, [SchemaDiet]),
        'exerciseType': convertToJsonLd(exerciseType, [String]),
        'fromLocation': convertToJsonLd(fromLocation, [SchemaPlace]),
        'opponent': convertToJsonLd(opponent, [SchemaPerson]),
        'sportsActivityLocation': convertToJsonLd(
            sportsActivityLocation, [SchemaSportsActivityLocation]),
        'sportsEvent': convertToJsonLd(sportsEvent, [SchemaSportsEvent]),
        'sportsTeam': convertToJsonLd(sportsTeam, [SchemaSportsTeam]),
        'toLocation': convertToJsonLd(toLocation, [SchemaPlace]),
        'audience': convertToJsonLd(audience, [SchemaAudience]),
        'event': convertToJsonLd(event, [SchemaEvent]),
        'actionStatus': convertToJsonLd(actionStatus, [SchemaActionStatusType]),
        'agent': convertToJsonLd(agent, [SchemaOrganization, SchemaPerson]),
        'endTime': convertToJsonLd(endTime, [String, String]),
        'error': convertToJsonLd(error, [SchemaThing]),
        'instrument': convertToJsonLd(instrument, [SchemaThing]),
        'location': convertToJsonLd(location,
            [SchemaPlace, SchemaPostalAddress, String, SchemaVirtualLocation]),
        'object': convertToJsonLd(object, [SchemaThing]),
        'participant':
            convertToJsonLd(participant, [SchemaOrganization, SchemaPerson]),
        'provider':
            convertToJsonLd(provider, [SchemaOrganization, SchemaPerson]),
        'result': convertToJsonLd(result, [SchemaThing]),
        'startTime': convertToJsonLd(startTime, [String, String]),
        'target': convertToJsonLd(target, [SchemaEntryPoint, String]),
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
