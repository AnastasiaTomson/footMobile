import 'package:foot_mobile/src/presentation/views/championship_view.dart';
import 'package:foot_mobile/src/presentation/views/championships_view.dart';
import 'package:go_router/go_router.dart';

import '../../utils/constants.dart';

GoRouter router = GoRouter(
    initialLocation: '/home',
    routes: [
      GoRoute(
        path: '/home',
        name: RouteNames.home,
        builder: (context, state) => ChampionshipsView(),
        routes: [
          GoRoute(
            path: ':id',
            name: RouteNames.championship,
            builder: (context, state) => ChampionshipView(id: state.pathParameters["id"]!),
          ),
        ]
      ),
    ]
);