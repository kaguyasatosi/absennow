import 'package:flutter/material.dart';
import '../component/navigation/profile_navigation.dart'; // Import ProfileNavigation

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      appBar: AppBar(
        backgroundColor: Colors.orange,
        elevation: 0,
        title: const Text(
          'Akun Saya',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Avatar dan informasi pengguna
            const CircleAvatar(
              backgroundImage: AssetImage('assets/avatar.png'), // Ganti dengan avatar
              radius: 40,
            ),
            const SizedBox(height: 16),
            const Text(
              'MASTER AKUN',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const Text(
              '082114217222',
              style: TextStyle(
                fontSize: 14,
                color: Colors.white70,
              ),
            ),
            const SizedBox(height: 16),

            // List menu
            ListTile(
              tileColor: Colors.orange[300],
              title: const Text(
                'Kebijakan Privasi',
                style: TextStyle(color: Colors.white),
              ),
              trailing: const Icon(Icons.arrow_forward_ios, color: Colors.white),
              onTap: () {},
            ),
            ListTile(
              tileColor: Colors.orange[300],
              title: const Text(
                'Syarat & Ketentuan',
                style: TextStyle(color: Colors.white),
              ),
              trailing: const Icon(Icons.arrow_forward_ios, color: Colors.white),
              onTap: () {},
            ),
            ListTile(
              tileColor: Colors.orange[300],
              title: const Text(
                'Tentang Kami',
                style: TextStyle(color: Colors.white),
              ),
              trailing: const Icon(Icons.arrow_forward_ios, color: Colors.white),
              onTap: () {},
            ),

            // Tombol Logout
            const SizedBox(height: 8),
            ListTile(
              tileColor: Colors.orange[100], // Transparan seperti "Tentang Kami"
              title: const Center(
                child: Text(
                  'Logout',
                  style: TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
              onTap: () {
                ProfileNavigation.logout(context); // Navigasi ke Login
              },
            ),
          ],
        ),
      ),
    );
  }
}
