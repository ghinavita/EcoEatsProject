import 'package:ecoeats/pages/jam_operasional.dart';
import 'package:ecoeats/pages/detail_pesanan.dart';
import 'package:ecoeats/pages/home/home_pembeli.dart';
import 'package:ecoeats/pages/home/home_penjual.dart';
import 'package:ecoeats/pages/login_pembeli.dart';
import 'package:ecoeats/pages/login_penjual.dart';
import 'package:ecoeats/pages/onboarding.dart';
import 'package:ecoeats/widget/produk.dart';
import 'package:flutter/material.dart';
import 'pages/splash_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.orange,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green.shade400),
        useMaterial3: true,
      ),
      routes: {
        '/': (context) => SplashPage(),
        '/onboarding': (context) => Onboarding(),
        '/login-pembeli': (context) => LoginPm(),
        '/login-penjual': (context) => LoginPj(),
        '/homepage-pembeli': (context) => HomePagePm(),
        '/homepage-penjual': (context) => HomePagePj(),
        '/detail-pesanan': (context) => DetailPesananPage(),
        '/jam-operasional': (context) => JamOperasionalPage(),
        '/detail': (context) => DetailPage(
              produk: {},
              index: 1,
            ),
      },
    );
  }
}
