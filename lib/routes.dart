import 'package:go_router/go_router.dart';

import 'app_clone/assistant_voice/mainscreen.dart';
import 'app_clone/language_learning_mobile/splashscreen.dart';
import 'app_clone/language_learning_mobile/mainscreen.dart';
import 'app_clone/language_learning_mobile/wordscreen.dart';
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
                    routes: <RouteBase>[
                      GoRoute(
                        path:
                            'languagelearningwordscreen/:word/:translatedword',
                        name: 'languagelearningwordscreen',
                        builder: (context, state) => WordScreen(
                          word: state.params['word'],
                          translatedword: state.params['translatedword'],
                        ),
                      )
                    ]),
              ]),
          GoRoute(
            path: 'voiceassistant',
            builder: (context, state) => MainScreenAssistantVoice(),
          )
        ]),
  ],
);
