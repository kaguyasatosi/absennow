import 'package:flutter/material.dart';
import '../../view/home_view.dart';
import '../../view/login_view.dart';

class ProfileNavigation {
  static void navigateToPrivacyPolicy(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
      content: Text("Kebijakan Privasi belum tersedia."),
    ));
  }

  static void navigateToTermsAndConditions(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
      content: Text("Syarat & Ketentuan belum tersedia."),
    ));
  }

  static void navigateToAboutUs(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
      content: Text("Tentang Kami belum tersedia."),
    ));
  }

  static void logout(BuildContext context) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => LoginView()), // Replace with LoginView
    );
  }

  static void navigateToHome(BuildContext context) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => HomeView()),
    );
  }
}
