part of 'standings_bloc.dart';

@immutable
sealed class StandingsState {}

final class StandingsInitial extends StandingsState {}

final class StandingsReceived extends StandingsState {
  final List<Standings> standings;

  StandingsReceived(this.standings);
}

final class StandingsNotReceived extends StandingsState {}