import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LoginPm extends StatefulWidget {
  @override
  _LoginPmState createState() => _LoginPmState();
}

class _LoginPmState extends State<LoginPm> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  static const snackBar_emptylogin = SnackBar(
    content: Text(
      'Username dan Password tidak boleh kosong!',
      style: TextStyle(
        color: Colors.white,
      ),
    ),
    backgroundColor: Color.fromARGB(255, 43, 43, 43),
  );
  static const snackBar_wronglogin = SnackBar(
    content: Text(
      'Username dan Password yang anda masukkan salah!',
      style: TextStyle(
        color: Colors.white,
      ),
    ),
    backgroundColor: Colors.red,
  );
  // static const snackBar_true = SnackBar(
  //   content: Text(
  //     'Berhasil Login!',
  //     style: TextStyle(
  //       color: Colors.white,
  //     ),
  //   ),
  //   backgroundColor: Colors.green,
  // );

  void _login() {
    final String username = _usernameController.text.trim();
    final String password = _passwordController.text.trim();

    if (username.isEmpty || password.isEmpty) {
      setState(() {
        ScaffoldMessenger.of(context).showSnackBar(snackBar_emptylogin);
      });
    } else {
      // Ganti dengan username dan password yang benar
      if (username == 'ghina' && password == '6701223045') {
        // Lakukan tindakan sesuai dengan login berhasil
        Navigator.pushNamed(context, '/homepage-pembeli');
        // Misalnya, arahkan ke halaman beranda
      } else {
        setState(() {
          ScaffoldMessenger.of(context).showSnackBar(snackBar_wronglogin);
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Login',
          style: TextStyle(fontSize: 16),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Column(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Masuk Akun Pembeli',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 28),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        'Silahkan masukan nomor handphone & kata sandi akun anda yang telah terdaftar untuk masuk ke aplikasi',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.grey, fontSize: 14),
                      ),
                    ],
                  ),
                  SizedBox(height: 36),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      TextField(
                        controller: _usernameController,
                        decoration: InputDecoration(
                          labelText: 'Masukkan username atau email',
                          border: OutlineInputBorder(),
                        ),
                      ),
                      SizedBox(height: 12),
                      TextField(
                        controller: _passwordController,
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: 'Masukkan Password',
                          border: OutlineInputBorder(),
                        ),
                      ),
                      SizedBox(height: 12),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, '/lupasandi');
                        },
                        child: Text(
                          'Lupa Kata Sandi?',
                          style: TextStyle(
                            color: Colors
                                .green, // Mengatur warna teks menjadi hijau
                            decoration: TextDecoration
                                .underline, // Mengatur garis bawah
                            fontWeight:
                                FontWeight.bold, // Mengatur teks menjadi bold
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            ElevatedButton(
              onPressed: _login,
              child: Text('Login',
                  style: TextStyle(
                    color: Colors.white,
                  )),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange,
                fixedSize: Size.fromHeight(56),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                      12), // Menyetel borderRadius menjadi 12
                ), // Menyetel tinggi tombol menjadi 16px
              ),
            ),
            SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Belum punya akun? ', style: TextStyle(fontSize: 14)),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/register-pembeli');
                  },
                  child: Text('Daftar Sekarang',
                      style: TextStyle(color: Colors.green, fontSize: 14)),
                ),
              ],
            ),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
