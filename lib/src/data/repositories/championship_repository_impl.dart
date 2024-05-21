import 'package:foot_mobile/src/data/data_source/remote/championship_service.dart';
import 'package:foot_mobile/src/domain/interfaces/championship_repository.dart';
import 'package:foot_mobile/src/domain/models/league.dart';
import 'package:foot_mobile/src/domain/models/season.dart';
import 'package:foot_mobile/src/domain/models/standings.dart';
import 'package:foot_mobile/src/locator.dart';

class ChampionshipRepositoryImpl implements ChampionshipRepository {
  FootballService footballService = locator<FootballService>();

  @override
  Future<List<League>> getLeagues() async {
    try {
      return await footballService.getLeagues();
    } catch (e) {
      return [];
    }
  }

  @override
  Future<List<Season>> getSeasons(String leagueId) async {
    try {
      return await footballService.getSeasons(leagueId);
    } catch (e) {
      return [];
    }
  }

  @override
  Future<List<Standings>> getStandings(String leagueId, String season) async {
    try {
      return await footballService.getStandings(leagueId, season);
    } catch (e) {
      return [];
    }
  }

}
