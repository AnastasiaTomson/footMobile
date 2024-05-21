part of 'standings_bloc.dart';

@immutable
sealed class StandingEvent {}

class GetStandings extends StandingEvent{
  final String leagueId;
  final String season;

  GetStandings(this.leagueId, this.season);
}