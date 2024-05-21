import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:foot_mobile/src/config/router/app_router.dart';
import 'package:foot_mobile/src/config/themes/app_themes.dart';
import 'package:foot_mobile/src/locator.dart';
import 'package:foot_mobile/src/presentation/blocs/leagues/leagues_bloc.dart';
import 'package:foot_mobile/src/utils/constants.dart';

class FootMobileApp extends StatelessWidget {

  const FootMobileApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (_) => locator<LeaguesBloc>(),
        child: MaterialApp.router(
          routerConfig: router,
          debugShowCheckedModeBanner: false,
          title: materialAppTitle,
          theme: AppTheme.dark,
          localizationsDelegates: [
            GlobalMaterialLocalizations.delegate
          ],
        )
    );
  }
}