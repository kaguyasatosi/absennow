import 'package:flutter/material.dart';
import 'package:intl/intl.dart'; // Paket untuk memformat tanggal
import '../component/navigation/presensi_navigation.dart'; // Import navigasi presensi

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  late String currentTime;
  late String currentDate;

  @override
  void initState() {
    super.initState();
    _updateDateTime();
  }

  void _updateDateTime() {
    setState(() {
      currentTime = DateFormat('HH:mm').format(DateTime.now()); // Format waktu (24 jam)
      currentDate = DateFormat('EEEE, d MMMM yyyy', 'id_ID').format(DateTime.now()); // Format tanggal dalam bahasa Indonesia
    });

    Future.delayed(const Duration(seconds: 1), _updateDateTime); // Perbarui setiap detik
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      appBar: AppBar(
        backgroundColor: Colors.orange,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Hai, MASTER AKUN',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Text(
                  'KOMISARIS',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.white70,
                  ),
                ),
              ],
            ),
            CircleAvatar(
              backgroundImage: AssetImage('assets/avatar.png'), // Ganti sesuai path
              radius: 20,
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Presensi Section
            Container(
              decoration: BoxDecoration(
                color: Colors.orange[300],
                borderRadius: BorderRadius.circular(16.0),
              ),
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    currentTime, // Gunakan waktu real-time
                    style: const TextStyle(
                      fontSize: 48,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    currentDate, // Gunakan tanggal real-time
                    style: const TextStyle(fontSize: 18, color: Colors.white70),
                  ),
                  const SizedBox(height: 20),
                  // Tombol kamera untuk presensi
                  GestureDetector(
                    onTap: () {
                      PresensiNavigation.navigateToPresensi(context); // Navigasi ke Presensi
                    },
                    child: const CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 50,
                      child: Icon(
                        Icons.camera_alt,
                        size: 50,
                        color: Colors.orange,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'Presensi Sekarang',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            // Bagian Info Jam
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _infoBox(
                  icon: Icons.fingerprint,
                  title: '--:--',
                  subtitle: 'Jam Presensi',
                ),
                _infoBox(
                  icon: Icons.access_time,
                  title: '--:--',
                  subtitle: 'Jam Pulang',
                ),
                _infoBox(
                  icon: Icons.alarm,
                  title: '0 Jam 0 mnt',
                  subtitle: 'Total Waktu',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _infoBox({required IconData icon, required String title, required String subtitle}) {
    return Column(
      children: [
        Icon(icon, size: 40, color: Colors.white),
        const SizedBox(height: 8),
        Text(
          title,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        Text(
          subtitle,
          style: const TextStyle(fontSize: 14, color: Colors.white70),
        ),
      ],
    );
  }
}
