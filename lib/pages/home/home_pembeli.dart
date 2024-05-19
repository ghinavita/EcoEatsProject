import 'package:ecoeats/widget/navbar.dart';
import 'package:flutter/material.dart';
import 'package:ecoeats/widget/produk.dart';

class HomePagePm extends StatefulWidget {
  @override
  _HomePagePmState createState() => _HomePagePmState();
}

class _HomePagePmState extends State<HomePagePm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // SearchBar
          Container(
            padding: EdgeInsets.all(20.0),
            color: Colors.green.shade400,
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      'Selamat Datang, Ghina!',
                      style: TextStyle(
                        fontSize: 18, // Ukuran teks harga produk 16
                        fontWeight: FontWeight.bold,
                        color: Colors.white, // Fontweight bold
                      ),
                    ),
                    Spacer(),
                    Icon(
                      Icons.notifications,
                      color: Colors.white,
                    ),
                  ],
                ),
                SizedBox(
                  height: 12,
                ),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Temukan menu favorit kamu...',
                    suffixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(14.0)),
                      borderSide: BorderSide.none,
                    ),
                    filled: true, // Aktifkan warna latar belakang
                    fillColor: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      'Rekomendasi Untukmu',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Spacer(),
                    Text(
                      'Lihat Semua',
                      style: TextStyle(fontSize: 12, color: Colors.green),
                    ),
                  ],
                ),
                SizedBox(
                  height: 12,
                ),
                ProdukRow(),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Text(
                  'Di Sekitarmu',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Spacer(),
                Row(
                  children: [
                    Icon(
                      Icons.location_on,
                      color: Colors.orange,
                    ),
                    Text(
                      'Bojongsoang',
                      style: TextStyle(fontSize: 12, color: Colors.orange),
                    ),
                  ],
                ),
              ],
            ),
          ),
          ProdukList(),
          Navbar2Pm(),
        ],
      ),
    );
  }
}
