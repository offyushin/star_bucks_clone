import 'package:flutter/material.dart';

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

class MyStarBucks extends StatefulWidget {
  const MyStarBucks({super.key});

  @override
  State<MyStarBucks> createState() => _MyStarBucksState();
}

class _MyStarBucksState extends State<MyStarBucks> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const SliverAppBar(
            pinned: true,
            snap: false,
            floating: false,
            expandedHeight: 200,
            flexibleSpace: FlexibleSpaceBar(
              background: Image(
                fit: BoxFit.fitWidth,
                image: AssetImage('assets/videoimage1.jpg'),
              ),
              title: Flexible(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.mail,
                      size: 24,
                    ),
                    Expanded(
                        child: Text(
                      "What's New",
                      style: TextStyle(color: Colors.black),
                    )),
                    Icon(
                      Icons.favorite,
                      size: 24,
                    ),
                    Expanded(
                        child: Text(
                      'Coupon',
                      style: TextStyle(color: Colors.black),
                    )),
                    Icon(
                      Icons.notifications,
                      size: 24,
                    ),
                  ],
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Image(
                  image: AssetImage('assets/videoimage2.png'),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Image(
                  image: AssetImage('assets/star02.png'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  height: 200,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: const [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Image(image: AssetImage('assets/starnew01.png')),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Image(image: AssetImage('assets/starnew02.png')),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Image(image: AssetImage('assets/starnew03.png')),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Image(image: AssetImage('assets/starnew04.png')),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Image(image: AssetImage('assets/starnew05.png')),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Image(image: AssetImage('assets/starnew06.png')),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Image(image: AssetImage('assets/starnew07.png')),
                      ),
                    ],
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Image(
                  image: AssetImage('assets/star03.png'),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Image(
                  image: AssetImage('assets/star04.png'),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Image(
                  image: AssetImage('assets/star05.png'),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Image(
                  image: AssetImage('assets/star06.png'),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Image(
                  image: AssetImage('assets/star07.png'),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Image(
                  image: AssetImage('assets/star08.png'),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Image(
                  image: AssetImage('assets/star09.png'),
                ),
              ),
            ]),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (int index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        unselectedItemColor: Colors.grey,
        unselectedLabelStyle: TextStyle(color: Colors.grey),
        selectedItemColor: Colors.green,
        selectedLabelStyle: TextStyle(color: Colors.grey),
        showSelectedLabels: true,
        showUnselectedLabels: true,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.payment), label: 'Pay'),
          BottomNavigationBarItem(icon: Icon(Icons.coffee), label: 'Order'),
          BottomNavigationBarItem(icon: Icon(Icons.shop), label: 'Shop'),
          BottomNavigationBarItem(icon: Icon(Icons.more_horiz), label: 'Other'),
        ],
      ),
    );
  }
}
