import 'package:foot_mobile/src/domain/models/logos.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'league.freezed.dart';
part 'league.g.dart';

@freezed
class League with _$League {
  factory League({
    required String id,
    required String name,
    required String abbr,
    required Logos logos,
  }) = _League;

  factory League.fromJson(Map<String, dynamic> json) => _$LeagueFromJson(json);
}
