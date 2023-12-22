import 'package:flutter/material.dart';

class MainAppbar extends StatelessWidget {
  const MainAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      slivers: [
        const SliverAppBar(
          pinned: true,
          expandedHeight: 250.0,
          flexibleSpace: FlexibleSpaceBar(
            title: Row(
              children: [
                Icon(Icons.mail),
                Text(
                  "What's New",
                  style: TextStyle(color: Colors.black, fontSize: 14),
                ),
                ImageIcon(AssetImage('assets/coupon.png')),
                Text(
                  'Coupon',
                  style: TextStyle(color: Colors.black, fontSize: 14),
                ),
              ],
            ),
            background: Image(image: AssetImage('assets/topimage.jpg')),
          ),
        ),
      ],
    ));
  }
}
