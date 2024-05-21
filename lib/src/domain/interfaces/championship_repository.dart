import 'package:foot_mobile/src/domain/models/league.dart';
import 'package:foot_mobile/src/domain/models/season.dart';
import 'package:foot_mobile/src/domain/models/standings.dart';

abstract class ChampionshipRepository {
  Future<List<League>> getLeagues();
  Future<List<Season>> getSeasons(String leagueId);
  Future<List<Standings>> getStandings(String leagueId, String season);
}
