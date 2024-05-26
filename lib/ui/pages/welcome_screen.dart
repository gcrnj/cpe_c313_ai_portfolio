import 'package:cpe_c313_ai_portfolio/ui/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../router/router.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppbar(
        selectedRouter: CustomRouter.welcome,
      ),
      body: SingleChildScrollView(
          child: Column(
            children: [
              Icon(Icons.abc)
            ],
          )),
    );
  }
}