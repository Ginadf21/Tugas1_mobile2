import 'package:appone/Screens/dashboard_page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // Text editing controllers untuk username dan password
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  void _login() {
    final username = _usernameController.text;
    final passowrd = _passwordController.text;
    // Memeriksa username dan password
    if (username == 'gina' &&
        passowrd == '032801') {
      // Navigasi ke halaman Dashboard jika login berhasil
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) =>  DashboardPage(username: username)),
      );
    } else {
      // Menampilkan pesan error jika login gagal
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Username atau password salah'),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    // Mendapatkan ukuran layar
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: screenWidth * 0.1), // Padding responsif
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                    height: 200), // Jarak atas untuk menyeimbangkan tampilan
                Text(
                  "LOGIN",
                  style: TextStyle(
                    fontSize: screenWidth * 0.1, // Ukuran font responsif
                    fontFamily: "Poppins-SemiBold",
                  ),
                ),
                SizedBox(height: 75),
                Image.asset(
                  'assets/images/ilogin.png',
                  height: screenWidth * 0.35, // Ukuran gambar responsif
                  fit: BoxFit.contain,
                ),
                SizedBox(height: 50),
                // TextField untuk Username
                TextField(
                  controller: _usernameController,
                  decoration: InputDecoration(
                    labelText: 'Username',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15)),
                    prefixIcon: Icon(Icons.person),
                  ),
                ),
                SizedBox(height: 20),
                // TextField untuk Password
                TextField(
                  controller: _passwordController,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15)),
                    prefixIcon: Icon(Icons.lock),
                  ),
                  obscureText: true, // Menyembunyikan teks password
                ),
                SizedBox(height: 30),
                // Tombol Login
                ElevatedButton(
                  onPressed: (_login) ,
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      foregroundColor: Colors.white,
                      fixedSize: Size(500, 50)),
                  child: Text(
                    "Login",
                    style: TextStyle(fontSize: screenWidth * 0.045),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
