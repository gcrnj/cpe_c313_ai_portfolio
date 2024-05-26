import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../router/router.dart';
import '../app_bar/custom_app_bar.dart';

class AcademicsScreen extends StatefulWidget {
  const AcademicsScreen({super.key});

  @override
  State<AcademicsScreen> createState() => _AcademicsScreenState();
}

class _AcademicsScreenState extends State<AcademicsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppbar(
        selectedRouter: CustomRouter.academics,
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