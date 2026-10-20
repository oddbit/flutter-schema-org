// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.
//
// GENERATED CODE — DO NOT MODIFY BY HAND.
// Produced by the schema_parser tool in /parser.
// ignore_for_file: deprecated_member_use_from_same_package

import 'package:schema_org/src/schema_serializable.dart';

/// The day of the week, e.g. used to specify to which day the opening hours
/// of an OpeningHoursSpecification refer.
///
/// Originally, URLs from [GoodRelations](http://purl.org/goodrelations/v1)
/// were used (for [SchemaMonday], [SchemaTuesday], [SchemaWednesday],
/// [SchemaThursday], [SchemaFriday], [SchemaSaturday], [SchemaSunday] plus a
/// special entry for [SchemaPublicHolidays]); these have now been integrated
/// directly into schema.org.
/// See https://schema.org/DayOfWeek
enum SchemaDayOfWeek implements SchemaSerializable {
  /// The day of the week between Thursday and Saturday.
  friday('https://schema.org/Friday'),

  /// The day of the week between Sunday and Tuesday.
  monday('https://schema.org/Monday'),

  /// This stands for any day that is a public holiday; it is a placeholder
  /// for all official public holidays in some particular location. While
  /// not technically a "day of the week", it can be used with
  /// [SchemaOpeningHoursSpecification]. In the context of an opening hours
  /// specification it can be used to indicate opening hours on public
  /// holidays, overriding general opening hours for the day of the week on
  /// which a public holiday occurs.
  publicHolidays('https://schema.org/PublicHolidays'),

  /// The day of the week between Friday and Sunday.
  saturday('https://schema.org/Saturday'),

  /// The day of the week between Saturday and Monday.
  sunday('https://schema.org/Sunday'),

  /// The day of the week between Wednesday and Friday.
  thursday('https://schema.org/Thursday'),

  /// The day of the week between Monday and Wednesday.
  tuesday('https://schema.org/Tuesday'),

  /// The day of the week between Tuesday and Thursday.
  wednesday('https://schema.org/Wednesday');

  /// Constructor for [SchemaDayOfWeek]
  const SchemaDayOfWeek(this.value);

  /// Canonical Schema.org URL of this member
  final String value;

  /// Serialize [SchemaDayOfWeek] to JSON-LD
  @override
  String toJsonLd() => value;
}
