// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'person.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Person _$PersonFromJson(Map<String, dynamic> json) => Person(
      address: json['address'] == null
          ? null
          : PostalAddress.fromJson(json['address'] as Map<String, dynamic>),
      colleague: (json['colleague'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      email: json['email'] as String?,
      jobTitle: json['jobTitle'] as String?,
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

Map<String, dynamic> _$PersonToJson(Person instance) => <String, dynamic>{
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
      'colleague': instance.colleague,
      'email': instance.email,
      'jobTitle': instance.jobTitle,
      'telephone': instance.telephone,
    };
