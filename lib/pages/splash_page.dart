import 'dart:async';

import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      Timer(
        Duration(seconds: 3),
        () => Navigator.pushReplacementNamed(context, '/onboarding'),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          width: 130,
          height: 130,
          decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage('images/logo.jpg'))),
        ),
      ),
    );
  }
}
