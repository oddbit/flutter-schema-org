// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.
//
// GENERATED CODE — DO NOT MODIFY BY HAND.
// Produced by the schema_parser tool in /parser.
// ignore_for_file: deprecated_member_use_from_same_package

import 'package:schema_org/src/utils.dart';
import 'package:schema_org/schemas/play_action.dart';
import 'package:schema_org/schemas/place.dart';
import 'package:schema_org/schemas/diet.dart';
import 'package:schema_org/schemas/distance.dart';
import 'package:schema_org/schemas/exercise_plan.dart';
import 'package:schema_org/schemas/person.dart';
import 'package:schema_org/schemas/sports_activity_location.dart';
import 'package:schema_org/schemas/sports_event.dart';
import 'package:schema_org/schemas/sports_team.dart';

/// The act of participating in exertive activity for the purposes of
/// improving health and fitness.
/// See https://schema.org/ExerciseAction
class SchemaExerciseAction extends SchemaPlayAction {
  /// A sub property of location. The course where this action was taken.
  @Deprecated('Use [exerciseCourse]. See https://schema.org/course')
  SchemaPlace? course;

  /// A sub property of instrument. The diet used in this action.
  SchemaDiet? diet;

  /// The distance travelled, e.g. exercising or travelling.
  SchemaDistance? distance;

  /// A sub property of location. The course where this action was taken.
  SchemaPlace? exerciseCourse;

  /// A sub property of instrument. The exercise plan used on this action.
  SchemaExercisePlan? exercisePlan;

  /// A sub property of instrument. The diet used in this action.
  SchemaDiet? exerciseRelatedDiet;

  /// Type(s) of exercise or activity, such as strength training, flexibility
  /// training, aerobics, cardiac rehabilitation, etc.
  String? exerciseType;

  /// A sub property of location. The original location of the object or the
  /// agent before the action.
  SchemaPlace? fromLocation;

  /// A sub property of participant. The opponent on this action.
  SchemaPerson? opponent;

  /// A sub property of location. The sports activity location where this
  /// action occurred.
  SchemaSportsActivityLocation? sportsActivityLocation;

  /// A sub property of location. The sports event where this action occurred.
  SchemaSportsEvent? sportsEvent;

  /// A sub property of participant. The sports team that participated on this
  /// action.
  SchemaSportsTeam? sportsTeam;

  /// A sub property of location. The final location of the object or the agent
  /// after the action.
  SchemaPlace? toLocation;

  /// Create a new instance of [SchemaExerciseAction]
  SchemaExerciseAction({
    super.actionProcess,
    super.actionStatus,
    super.additionalType,
    super.agent,
    super.alternateName,
    super.audience,
    super.description,
    super.disambiguatingDescription,
    super.endTime,
    super.error,
    super.event,
    super.identifier,
    super.image,
    super.instrument,
    super.location,
    super.mainEntityOfPage,
    super.name,
    super.object,
    super.owner,
    super.participant,
    super.potentialAction,
    super.provider,
    super.result,
    super.sameAs,
    super.startTime,
    super.subjectOf,
    super.target,
    super.url,
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
  });

  /// Serialize [SchemaExerciseAction] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'ExerciseAction',
        'course': convertToJsonLd(course),
        'diet': convertToJsonLd(diet),
        'distance': convertToJsonLd(distance),
        'exerciseCourse': convertToJsonLd(exerciseCourse),
        'exercisePlan': convertToJsonLd(exercisePlan),
        'exerciseRelatedDiet': convertToJsonLd(exerciseRelatedDiet),
        'exerciseType': convertToJsonLd(exerciseType),
        'fromLocation': convertToJsonLd(fromLocation),
        'opponent': convertToJsonLd(opponent),
        'sportsActivityLocation': convertToJsonLd(sportsActivityLocation),
        'sportsEvent': convertToJsonLd(sportsEvent),
        'sportsTeam': convertToJsonLd(sportsTeam),
        'toLocation': convertToJsonLd(toLocation),
      });
}
