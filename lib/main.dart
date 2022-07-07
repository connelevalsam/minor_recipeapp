import 'package:flutter/material.dart';

import 'home.dart';
import 'themes/fooderlichTheme.dart';

void main() {
  runApp(const Fooderlich());
}

class Fooderlich extends StatelessWidget {
  const Fooderlich({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final theme = FooderlichTheme.light();
    return MaterialApp(
      title: 'Workout 3',
      theme: theme,
      home: const Home(),
    );
  }
}
