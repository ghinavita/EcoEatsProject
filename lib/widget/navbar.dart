import 'package:flutter/material.dart';

class Navbar2Pm extends StatefulWidget {
  const Navbar2Pm({super.key});

  @override
  _Navbar2PmState createState() => _Navbar2PmState();
}

class _Navbar2PmState extends State<Navbar2Pm> {
  String currentPage =
      '/homepage-pembeli'; // Halaman saat ini yang sedang aktif

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.white,
      type: BottomNavigationBarType.fixed,
      items: [
        BottomNavigationBarItem(
          icon: Container(
            margin: EdgeInsets.only(
              top: 10,
              bottom: 10,
            ),
            child: Icon(
              Icons.home_filled,
              color: currentPage == '/homepage-pembeli'
                  ? Colors.orange
                  : Colors.grey,
            ),
          ),
          label: 'Beranda',
        ),
        BottomNavigationBarItem(
          icon: Container(
            margin: EdgeInsets.only(
              top: 10,
              bottom: 10,
            ),
            child: Icon(
              Icons.list_alt_rounded,
              color: currentPage == '/riwayat-pembeli'
                  ? Colors.orange
                  : Colors.grey,
            ),
          ),
          label: 'Pesanan',
        ),
        BottomNavigationBarItem(
          icon: Container(
            margin: EdgeInsets.only(
              top: 10,
              bottom: 10,
            ),
            child: Icon(
              Icons.shopping_cart,
              color: currentPage == '/keranjang-pembeli'
                  ? Colors.orange
                  : Colors.grey,
            ),
          ),
          label: 'Keranjang',
        ),
        BottomNavigationBarItem(
          icon: Container(
            margin: EdgeInsets.only(
              top: 10,
              bottom: 10,
            ),
            child: Icon(
              Icons.chat_rounded,
              color:
                  currentPage == '/chat-pembeli' ? Colors.orange : Colors.grey,
            ),
          ),
          label: 'Chat',
        ),
      ],
      selectedLabelStyle: TextStyle(
        color: Colors.orange,
      ),
      selectedItemColor: Colors
          .orange, // Menambahkan ini untuk mengatur warna label yang dipilih
      onTap: (int index) {
        switch (index) {
          case 0:
            Navigator.pushNamed(context, '/homepage-pembeli');
            setState(() {
              currentPage = '/homepage-pembeli';
            });
            break;
          case 1:
            Navigator.pushNamed(context, '/riwayat-pembeli');
            setState(() {
              currentPage = '/riwayat-pembeli';
            });
            break;
          case 2:
            Navigator.pushNamed(context, '/keranjang-pembeli');
            setState(() {
              currentPage = '/keranjang-pembeli';
            });
            break;
          case 3:
            Navigator.pushNamed(context, '/chat-pembeli');
            setState(() {
              currentPage = '/chat-pembeli';
            });
            break;
          default:
        }
      },
    );
  }
}
