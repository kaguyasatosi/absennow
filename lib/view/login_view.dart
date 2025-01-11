import 'package:flutter/material.dart';
import '../component/navigation/login_navigation.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final _phoneNumberController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _isLoading = false;

  void _onLoginPressed() {
    final phoneNumber = _phoneNumberController.text;
    final password = _passwordController.text;

    if (phoneNumber.isEmpty || password.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text('Harap isi semua field'),
        backgroundColor: Colors.red,
      ));
      return;
    }

    setState(() {
      _isLoading = true;
    });

    // Simulasi login API
    Future.delayed(const Duration(seconds: 2), () {
      setState(() {
        _isLoading = false;
      });

      if (phoneNumber == "123" && password == "123") {
        LoginNavigation.navigateToHome(context); // Navigasi ke Home
      } else {
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text('Nomor handphone atau password salah'),
          backgroundColor: Colors.red,
        ));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Image.asset(
                  'assets/logo.png', // Logo aplikasi
                  height: 100,
                ),
                const SizedBox(height: 32),
                TextField(
                  controller: _phoneNumberController,
                  decoration: const InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    labelText: "No. Handphone Anda",
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 16),
                TextField(
                  controller: _passwordController,
                  obscureText: true,
                  decoration: const InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    labelText: "Password Anda",
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 24),
                ElevatedButton(
                  onPressed: _isLoading ? null : _onLoginPressed,
                  child: _isLoading
                      ? const CircularProgressIndicator(color: Colors.white)
                      : const Text("MASUK"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
