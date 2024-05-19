import 'package:bloc/bloc.dart';
import 'package:foot_mobile/src/domain/interfaces/championship_repository.dart';
import 'package:foot_mobile/src/domain/models/league.dart';
import 'package:foot_mobile/src/locator.dart';
import 'package:meta/meta.dart';

part 'championships_event.dart';
part 'championships_state.dart';

class ChampionshipsBloc extends Bloc<ChampionshipsEvent, ChampionshipsState> {
  ChampionshipRepository championshipRepository = locator<ChampionshipRepository>();

  ChampionshipsBloc() : super(ChampionshipsInitial()) {
    on<GetLeagues>((event, emit) async {
      List<League> leagues = await championshipRepository.getLeagues();
      leagues.isNotEmpty ? emit(LeaguesReceived(leagues)) : emit(LeaguesNotReceived());
    });
  }
}
