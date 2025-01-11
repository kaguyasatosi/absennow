import 'package:flutter/material.dart';
import '../../view/profile_view.dart';
import '../../view/login_view.dart';

class HomeNavigation {
  static void navigateToProfile(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => ProfileView()),
    );
  }

  static void navigateToLogin(BuildContext context) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => LoginView()),
    );
  }
}
