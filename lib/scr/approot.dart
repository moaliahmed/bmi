import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../screan/gender.dart';

class AppRoot extends StatelessWidget {
  const AppRoot({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        backgroundColor: Color(0xfff8fbfc),
        textTheme: TextTheme(
          headline2: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
      ),
      home: GenderScrean(),
    );
  }
}
