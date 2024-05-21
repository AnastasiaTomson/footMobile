part of 'leagues_bloc.dart';

@immutable
sealed class LeaguesState {}

final class LeaguesInitial extends LeaguesState {}

final class LeaguesReceived extends LeaguesState {
  final List<League> leagues;

  LeaguesReceived(this.leagues);
}

final class LeaguesNotReceived extends LeaguesState {}