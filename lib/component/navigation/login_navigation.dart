import 'package:flutter/material.dart';
import '../../view/home_view.dart';

class LoginNavigation {
  static void navigateToHome(BuildContext context) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => HomeView()),
    );
  }
}
