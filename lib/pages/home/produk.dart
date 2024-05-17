import 'package:flutter/material.dart';

class Produk extends StatefulWidget {
  @override
  _ProdukState createState() => _ProdukState();
}

class _ProdukState extends State<Produk> {
  Map<String, dynamic> produkData = {
    'produk1': {
      'nama': 'Twister Vanilla',
      'harga': 10000,
      'stok': 10,
      'jarak': '500 m',
      'foto': 'images/Twister.jpg', // Ubah path sesuai dengan nama file gambar
    },
    'produk2': {
      'nama': 'Jco Donut Box',
      'harga': 20000,
      'stok': 5,
      'jarak': '1,5 Km',
      'foto': 'images/Donat.jpg', // Ubah path sesuai dengan nama file gambar
    },
    'produk3': {
      'nama': 'Donat Salju',
      'harga': 30000,
      'stok': 12,
      'jarak': '2,5 Km',
      'foto': 'images/Donat2.jpg', // Ubah path sesuai dengan nama file gambar
    },
    'produk4': {
      'nama': 'Brownies',
      'harga': 30000,
      'stok': 2,
      'jarak': '7,6 Km',
      'foto': 'images/Brownies.jpg', // Ubah path sesuai dengan nama file gambar
    },
  };

  @override
  Widget build(BuildContext context) {
    debugPrint(produkData.toString());
    Widget ProdukRow(Map<String, dynamic> produkData) {
      return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: List.generate(produkData.length, (index) {
            Map<String, dynamic> produk = produkData.values
                .elementAt(index); // Akses data produk sesuai dengan index
            return Container(
              margin: EdgeInsets.only(right: 16.0),
              width: 150,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 150,
                    height: 110,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(4)),
                    child: Image.asset(
                      produk['foto'], // Akses foto produk menggunakan index
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    '${produk['nama']}',
                    style: TextStyle(
                      fontSize: 14, // Ukuran teks nama produk 14
                      fontWeight: FontWeight.bold, // Fontweight medium
                    ),
                  ),
                  Text(
                    '${produk['stok']} pcs',
                    style: TextStyle(
                      fontSize: 12, // Ukuran teks jarak produk 12
                      color: Colors.grey, // Warna abu
                    ),
                  ),
                  Text(
                    'Rp. ${produk['harga'].toString()}',
                    style: TextStyle(
                      fontSize: 20, // Ukuran teks harga produk 16
                      fontWeight: FontWeight.bold, // Fontweight bold
                    ),
                  ),
                ],
              ),
            );
          }),
        ),
      );
    }

    Widget ProdukList(Map<String, dynamic> produkData) {
      return // List Produk
          Expanded(
              child: ListView.builder(
        itemCount: produkData.length,
        itemBuilder: (BuildContext context, int index) {
          String produkKey = produkData.keys.elementAt(index);
          Map<String, dynamic> produk = produkData[produkKey];
          return ListTile(
            leading: Container(
              width: 36,
              height: 36,
              child: Image.asset(
                produk['foto'], // Path asset gambar produk
                fit: BoxFit.cover,
              ),
            ),
            title: Text(produk['nama']),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('${produk['jarak']}'),
                Text('Rp. ${produk['harga']}'),
              ],
            ),
          );
        },
      ));
    }

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
