import 'package:flutter/material.dart';

class ProdukRow extends StatefulWidget {
  @override
  _ProdukRowState createState() => _ProdukRowState();
}

class _ProdukRowState extends State<ProdukRow> {
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
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(produkData.length, (index) {
          Map<String, dynamic> produk = produkData.values.elementAt(index);
          return GestureDetector(
            onTap: () {
              // Redirect to detail page with index data map
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      DetailPage(produk: produk, index: index),
                ),
              );
            },
            child: Container(
              margin: EdgeInsets.only(right: 8.0),
              width: 150,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 150,
                    // height: 110,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(4)),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.asset(
                        produk['foto'],
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    '${produk['nama']}',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    '${produk['stok']} pcs',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey,
                    ),
                  ),
                  Text(
                    'Rp. ${produk['harga'].toString()}',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                    ),
                  ),
                ],
              ),
            ),
          );
        }),
      ),
    );
  }
}

class ProdukList extends StatefulWidget {
  @override
  _ProdukListState createState() => _ProdukListState();
}

class _ProdukListState extends State<ProdukList> {
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
    return // List Produk
        Expanded(
            child: ListView.builder(
      itemCount: produkData.length,
      itemBuilder: (BuildContext context, int index) {
        String produkKey = produkData.keys.elementAt(index);
        Map<String, dynamic> produk = produkData[produkKey];
        return GestureDetector(
          onTap: () {
            // Redirect to detail page with index data map
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DetailPage(produk: produk, index: index),
              ),
            );
          },
          child: ListTile(
            leading: ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Container(
                width: 80,
                height: 80,
                child: Image.asset(
                  produk['foto'], // Path asset gambar produk
                  width: 80,
                  height: 80,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            title: Text(
              produk['nama'],
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '${produk['jarak']}',
                  style: TextStyle(
                    fontSize: 12, // Ukuran teks jarak produk 12
                    color: Colors.green, // Warna hijau
                  ),
                ),
                Text(
                  'Stok : ${produk['stok']} pcs',
                  style: TextStyle(
                    fontSize: 12, // Ukuran teks stok produk 12
                    color: Colors.grey, // Warna abu
                  ),
                ),
                Text(
                  'Rp. ${produk['harga']}',
                  style: TextStyle(fontSize: 14),
                ),
              ],
            ),
          ),
        );
      },
    ));
  }
}

class DetailPage extends StatelessWidget {
  final Map<String, dynamic> produk;
  final int index;

  DetailPage({required this.produk, required this.index});

  @override
  Widget build(BuildContext context) {
    // Build detail page using `produk` data
    return Scaffold(
      appBar: AppBar(
        title: Text(produk['nama']),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              produk['nama'],
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Text(
              'Harga: ${produk['harga']}',
              style: TextStyle(fontSize: 18),
            ),
            Text(
              'Stok: ${produk['stok']} pcs',
              style: TextStyle(fontSize: 18),
            ),
            Text(
              'Jarak: ${produk['jarak']}',
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
