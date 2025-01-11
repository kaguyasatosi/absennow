import 'package:flutter/material.dart';
import '../../view/home_view.dart';
import '../../view/profile_view.dart';

class MainNavigation extends StatefulWidget {
  const MainNavigation({super.key});

  @override
  _MainNavigationState createState() => _MainNavigationState();
}

class _MainNavigationState extends State<MainNavigation> {
  int _currentIndex = 0; // Menentukan tab aktif (0: Home, 1: Profile)
  final List<Widget> _pages = [
    HomeView(), // Halaman Beranda
    ProfileView(), // Halaman Akun
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex], // Menampilkan halaman sesuai indeks
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        backgroundColor: Colors.orange[700],
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white70,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Beranda',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Akun',
          ),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index; // Ubah halaman saat tab di klik
          });
        },
      ),
    );
  }
}
