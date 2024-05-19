import 'package:bloc/bloc.dart';
import 'package:foot_mobile/src/domain/interfaces/championship_repository.dart';
import 'package:foot_mobile/src/domain/models/standing.dart';
import 'package:foot_mobile/src/locator.dart';
import 'package:meta/meta.dart';

part 'championship_event.dart';
part 'championship_state.dart';

class ChampionshipBloc extends Bloc<ChampionshipEvent, ChampionshipState> {
  ChampionshipRepository championshipRepository = locator<ChampionshipRepository>();

  ChampionshipBloc() : super(ChampionshipInitial()) {
    on<GetStandings>((event, emit) async {
      emit(ChampionshipInitial());
      List<Standing> standings = await championshipRepository.getStandings(event.leagueId, event.season);
      standings.isNotEmpty ? emit(StandingsReceived(standings)) : emit(StandingsNotReceived());
    });
  }
}
