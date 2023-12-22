import 'package:clone_starbucks_app/maincontent.dart';
import 'package:flutter/material.dart';

import 'mainappbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyStarBucks(),
    );
  }
}

class MyStarBucks extends StatelessWidget {
  const MyStarBucks({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
