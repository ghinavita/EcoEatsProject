import 'package:flutter/material.dart';
import 'produk.dart';

class HomePagePm extends StatefulWidget {
  @override
  _HomePagePmState createState() => _HomePagePmState();
}

class _HomePagePmState extends State<HomePagePm> {
  get produkData => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Homepage'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // SearchBar
          Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Cari produk...',
                suffixIcon: Icon(Icons.search),
                border: OutlineInputBorder(),
              ),
            ),
          ),
          ProdukRow(produkData),
          ProdukList(produkData),
        ],
      ),
    );
  }
}
