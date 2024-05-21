import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../router/router.dart';

class AboutMeScreen extends StatelessWidget {
  const AboutMeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('About Me')),
      body: SingleChildScrollView(child: Column(
        children: [
          ElevatedButton(onPressed: () {
            // Navigator.of(context).push(
            //   MaterialPageRoute(
            //     builder: (context) => AboutMeScreen(),
            //   ),
            // );
            context.go(CustomRouter.academics.path);
            // goRouter.pushNamed(CustomRouter.aboutMe.name);
          }, child: Text("About Me")),
          Text('About Me Screen'),
        ],
      )),
    );
  }
}