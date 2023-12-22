import 'package:flutter/material.dart';

class MainContent extends StatelessWidget {
  const MainContent({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Image(
          fit: BoxFit.cover,
          image: AssetImage('assets/maincontent1.jpg'),
        ),
        Image(
          fit: BoxFit.cover,
          image: AssetImage('assets/maincontent1.jpg'),
        ),
        Image(
          fit: BoxFit.cover,
          image: AssetImage('assets/maincontent1.jpg'),
        ),
        Image(
          fit: BoxFit.cover,
          image: AssetImage('assets/maincontent1.jpg'),
        ),
        Image(
          fit: BoxFit.cover,
          image: AssetImage('assets/maincontent1.jpg'),
        ),
      ],
    );
  }
}
