// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'postal_address.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PostalAddress _$PostalAddressFromJson(Map<String, dynamic> json) =>
    PostalAddress(
      addressCountry: json['addressCountry'] as String,
      addressLocality: json['addressLocality'] as String,
      addressRegion: json['addressRegion'] as String,
      postOfficeBoxNumber: json['postOfficeBoxNumber'] as String?,
      postalCode: json['postalCode'] as String,
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

Map<String, dynamic> _$PostalAddressToJson(PostalAddress instance) =>
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
      'addressCountry': instance.addressCountry,
      'addressLocality': instance.addressLocality,
      'addressRegion': instance.addressRegion,
      'postOfficeBoxNumber': instance.postOfficeBoxNumber,
      'postalCode': instance.postalCode,
    };
