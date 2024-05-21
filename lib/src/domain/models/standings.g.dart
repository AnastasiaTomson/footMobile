// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'standings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StandingsImpl _$$StandingsImplFromJson(Map<String, dynamic> json) =>
    _$StandingsImpl(
      teamName: json['teamName'] as String,
      logo: json['logo'] as String?,
      color: json['color'] as String?,
      gamesPlayed: (json['gamesPlayed'] as num).toInt(),
      wins: (json['wins'] as num).toInt(),
      losses: (json['losses'] as num).toInt(),
      draws: (json['draws'] as num).toInt(),
      points: (json['points'] as num).toInt(),
    );

Map<String, dynamic> _$$StandingsImplToJson(_$StandingsImpl instance) =>
    <String, dynamic>{
      'teamName': instance.teamName,
      'logo': instance.logo,
      'color': instance.color,
      'gamesPlayed': instance.gamesPlayed,
      'wins': instance.wins,
      'losses': instance.losses,
      'draws': instance.draws,
      'points': instance.points,
    };
