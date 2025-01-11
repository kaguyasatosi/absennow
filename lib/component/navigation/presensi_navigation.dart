import 'package:flutter/material.dart';
import '../../view/presensi_view.dart';
import '../../view/home_view.dart';

class PresensiNavigation {
  static void navigateToPresensi(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => PresensiView()),
    );
  }
}
class HomeNavigation {
  static void navigateToHome(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => HomeView()),
      
    );
  }
}