part of 'championship_bloc.dart';

@immutable
sealed class ChampionshipEvent {}

class GetStandings extends ChampionshipEvent{
  final String leagueId;
  final String season;

  GetStandings(this.leagueId, this.season);
}