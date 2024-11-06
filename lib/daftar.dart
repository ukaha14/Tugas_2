import 'package:flutter/material.dart';
import 'login.dart';

class Daftar extends StatelessWidget {
  const Daftar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildLogo(),
              const SizedBox(height: 20),
              _buildTitle(),
              const SizedBox(height: 20),
              _buildTextField('Email', false),
              const SizedBox(height: 10),
              _buildTextField('Password', true),
              const SizedBox(height: 10),
              _buildTextField('Ulangi Password', true),
              const SizedBox(height: 20),
              _buildDaftarButton(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildLogo() {
    return Image.asset('assets/images/logo.png', width: 150);
  }

  Widget _buildTitle() {
    return const Text(
      'Daftar',
      style: TextStyle(
        fontSize: 32,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Widget _buildTextField(String labelText, bool obscureText) {
    return TextField(
      obscureText: obscureText,
      decoration: InputDecoration(
        labelText: labelText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }

  Widget _buildDaftarButton(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 80),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        backgroundColor: const Color(0xFF4285F4),
      ),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const Login()),
        );
      },
      child: const Text(
        'Daftar',
        style: TextStyle(fontSize: 18, color: Colors.white),
      ),
    );
  }
}
