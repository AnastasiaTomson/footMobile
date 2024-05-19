import 'package:bloc/bloc.dart';
import 'package:foot_mobile/src/domain/interfaces/championship_repository.dart';
import 'package:foot_mobile/src/domain/models/season.dart';
import 'package:foot_mobile/src/locator.dart';
import 'package:meta/meta.dart';

part 'seasons_event.dart';
part 'seasons_state.dart';

class SeasonsBloc extends Bloc<SeasonsEvent, SeasonsState> {
  ChampionshipRepository championshipRepository = locator<ChampionshipRepository>();

  SeasonsBloc() : super(SeasonsInitial()) {
    on<GetSeasons>((event, emit) async{
      List<Season> seasons = await championshipRepository.getSeasons(event.leagueId);
      seasons.isNotEmpty ? emit(SeasonsReceived(seasons)) : emit(SeasonsNotReceived());
    });
  }
}
