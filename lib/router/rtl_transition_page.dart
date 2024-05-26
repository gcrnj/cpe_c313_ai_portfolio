import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class RightToLeftTransitionPage<T> extends CustomTransitionPage<T> {
  RightToLeftTransitionPage({
    required super.child,
  }) : super(
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(1.0, 0.0);
      const end = Offset.zero;
      const curve = Curves.ease;

      final tween = Tween(begin: begin, end: end).chain(
        CurveTween(curve: curve),
      );

      final offsetAnimation = animation.drive(tween);

      return SlideTransition(
        position: offsetAnimation,
        child: child,
      );
    },
  );
}
