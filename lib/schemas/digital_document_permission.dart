// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.
//
// GENERATED CODE — DO NOT MODIFY BY HAND.
// Produced by the schema_parser tool in /parser.
// ignore_for_file: deprecated_member_use_from_same_package

import 'package:schema_org/src/utils.dart';
import 'package:schema_org/schemas/intangible.dart';
import 'package:schema_org/schemas/audience.dart';
import 'package:schema_org/schemas/contact_point.dart';
import 'package:schema_org/schemas/organization.dart';
import 'package:schema_org/schemas/person.dart';
import 'package:schema_org/schemas/digital_document_permission_type.dart';

/// A permission for a particular person or group to access a particular
/// file.
/// See https://schema.org/DigitalDocumentPermission
class SchemaDigitalDocumentPermission extends SchemaIntangible {
  /// The person, organization, contact point, or audience that has been
  /// granted this permission.
  ///
  /// Supported types: [SchemaAudience], [SchemaContactPoint],
  /// [SchemaOrganization], [SchemaPerson]
  dynamic grantee;

  /// The type of permission granted the person, organization, or audience.
  SchemaDigitalDocumentPermissionType? permissionType;

  /// Create a new instance of [SchemaDigitalDocumentPermission]
  SchemaDigitalDocumentPermission({
    super.additionalType,
    super.alternateName,
    super.description,
    super.disambiguatingDescription,
    super.identifier,
    super.image,
    super.mainEntityOfPage,
    super.name,
    super.owner,
    super.potentialAction,
    super.sameAs,
    super.subjectOf,
    super.url,
    this.grantee,
    this.permissionType,
  });

  /// Serialize [SchemaDigitalDocumentPermission] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'DigitalDocumentPermission',
        'grantee': convertToJsonLd(grantee, [
          SchemaAudience,
          SchemaContactPoint,
          SchemaOrganization,
          SchemaPerson
        ]),
        'permissionType': convertToJsonLd(
            permissionType, [SchemaDigitalDocumentPermissionType]),
      });
}
