import 'package:flutter/material.dart';

import '../../router/router.dart';
import '../app_bar/custom_app_bar.dart';

class AboutMeScreen extends StatefulWidget {
  const AboutMeScreen({super.key});

  @override
  State<AboutMeScreen> createState() => _AboutMeScreenState();
}

class _AboutMeScreenState extends State<AboutMeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppbar(
        selectedRouter: CustomRouter.aboutMe,
      ),
      body: SingleChildScrollView(
          child: Column(
            children: [
            ],
          )),
    );
  }
}