import 'package:bloc/bloc.dart';
import 'package:foot_mobile/src/domain/interfaces/championship_repository.dart';
import 'package:foot_mobile/src/domain/models/standings.dart';
import 'package:foot_mobile/src/locator.dart';
import 'package:meta/meta.dart';

part 'standings_event.dart';
part 'standings_state.dart';

class StandingsBloc extends Bloc<StandingEvent, StandingsState> {
  ChampionshipRepository championshipRepository = locator<ChampionshipRepository>();

  StandingsBloc() : super(StandingsInitial()) {
    on<GetStandings>((event, emit) async {
      List<Standings> standings = await championshipRepository.getStandings(event.leagueId, event.season);
      standings.isNotEmpty ? emit(StandingsReceived(standings)) : emit(StandingsNotReceived());
    });
  }
}
