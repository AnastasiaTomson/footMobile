import 'package:freezed_annotation/freezed_annotation.dart';

part 'standings.freezed.dart';
part 'standings.g.dart';

@freezed
class Standings with _$Standings {
  factory Standings({
    required String teamName,
    String? logo,
    String? color,
    required int gamesPlayed,
    required int wins,
    required int losses,
    required int draws,
    required int points,

  }) = _Standings;

  factory Standings.fromJson(Map<String, dynamic> json) => _$StandingsFromJson(json);
}
