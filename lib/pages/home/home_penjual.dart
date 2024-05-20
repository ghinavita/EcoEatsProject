import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';


class HomePagePj extends StatefulWidget {
  @override
  _HomePagePjState createState() => _HomePagePjState();
}

class _HomePagePjState extends State<HomePagePj> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading:
            false, // Menghilangkan panah kembali (back arrow)
        backgroundColor: Colors.green, // Warna hijau
        elevation: 0, // Menghapus bayangan di bawah app bar
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity, // Lebar sesuai dengan layar
              height: 70, // Tinggi kotak hijau
              color: Colors.green, // Warna hijau
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: Text(
                      'Selamat Datang, Budi!',
                      style: TextStyle(
                        color: Colors.white, // Warna teks putih
                        fontSize: 24, // Ukuran teks
                        fontWeight: FontWeight.bold, // Ketebalan teks
                      ),
                    ),
                  ),
                  IconButton(
                    icon: Icon(Icons.notifications), // Icon notifikasi
                    color: Colors.white, // Warna icon putih
                    onPressed: () {
                      // Aksi ketika icon notifikasi ditekan
                    },
                  ),
                ],
              ),
            ),
            SizedBox(height: 20), // Spasi antara kotak hijau dan konten lainnya
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Jam Operasional',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, '/jam-operasional');
                        },
                        child: Row(
                          children: [
                            Icon(Icons.edit), // Icon edit (pencil)
                            SizedBox(
                                width: 4), // Spasi antara ikon dan teks "Edit"
                            Text('Edit'),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                      height:
                          18), // Spasi antara jam operasional dan keterangan hari dan waktu
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 0),
                    child: ListTile(
                      title: Row(
                        children: [
                          Expanded(
                            child: Text('Sen - Jum'),
                          ),
                          Text('9:00 AM - 9:00 PM'),
                          SizedBox(width: 4), // Spasi antara waktu dan ikon
                        ],
                      ),
                      onTap: () {
                        // Aksi ketika jadwal Sen-Jum ditekan
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 0),
                    child: ListTile(
                      title: Row(
                        children: [
                          Expanded(
                            child: Text('Sab'),
                          ),
                          Text('9:00 AM - 11:00 PM'),
                          SizedBox(width: 4), // Spasi antara waktu dan ikon
                        ],
                      ),
                      onTap: () {
                        // Aksi ketika jadwal Sabtu ditekan
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 0),
                    child: ListTile(
                      title: Row(
                        children: [
                          Expanded(
                            child: Text('Minggu'),
                          ),
                          Text('Tutup 24 jam'),
                          SizedBox(width: 4), // Spasi antara waktu dan ikon
                        ],
                      ),
                      onTap: () {
                        // Aksi ketika jadwal Minggu ditekan
                      },
                    ),
                  ),
                  SizedBox(
                      height:
                          20), // Spasi antara jam operasional dan produk terlaris
                  Text(
                    'Produk Terlaris',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(
                      height:
                          10), // Spasi antara judul produk terlaris dan card
                  CarouselSlider(
                    options: CarouselOptions(
                      height: 300.0,
                      enableInfiniteScroll: false, // Disable infinite scroll
                      initialPage: 0, // Start at the first item
                    ),
                    items: [
                      {
                        'image': 'images/Donat.jpg',
                        'title': 'Donut JCO',
                        'subtitle': 'dipesan 100x'
                      },
                      {
                        'image': 'images/Sarden_ikan.jpg',
                        'title': 'Ikan Sarden',
                        'subtitle': 'Dipesan 20x'
                      },
                      {
                        'image': 'images/Kue_lapis.jpg',
                        'title': 'Kue Lapis',
                        'subtitle': 'Dipesan 15x'
                      },
                      {
                        'image': 'images/Kwetiaw.jpg',
                        'title': 'Kwetiaw Goreng',
                        'subtitle': 'Dipesan 10x'
                      },
                      {
                        'image': 'images/Nasi_goreng.jpg',
                        'title': 'Nasi Goreng',
                        'subtitle': 'Dipesan 5x'
                      },
                    ].map((item) {
                      return Builder(
                        builder: (BuildContext context) {
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment
                                .start, // Ensure text is aligned to the left
                            children: [
                              Container(
                                width: double.infinity,
                                height: 200, // Fixed height for all images
                                margin: EdgeInsets.symmetric(horizontal: 5.0),
                                decoration: BoxDecoration(
                                  color: Colors.amber,
                                ),
                                child: Image.asset(
                                  item['image']!,
                                  fit: BoxFit
                                      .cover, // Ensure the image covers the container
                                ),
                              ),
                              SizedBox(height: 10),
                              Align(
                                alignment: Alignment
                                    .centerLeft, // Align text to the left
                                child: Text(
                                  item['title']!,
                                  style: TextStyle(
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                              SizedBox(height: 4),
                              Align(
                                alignment: Alignment
                                    .centerLeft, // Align text to the left
                                child: Text(
                                  item['subtitle']!,
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.green,
                                  ),
                                ),
                              ),
                            ],
                          );
                        },
                      );
                    }).toList(),
                  ),
                  SizedBox(
                      height:
                          5), // Spasi antara produk terlaris dan daftar pesanan
                  Text(
                    'Daftar Pesanan',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: 10), // Spasi antara judul daftar pesanan
// Spasi antara judul daftar pesanan dan card
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/detail-pesanan');
                    },
                    child: Card(
                      color: Color.fromARGB(255, 255, 255, 255),
                      elevation: 0, // Menghilangkan bayangan
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Column(
                        children: [
                          ListTile(
                            leading: Icon(Icons.person,
                                color: const Color.fromARGB(
                                    255, 246, 207, 148)), // Icon orang
                            title: Text('Poppie'),
                            trailing: Container(
                              padding: EdgeInsets.symmetric(
                                  vertical: 4, horizontal: 8),
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 249, 227, 151),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Text(
                                'Menunggu Konfirmasi',
                                style: TextStyle(
                                  color: Color.fromARGB(255, 0, 0, 0),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          Divider(), // Garis pembatas di bawah ListTile
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 16, vertical: 8),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('Sarden ikan asin khonguan 1x'),
                                    Text('Rp 5000'),
                                  ],
                                ),
                                SizedBox(height: 4),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('Es teh manis 1x'),
                                    Text('Rp 5000'),
                                  ],
                                ),
                                SizedBox(height: 4),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('Es cendol 1x'),
                                    Text('Rp 5000'),
                                  ],
                                ),
                                SizedBox(height: 4),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Total Pembayaran',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      'Rp 15000',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                      height: 10), // Spasi antara judul daftar pesanan dan card
                  Card(
                    color: Color.fromARGB(255, 255, 255, 255),
                    elevation: 0, // Menghilangkan bayangan
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Column(
                      children: [
                        ListTile(
                          leading: Icon(Icons.person,
                              color: const Color.fromARGB(
                                  255, 246, 207, 148)), // Icon orang
                          title: Text('Poppie'),
                          trailing: Container(
                            padding: EdgeInsets.symmetric(
                                vertical: 4, horizontal: 8),
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 249, 227, 151),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Text(
                              'Menunggu Konfirmasi',
                              style: TextStyle(
                                color: Color.fromARGB(255, 0, 0, 0),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        Divider(), // Garis pembatas di bawah ListTile
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 16, vertical: 8),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Sarden ikan asin khonguan 1x'),
                                  Text('Rp 5000'),
                                ],
                              ),
                              SizedBox(height: 4),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Es teh manis 1x'),
                                  Text('Rp 5000'),
                                ],
                              ),
                              SizedBox(height: 4),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Es cendol 1x'),
                                  Text('Rp 5000'),
                                ],
                              ),
                              SizedBox(height: 4),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Total Pembayaran',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    'Rp 15000',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
