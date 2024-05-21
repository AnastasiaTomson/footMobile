
import 'package:dio/dio.dart';
import 'package:foot_mobile/src/domain/models/league.dart';
import 'package:foot_mobile/src/domain/models/season.dart';
import 'package:foot_mobile/src/domain/models/standings.dart';
import 'package:foot_mobile/src/locator.dart';
import 'package:foot_mobile/src/utils/constants.dart';

class FootballService {
  Dio dio = locator<Dio>();

  Future<List<League>> getLeagues() async {
    try {
      var response = await dio.get('$baseApiUrl/leagues/');
      if (response.statusCode == 200) {
        List<dynamic> data = response.data['data'];
        return List.generate(data.length, (index) => League.fromJson(data[index]));
      } else {
        return [];
      }
    } catch (ex) {
      return [];
    }
  }

  Future<List<Season>> getSeasons(String leagueId) async {
    try {
      var response = await dio.get('$baseApiUrl/leagues/$leagueId/seasons');
      if (response.statusCode == 200) {
        List<dynamic> data = response.data['data']['seasons'];
        return List.generate(data.length, (index) => Season.fromJson(data[index]));
      } else {
        return [];
      }
    } catch (ex) {
      return [];
    }
  }

  Future<List<Standings>> getStandings(String leagueId, String season) async {
    try {
      var response = await dio.get('$baseApiUrl/leagues/$leagueId/standings?season=$season&sort=asc');
      if (response.statusCode == 200) {
        List<dynamic> data = response.data['data']['standings'];
        return List.generate(data.length, (index) => Standings.fromJson({
          'teamName': data[index]['team']['shortDisplayName'],
          'logo': data[index]['team'].containsKey('logos') ? data[index]['team']['logos'][0]['href'] : null,
          'color': data[index].containsKey('note') ? data[index]['note']['color'] : null,
          'gamesPlayed': data[index]['stats'][0]['value'],
          'wins': data[index]['stats'][7]['value'],
          'losses': data[index]['stats'][1]['value'],
          'draws': data[index]['stats'][6]['value'],
          'points': data[index]['stats'][3]['value'],
        }));
      } else {
        return [];
      }
    } catch (ex) {
      return [];
    }
  }
}
