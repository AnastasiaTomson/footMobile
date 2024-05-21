import 'package:foot_mobile/src/presentation/views/standings_view.dart';
import 'package:foot_mobile/src/presentation/views/leagues_view.dart';
import 'package:go_router/go_router.dart';

import '../../utils/constants.dart';

GoRouter router = GoRouter(
    initialLocation: '/home',
    routes: [
      GoRoute(
        path: '/home',
        name: RouteNames.home,
        builder: (context, state) => LeaguesView(),
        routes: [
          GoRoute(
            path: ':id',
            name: RouteNames.championship,
            builder: (context, state) => StandingView(id: state.pathParameters["id"]!),
          ),
        ]
      ),
    ]
);