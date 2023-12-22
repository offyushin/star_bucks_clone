import 'package:flutter/material.dart';

class MainListView extends StatelessWidget {
  const MainListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          width: double.infinity,
          height: 180,
          child: Image(
            image: AssetImage('assets/05_01_card.png'),
          ),
        )
      ],
    );
  }
}
