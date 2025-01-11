import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart'; // Import untuk inisialisasi locale
import 'component/navigation/navigation_handler.dart'; // Import MainNavigation (pastikan path sesuai)

void main() async {
  WidgetsFlutterBinding.ensureInitialized(); // Inisialisasi binding Flutter
  await initializeDateFormatting('id_ID', null); // Inisialisasi locale untuk bahasa Indonesia
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Presensi App',
      theme: ThemeData(primarySwatch: Colors.orange),
      home: const MainNavigation(), // Gunakan MainNavigation sebagai home
    );
  }
}
