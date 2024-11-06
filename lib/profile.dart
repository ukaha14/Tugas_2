import 'package:flutter/material.dart';
import 'navbar.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 80),
            _buildProfileAvatar(),
            const SizedBox(height: 10),
            _buildProfileInfo(),
            const SizedBox(height: 30),
            _buildProfileFields(),
            const SizedBox(height: 20),
            _buildEditButton(context),
          ],
        ),
      ),
    );
  }

  Widget _buildProfileAvatar() {
    return const Center(
      child: CircleAvatar(
        radius: 50,
        backgroundImage: AssetImage('assets/images/pp.jpg'),
      ),
    );
  }

  Widget _buildProfileInfo() {
    return const Column(
      children: [
        Center(
          child: Text(
            "Amrizal Novianto",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ),
        Center(
          child: Text(
            "Universitas Teknologi Yogyakarta",
            style: TextStyle(fontSize: 14, color: Colors.grey),
          ),
        ),
      ],
    );
  }

  Widget _buildProfileFields() {
    return const Column(
      children: [
        _ProfileTextField(labelText: 'Email'),
        SizedBox(height: 10),
        _ProfileTextField(labelText: 'Nama'),
        SizedBox(height: 10),
        _ProfileTextField(labelText: 'Nomor Telepon'),
        SizedBox(height: 10),
        _ProfileTextField(labelText: 'Alamat'),
      ],
    );
  }

  Widget _buildEditButton(BuildContext context) {
    return Center(
      child: ElevatedButton(
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
          'Ubah Profil',
          style: TextStyle(fontSize: 18, color: Colors.white),
        ),
      ),
    );
  }
}

class _ProfileTextField extends StatelessWidget {
  final String labelText;

  const _ProfileTextField({required this.labelText});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        labelText: labelText,
        border: const OutlineInputBorder(),
      ),
    );
  }
}
