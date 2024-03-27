// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'thing.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Thing _$ThingFromJson(Map<String, dynamic> json) => Thing(
      additionalType: json['additionalType'] as String?,
      alternateName: json['alternateName'] as String?,
      description: json['description'] as String?,
      disambiguatingDescription: json['disambiguatingDescription'] as String?,
      identifier: json['identifier'] as String?,
      image: ImageObjectStringConverter.fromJson(json['image']),
      mainEntityOfPage:
          CreativeWorkStringConverter.fromJson(json['mainEntityOfPage']),
      name: json['name'] as String,
      sameAs: json['sameAs'] as String?,
      subjectOf: CreativeWorkEventConverter.fromJson(json['subjectOf']),
      url: json['url'] as String?,
    );

Map<String, dynamic> _$ThingToJson(Thing instance) => <String, dynamic>{
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
    };
