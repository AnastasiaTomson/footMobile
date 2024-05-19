part of 'seasons_bloc.dart';

@immutable
sealed class SeasonsState {}

final class SeasonsInitial extends SeasonsState {}

final class SeasonsReceived extends SeasonsState {
  final List<Season> seasons;

  SeasonsReceived(this.seasons);
}

final class SeasonsNotReceived extends SeasonsState {}
