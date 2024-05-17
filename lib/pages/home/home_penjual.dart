import 'package:flutter/material.dart';

class HomePagePj extends StatefulWidget {
  const HomePagePj({super.key});

  @override
  _HomePagePjState createState() => _HomePagePjState();
}

class _HomePagePjState extends State<HomePagePj> {
    @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: [
            const Text('Home Penjual'),
            Container(
              width: 130,
              height: 130,
              decoration: const BoxDecoration(
                  image: DecorationImage(image: AssetImage('images/logo.jpg'))),
            ),
          ],
        ),
      ),
    );
  }
}
