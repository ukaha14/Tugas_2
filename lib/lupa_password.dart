import 'package:flutter/material.dart';
import 'login.dart';

class LupaPassword extends StatelessWidget {
  const LupaPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _buildAppBar(),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildLogo(),
              const SizedBox(height: 20),
              _buildTitle(),
              const SizedBox(height: 10),
              _buildSubtitle(),
              const SizedBox(height: 20),
              _buildEmailField(),
              const SizedBox(height: 20),
              _buildSendButton(context),
            ],
          ),
        ),
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      iconTheme: const IconThemeData(color: Colors.black),
    );
  }

  Widget _buildLogo() {
    return Image.asset('assets/images/logo.png', width: 150);
  }

  Widget _buildTitle() {
    return const Text(
      'Lupa Password',
      style: TextStyle(
        fontSize: 28,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Widget _buildSubtitle() {
    return const Text(
      'Masukan email Anda dan tunggu kode etik akan dikirimkan.',
      textAlign: TextAlign.center,
      style: TextStyle(fontSize: 16, color: Colors.black54),
    );
  }

  Widget _buildEmailField() {
    return TextField(
      decoration: InputDecoration(
        labelText: 'Email',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }

  Widget _buildSendButton(BuildContext context) {
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
        'Kirim',
        style: TextStyle(fontSize: 18, color: Colors.white),
      ),
    );
  }
}
