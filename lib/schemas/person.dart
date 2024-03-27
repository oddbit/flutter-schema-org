import 'package:json_annotation/json_annotation.dart';
import 'package:schema_org/converters/creative_work_event.dart';
import 'package:schema_org/converters/creative_work_string.dart';
import 'package:schema_org/converters/image_object_string.dart';
import 'package:schema_org/schemas/thing.dart';
import 'package:schema_org/schemas/postal_address.dart';

part 'person.g.dart';

/// Implements Person schema, see https://schema.org/Person
@JsonSerializable()
class Person extends Thing {
  Person({
    this.address,
    this.colleague,
    this.email,
    this.jobTitle,
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

  factory Person.fromJson(Map<String, dynamic> json) => _$PersonFromJson(json);

  @override
  @JsonKey(name: '@type')
  get type => 'Person';

  @JsonKey(name: 'address')
  final PostalAddress? address;

  @JsonKey(name: 'colleague')
  final List<String>? colleague;

  @JsonKey(name: 'email')
  final String? email;

  @JsonKey(name: 'jobTitle')
  final String? jobTitle;

  @JsonKey(name: 'telephone')
  final String? telephone;

  @override
  Map<String, dynamic> toJson() => _$PersonToJson(this);
}
