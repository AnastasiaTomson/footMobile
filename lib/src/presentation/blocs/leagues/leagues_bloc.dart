import 'package:bloc/bloc.dart';
import 'package:foot_mobile/src/domain/interfaces/championship_repository.dart';
import 'package:foot_mobile/src/domain/models/league.dart';
import 'package:foot_mobile/src/locator.dart';
import 'package:meta/meta.dart';

part 'leagues_event.dart';
part 'leagues_state.dart';

class LeaguesBloc extends Bloc<LeaguesEvent, LeaguesState> {
  ChampionshipRepository championshipRepository = locator<ChampionshipRepository>();

  LeaguesBloc() : super(LeaguesInitial()) {
    on<GetLeagues>((event, emit) async {
      List<League> leagues = await championshipRepository.getLeagues();
      leagues.isNotEmpty ? emit(LeaguesReceived(leagues)) : emit(LeaguesNotReceived());
    });
  }
}
