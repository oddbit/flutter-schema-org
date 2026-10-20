// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.

/// Thrown when a value is assigned to a generated Schema.org property
/// whose runtime type falls outside the set of Dart types declared for
/// that property's Schema.org range.
///
/// This normally means a dynamic-typed property (e.g.
/// `SchemaOrganization.founder` accepts `SchemaOrganization` or
/// `SchemaPerson`, including their subtypes) was set to something else. Catching this exception is only useful when you accept user input
/// that flows into a schema object; generated code itself never throws it
/// for values it constructs.
class UnsupportedTypeException implements Exception {
  /// Creates a new instance of [UnsupportedTypeException].
  UnsupportedTypeException(this.type);

  /// The runtime type that could not be serialized.
  final Type type;

  @override
  String toString() => 'UnsupportedTypeException: $type';
}
