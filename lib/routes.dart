import 'package:go_router/go_router.dart';

import 'app_clone/language_learning_mobile/mainappclone.dart';
import 'app_clone/language_learning_mobile/mainscreen.dart';
import 'mainlist.dart';

final router = GoRouter(
  routes: [
    /*
    GoRoute(
      path: '/languagelearning',
      builder: (context, state) => MainLanguageLearning(),
    ),*/
    GoRoute(
        path: '/',
        builder: (context, state) => MainList(),
        routes: <RouteBase>[
          GoRoute(
              path: 'languagelearning',
              builder: (context, state) => MainLanguageLearning(),
              routes: <RouteBase>[
                GoRoute(
                  path: 'languagelearningmainscreen',
                  builder: (context, state) => MainScreenLanguageLearning(),
                )
              ])
        ]),
  ],
);
