part of 'leagues_bloc.dart';

@immutable
sealed class LeaguesEvent {}

class GetLeagues extends LeaguesEvent {}