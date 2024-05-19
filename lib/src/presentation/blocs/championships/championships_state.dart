part of 'championships_bloc.dart';

@immutable
sealed class ChampionshipsState {}

final class ChampionshipsInitial extends ChampionshipsState {}

final class LeaguesReceived extends ChampionshipsState {
  final List<League> leagues;

  LeaguesReceived(this.leagues);
}

final class LeaguesNotReceived extends ChampionshipsState {}