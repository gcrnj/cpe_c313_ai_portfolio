import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../router/router.dart';

class AcademicsScreen extends StatelessWidget {
  const AcademicsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Academics')),
      body: Center(child: Text('Academics Screen')),
    );
  }
}