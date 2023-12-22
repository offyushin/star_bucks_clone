import 'package:flutter/material.dart';

import 'listview.dart';

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
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              width: double.infinity,
              height: 180,
              child: Image(
                image: AssetImage('assets/05_01_card.png'),
              ),
            ),
            Column(
              children: [
                Expanded(
                  child: MainListView(),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
