import 'package:flutter/material.dart';
import 'package:pam_040_017/page/login_page.dart';

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<homepage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('Dashboard'),
      ),
      body: Column(

      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (int newIndex) {
          setState(() {
            _currentIndex = newIndex;
          });

          // Handle navigasi ke halaman yang sesuai
          if (_currentIndex == 1) {
            // Navigasi ke halaman lain (misalnya halaman login)
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => LoginPage(),
              ),
            );
          }
          // Anda dapat menambahkan logika navigasi lainnya sesuai kebutuhan
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Beranda',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.login), // Ganti icon sesuai kebutuhan Anda
            label: 'Login',
          ),
        ],
      ),
    );
  }
}
