// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'creative_work.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreativeWork _$CreativeWorkFromJson(Map<String, dynamic> json) => CreativeWork(
      dateCreated: json['dateCreated'] == null
          ? null
          : DateTime.parse(json['dateCreated'] as String),
      dateModified: json['dateModified'] == null
          ? null
          : DateTime.parse(json['dateModified'] as String),
      author: json['author'] as String?,
      awards:
          (json['awards'] as List<dynamic>?)?.map((e) => e as String).toList(),
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

Map<String, dynamic> _$CreativeWorkToJson(CreativeWork instance) =>
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
      'dateCreated': instance.dateCreated?.toIso8601String(),
      'dateModified': instance.dateModified?.toIso8601String(),
      'author': instance.author,
      'awards': instance.awards,
    };
