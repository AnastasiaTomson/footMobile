import 'package:freezed_annotation/freezed_annotation.dart';

part 'standing.freezed.dart';
part 'standing.g.dart';

@freezed
class Standing with _$Standing {
  factory Standing({
    required String teamName,
    String? logo,
    String? color,
    required int gamesPlayed,
    required int wins,
    required int losses,
    required int draws,
    required int points,

  }) = _Standing;

  factory Standing.fromJson(Map<String, dynamic> json) => _$StandingFromJson(json);
}
