// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'organization.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Organization _$OrganizationFromJson(Map<String, dynamic> json) => Organization(
      address: json['address'] == null
          ? null
          : PostalAddress.fromJson(json['address'] as Map<String, dynamic>),
      email: json['email'] as String?,
      faxNumber: json['faxNumber'] as String?,
      iso6523Code: (json['iso6523Code'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      member: (json['member'] as List<dynamic>?)
          ?.map((e) => Organization.fromJson(e as Map<String, dynamic>))
          .toList(),
      alumni: (json['alumni'] as List<dynamic>?)
          ?.map((e) => Person.fromJson(e as Map<String, dynamic>))
          .toList(),
      telephone: json['telephone'] as String?,
      additionalType: json['additionalType'] as String?,
      alternateName: json['alternateName'] as String?,
      description: json['description'] as String?,
      disambiguatingDescription: json['disambiguatingDescription'] as String?,
      identifier: json['identifier'] as String?,
      image: ImageObjectStringConverter.fromJson(json['image']),
      name: json['name'] as String,
      sameAs: json['sameAs'] as String?,
      subjectOf: CreativeWorkEventConverter.fromJson(json['subjectOf']),
      url: json['url'] as String?,
    )..mainEntityOfPage =
        CreativeWorkStringConverter.fromJson(json['mainEntityOfPage']);

Map<String, dynamic> _$OrganizationToJson(Organization instance) =>
    <String, dynamic>{
      'additionalType': instance.additionalType,
      'alternateName': instance.alternateName,
      'description': instance.description,
      'disambiguatingDescription': instance.disambiguatingDescription,
      'identifier': instance.identifier,
      'image': ImageObjectStringConverter.toJson(instance.image),
      'mainEntityOfPage':
          CreativeWorkStringConverter.toJson(instance.mainEntityOfPage),
      'name': instance.name,
      'sameAs': instance.sameAs,
      'subjectOf': CreativeWorkEventConverter.toJson(instance.subjectOf),
      'url': instance.url,
      'address': instance.address,
      'email': instance.email,
      'faxNumber': instance.faxNumber,
      'iso6523Code': instance.iso6523Code,
      'member': instance.member,
      'alumni': instance.alumni,
      'telephone': instance.telephone,
    };
