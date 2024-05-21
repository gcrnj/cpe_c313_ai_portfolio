import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../router/router.dart';

class UnknownScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('404')),
      body: Center(child: Text('Page not found')),
    );
  }
}