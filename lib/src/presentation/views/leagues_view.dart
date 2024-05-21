import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:foot_mobile/src/locator.dart';
import 'package:foot_mobile/src/presentation/blocs/leagues/leagues_bloc.dart';
import 'package:foot_mobile/src/utils/constants.dart';
import 'package:foot_mobile/src/utils/custom_icons_icons.dart';
import 'package:go_router/go_router.dart';

class LeaguesView extends HookWidget {
  const LeaguesView({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = useState(Theme.of(context));

    return BlocProvider<LeaguesBloc>(
      create: (context) => locator<LeaguesBloc>()..add(GetLeagues()),
      child: BlocBuilder<LeaguesBloc, LeaguesState>(
        builder: (context, state) {
          return Scaffold(
            backgroundColor: theme.value.scaffoldBackgroundColor,
            appBar: AppBar(
              backgroundColor: theme.value.scaffoldBackgroundColor,
              centerTitle: true,
              toolbarHeight: 80,
              title:Text(
                'Лиги',
                style: theme.value.primaryTextTheme.titleMedium,
              ),
            ),
            body: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Expanded(
                    child: state is LeaguesReceived
                        ? ListView.separated(
                            scrollDirection: Axis.vertical,
                            shrinkWrap: true,
                            separatorBuilder: (context, index) => SizedBox(height: 10),
                            itemCount: state.leagues.length,
                            itemBuilder: (context, index) {
                              return Card(
                                color: theme.value.cardColor,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(16),
                                ),
                                child: ListTile(
                                  onTap: () {
                                    context.goNamed(RouteNames.championship, pathParameters: {'id': state.leagues[index].id.toString()});
                                  },
                                  title: Text(
                                    state.leagues[index].name,
                                    style: theme.value.primaryTextTheme.bodyMedium,
                                  ),
                                  leading: Image.network(
                                    state.leagues[index].logos.dark.replaceAll('"', ''),
                                    width: 25,
                                  ),
                                  trailing: Icon(
                                    CustomIcons.arrow_right,
                                    size: 20,
                                    color: theme.value.primaryColor,
                                  ),
                                  subtitle: Text(
                                    state.leagues[index].abbr,
                                    style: theme.value.primaryTextTheme.bodySmall,
                                  ),
                                ),
                              );
                            },
                        )
                        : Center(
                        child: CircularProgressIndicator(
                          color: theme.value.primaryColor.withOpacity(.5),
                        )
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }

}