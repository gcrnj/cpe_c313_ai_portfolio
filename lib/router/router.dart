import 'package:cpe_c313_ai_portfolio/router/rtl_transition_page.dart';
import 'package:cpe_c313_ai_portfolio/ui/pages/unknown_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../ui/pages/about_me_screen.dart';
import '../ui/pages/academic_screen.dart';
import '../ui/pages/welcome_screen.dart';

enum CustomRouter {
  welcome("Welcome", "/welcome", Icons.home_rounded),
  aboutMe("About Me", "/about_me", Icons.person_rounded),
  academics("Academics", "/academics", Icons.book_rounded),
  unknown("Unknown", "/unknown", null);

  final String name;
  final String path;
  final IconData? icon;

  const CustomRouter(this.name, this.path, this.icon);
}

final _router = GoRouter(
  routes: [
    GoRoute(
      name: CustomRouter.welcome.name,
      path: CustomRouter.welcome.path,
      pageBuilder: (context, state) => NoTransitionPage(
        child: WelcomeScreen(),
      ),
    ),
    GoRoute(
      name: CustomRouter.aboutMe.name,
      path: CustomRouter.aboutMe.path,
      pageBuilder: (context, state) => NoTransitionPage(
        child: AboutMeScreen(),
      ),
    ),
    GoRoute(
      name: CustomRouter.academics.name,
      path: CustomRouter.academics.path,
      pageBuilder: (context, state) => NoTransitionPage(
        child: AcademicsScreen(),
      ),
    ),
    GoRoute(
      name: CustomRouter.unknown.name,
      path: CustomRouter.unknown.path,
      pageBuilder: (context, state) => NoTransitionPage(
        child: UnknownScreen(),
      ),
      builder: (context, state) => UnknownScreen(),
    ),
  ],
  initialLocation: CustomRouter.welcome.path,
);

final goRouter = _router;
