part of 'championship_bloc.dart';

@immutable
sealed class ChampionshipState {}

final class ChampionshipInitial extends ChampionshipState {}

final class StandingsReceived extends ChampionshipState {
  final List<Standing> standings;

  StandingsReceived(this.standings);
}

final class StandingsNotReceived extends ChampionshipState {}