import 'package:flutter/material.dart';
import 'daftar.dart';
import 'lupa_password.dart';
import 'navbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Login(),
    );
  }
}

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
              _buildEmailField(),
              const SizedBox(height: 10),
              _buildPasswordField(),
              const SizedBox(height: 10),
              _buildActionRow(context),
              const SizedBox(height: 20),
              _buildLoginButton(context),
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
      'Masuk',
      style: TextStyle(
        fontSize: 32,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Widget _buildEmailField() {
    return TextField(
      decoration: InputDecoration(
        labelText: 'Masukan Email',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }

  Widget _buildPasswordField() {
    return TextField(
      obscureText: true,
      decoration: InputDecoration(
        labelText: 'Masukan Password',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }

  Widget _buildActionRow(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            const Text('Belum punya akun?'),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Daftar()),
                );
              },
              child: const Text(
                'Daftar',
                style: TextStyle(color: Color(0xFF4285F4)),
              ),
            ),
          ],
        ),
        TextButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const LupaPassword()),
            );
          },
          child: const Text(
            'Lupa password?',
            style: TextStyle(color: Color(0xFF4285F4)),
          ),
        ),
      ],
    );
  }

  Widget _buildLoginButton(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 80),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        backgroundColor: const Color(0xFF4285F4),
      ),
      onPressed: () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const Navbar()),
        );
      },
      child: const Text(
        'Masuk',
        style: TextStyle(fontSize: 18, color: Colors.white),
      ),
    );
  }
}
