import 'package:json_annotation/json_annotation.dart';
import 'package:schema_org/converters/creative_work_event.dart';
import 'package:schema_org/converters/creative_work_string.dart';
import 'package:schema_org/converters/image_object_string.dart';
import 'package:schema_org/schemas/thing.dart';

part 'postal_address.g.dart';

/// Implements PostalAddress schema, see https://schema.org/PostalAddress
@JsonSerializable()
class PostalAddress extends Thing {
  PostalAddress({
    required this.addressCountry,
    required this.addressLocality,
    required this.addressRegion,
    this.postOfficeBoxNumber,
    required this.postalCode,
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

  factory PostalAddress.fromJson(Map<String, dynamic> json) =>
      _$PostalAddressFromJson(json);

  @override
  @JsonKey(name: '@type')
  get type => 'PostalAddress';

  @JsonKey(name: 'addressCountry')
  final String addressCountry;

  @JsonKey(name: 'addressLocality')
  final String addressLocality;

  @JsonKey(name: 'addressRegion')
  final String addressRegion;

  @JsonKey(name: 'postOfficeBoxNumber')
  final String? postOfficeBoxNumber;

  @JsonKey(name: 'postalCode')
  final String postalCode;

  @override
  Map<String, dynamic> toJson() => _$PostalAddressToJson(this);
}
