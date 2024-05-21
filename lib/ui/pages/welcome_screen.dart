import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../router/router.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // How to get the parameter?
    // final uri = Uri.parse(location);
    // final abc = uri.queryParameters['abc'] ?? '123';

    return Scaffold(
      appBar: AppBar(title: Text('Welcome')),
      body: SingleChildScrollView(child: Column(
        children: [
          Text('Welcome Screen'),
          ElevatedButton(onPressed: () {
            // Navigator.of(context).push(
            //   MaterialPageRoute(
            //     builder: (context) => AboutMeScreen(),
            //   ),
            // );
            context.go(CustomRouter.aboutMe.path);
            // goRouter.pushNamed(CustomRouter.aboutMe.name);
          }, child: Text("About Me")),
        ],
      )),
    );
  }
}
