part of 'seasons_bloc.dart';

@immutable
sealed class SeasonsEvent {}

class GetSeasons extends SeasonsEvent{
  final String leagueId;

  GetSeasons(this.leagueId);
}