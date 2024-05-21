import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:foot_mobile/src/domain/models/league.dart';
import 'package:foot_mobile/src/locator.dart';
import 'package:foot_mobile/src/presentation/blocs/leagues/leagues_bloc.dart';
import 'package:foot_mobile/src/presentation/blocs/seasons/seasons_bloc.dart';
import 'package:foot_mobile/src/presentation/blocs/standings/standings_bloc.dart';
import 'package:foot_mobile/src/presentation/views/widgets/standings_widget.dart';
import 'package:foot_mobile/src/utils/custom_icons_icons.dart';
import 'package:go_router/go_router.dart';

class StandingView extends HookWidget {
  const StandingView({super.key, required this.id});

  final String id;

  @override
  Widget build(BuildContext context) {
  final theme = useState(Theme.of(context));
    final seasonIndex = useState(0);
    League? currentLeague;

    return MultiBlocProvider(
      providers: [
        BlocProvider.value(
          value: locator<LeaguesBloc>(),
        ),
        BlocProvider<SeasonsBloc>(
          create: (context) => locator<SeasonsBloc>()..add(GetSeasons(id)),
        ),
        BlocProvider<StandingsBloc>(
          create: (context) => locator<StandingsBloc>(),
        ),
      ],
      child: BlocBuilder<LeaguesBloc, LeaguesState>(
        builder: (leagueContext, leagueState) {
          if (leagueState is LeaguesReceived){
            currentLeague = leagueState.leagues.firstWhere((league) => league.id == id);
            return Scaffold(
              appBar: AppBar(
                leading: IconButton(
                  icon: Icon(
                    CustomIcons.arrow_left,
                    size: 30,
                    color: theme.value.primaryColor,
                  ),
                  onPressed: () => context.pop(),
                ),
                backgroundColor: theme.value.scaffoldBackgroundColor,
                toolbarHeight: 80,
                title: Text(
                  currentLeague != null ? currentLeague!.name : '',
                  style: theme.value.primaryTextTheme.bodyLarge,
                ),
              ),
              body: Padding(
                padding: EdgeInsets.all(20),
                child: BlocBuilder<StandingsBloc, StandingsState>(
                  builder: (standingsContext, standingsState) {
                    return BlocBuilder<SeasonsBloc, SeasonsState>(
                      builder: (seasonContext, seasonState){
                        if (seasonState is SeasonsReceived) {
                          if (standingsState is! StandingsReceived) {
                            BlocProvider.of<StandingsBloc>(standingsContext)
                                .add(GetStandings(
                                    id,
                                    seasonState.seasons[seasonIndex.value].year
                                        .toString()));
                          }
                          return Column(
                            children: [
                              DropdownButtonFormField2(
                                value: seasonIndex.value,
                                items: List.generate(seasonState.seasons.length,
                                    (index) => DropdownMenuItem(
                                      value: index,
                                      child: Text(
                                        seasonState.seasons[index].displayName,
                                        style: theme.value.primaryTextTheme.bodyMedium,
                                      ),
                                    )
                                  ),
                                onChanged: (value){
                                  seasonIndex.value = value!;
                                  BlocProvider.of<StandingsBloc>(standingsContext).add(GetStandings(id, seasonState.seasons[seasonIndex.value].year.toString()));
                                },
                                style: theme.value.primaryTextTheme.bodyMedium,
                                iconStyleData: IconStyleData(
                                    icon: Icon(
                                      CustomIcons.arrow_down,
                                      color: theme.value.primaryColor,
                                      size: 20,
                                    ),
                                    openMenuIcon: Icon(
                                      CustomIcons.arrow_up,
                                      color: theme.value.primaryColor,
                                      size: 20,
                                    ),
                                    iconSize: 24
                                ),
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.all(10),
                                  filled: true,
                                  floatingLabelBehavior: FloatingLabelBehavior.never,
                                  fillColor: theme.value.cardColor,
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                      borderSide: const BorderSide(width: 0, style: BorderStyle.none)),
                                ),
                                dropdownStyleData: DropdownStyleData(
                                  padding: EdgeInsets.zero,
                                  maxHeight: 250,
                                  elevation: 4,
                                  offset: Offset(0, -5),
                                  decoration: BoxDecoration(
                                        color: theme.value.cardColor,
                                        borderRadius: BorderRadius.circular(10)
                                    ),
                                  scrollbarTheme: ScrollbarThemeData(
                                    thumbColor: MaterialStateProperty.all(theme.value.primaryColor.withOpacity(.05)),
                                    radius: Radius.circular(10),
                                    mainAxisMargin: 10
                                  )
                                ),
                              ),
                              SizedBox(height: 30),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: 20,
                                      child: Text(
                                        '#',
                                        textAlign: TextAlign.center,
                                        style: theme.value.primaryTextTheme.bodyMedium,
                                      ),
                                    ),
                                    SizedBox(width: 4),
                                    Expanded(
                                      child: Text(
                                        'Команда',
                                        style: theme.value.primaryTextTheme.bodyMedium,
                                      ),
                                    ),
                                    SizedBox(width: 8),
                                    SizedBox(
                                      width: 20,
                                      child: Text(
                                        'И',
                                        textAlign: TextAlign.center,
                                        style: theme.value.primaryTextTheme.bodyMedium,
                                      ),
                                    ),
                                    SizedBox(width: 8),
                                    SizedBox(
                                      width: 20,
                                      child: Text(
                                        'В',
                                        textAlign: TextAlign.center,
                                        style: theme.value.primaryTextTheme.bodyMedium,
                                      ),
                                    ),
                                    SizedBox(width: 8),
                                    SizedBox(
                                      width: 20,
                                      child: Text(
                                        'Н',
                                        textAlign: TextAlign.center,
                                        style: theme.value.primaryTextTheme.bodyMedium,
                                      ),
                                    ),
                                    SizedBox(width: 8),
                                    SizedBox(
                                      width: 20,
                                      child: Text(
                                        'П',
                                        textAlign: TextAlign.center,
                                        style: theme.value.primaryTextTheme.bodyMedium,
                                      ),
                                    ),
                                    SizedBox(width: 8),
                                    SizedBox(
                                      width: 20,
                                      child: Text(
                                        'О',
                                        textAlign: TextAlign.center,
                                        style: theme.value.primaryTextTheme.bodyMedium,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Divider(
                                height: 1,
                                color: theme.value.cardColor,
                              ),
                              SizedBox(height: 10),
                              Expanded(
                                child: standingsState is StandingsReceived
                                  ? StandingsWidget(standings: standingsState.standings)
                                  : Center(
                                    child: CircularProgressIndicator(
                                      color: theme.value.primaryColor.withOpacity(.5),
                                    )
                                  )
                              )
                            ],
                          );
                        }
                        return SizedBox();
                      },
                    );
                  },
                ),
              ),
            );
          } return SizedBox();
        },
      ),
    );
  }

}