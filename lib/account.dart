import 'package:flutter/material.dart';
import 'profile.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 50.0),
          child: Column(
            children: [
              const CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('assets/images/pp.jpg'),
              ),
              const SizedBox(height: 20),
              const Text(
                "Amrizal Novianto",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              const Text(
                "Universitas Teknologi Yogyakarta",
                style: TextStyle(fontSize: 14, color: Colors.grey),
              ),
              const SizedBox(height: 50),
              ..._buildMenuOptions(context),
            ],
          ),
        ),
      ),
    );
  }

  List<Widget> _buildMenuOptions(BuildContext context) {
    return [
      ListTile(
        title: const Text("Kelola Akun"),
        trailing: const Icon(Icons.arrow_forward),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const ProfilePage()),
          );
        },
      ),
      ListTile(
        title: const Text("Notifikasi"),
        trailing: const Icon(Icons.arrow_forward),
        onTap: () {},
      ),
      ListTile(
        title: const Text("Privacy Policy"),
        trailing: const Icon(Icons.arrow_forward),
        onTap: () {},
      ),
      ListTile(
        title: const Text("Terms of Service"),
        trailing: const Icon(Icons.arrow_forward),
        onTap: () {},
      ),
    ];
  }
}
