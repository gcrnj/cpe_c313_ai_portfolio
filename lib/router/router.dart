
import 'package:cpe_c313_ai_portfolio/ui/pages/unknown_screen.dart';
import 'package:go_router/go_router.dart';

import '../ui/pages/about_me_screen.dart';
import '../ui/pages/academic_screen.dart';
import '../ui/pages/welcome_screen.dart';

enum CustomRouter {

  welcome("Welcome", "/welcome"),
  aboutMe("About Me", "/about_me"),
  academics("Academics", "/academics"),
  unknown("Unknown", "/unknown"),
  ;


  final String name;
  final String path;
  const CustomRouter(this.name, this.path);

}

final _router = GoRouter(
  routes: [
    GoRoute(
      name: CustomRouter.welcome.name,
      path: CustomRouter.welcome.path,
      builder: (context, state) => WelcomeScreen(),
    ),
    GoRoute(
      name: CustomRouter.aboutMe.name,
      path: CustomRouter.aboutMe.path,
      builder: (context, state) => AboutMeScreen(),
    ),
    GoRoute(
      name: CustomRouter.academics.name,
      path: CustomRouter.academics.path,
      builder: (context, state) => AcademicsScreen(),
    ),
    GoRoute(
      name: CustomRouter.unknown.name,
      path: CustomRouter.unknown.path,
      builder: (context, state) => UnknownScreen(),
    ),
  ],
  initialLocation: CustomRouter.welcome.path,
);

final goRouter = _router;