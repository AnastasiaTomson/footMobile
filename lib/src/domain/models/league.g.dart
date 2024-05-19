// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'league.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LeagueImpl _$$LeagueImplFromJson(Map<String, dynamic> json) => _$LeagueImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      abbr: json['abbr'] as String,
      logos: Logos.fromJson(json['logos'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$LeagueImplToJson(_$LeagueImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'abbr': instance.abbr,
      'logos': instance.logos,
    };
