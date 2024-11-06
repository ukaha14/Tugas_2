import 'dart:async';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'login.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigateToLogin();
  }

  Future<void> _navigateToLogin() async {
    // Tunggu 5 detik sebelum pindah ke halaman login
    await Future.delayed(const Duration(seconds: 5));

    // Pastikan widget masih terpasang sebelum melakukan navigasi
    if (mounted) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const Login()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Lottie.asset(
          'assets/images/lottie/dompetku.json',
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
