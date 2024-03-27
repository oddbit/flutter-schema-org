import 'package:json_annotation/json_annotation.dart';
import 'package:schema_org/converters/creative_work_event.dart';
import 'package:schema_org/converters/creative_work_string.dart';
import 'package:schema_org/converters/image_object_string.dart';
import 'package:schema_org/schemas/thing.dart';
import 'package:schema_org/schemas/postal_address.dart';
import 'package:schema_org/schemas/person.dart';

part 'organization.g.dart';

/// Implements Organization schema, see https://schema.org/Organization
@JsonSerializable()
class Organization extends Thing {
  Organization({
    this.address,
    this.email,
    this.faxNumber,
    this.iso6523Code,
    this.member,
    this.alumni,
    this.telephone,
    super.additionalType,
    super.alternateName,
    super.description,
    super.disambiguatingDescription,
    super.identifier,
    super.image,
    required super.name,
    super.sameAs,
    super.subjectOf,
    super.url,
  });

  factory Organization.fromJson(Map<String, dynamic> json) =>
      _$OrganizationFromJson(json);

  @override
  get type => 'Organization';

  final PostalAddress? address;

  final String? email;

  final String? faxNumber;

  final List<String>? iso6523Code;

  final List<Organization>? member;

  final List<Person>? alumni;

  final String? telephone;

  @override
  Map<String, dynamic> toJson() => _$OrganizationToJson(this);
}
