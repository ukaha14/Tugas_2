import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 16),
              _buildSectionTitle("Finance Overview"),
              _buildHorizontalListView(),
              _buildSectionTitle("Transaction History"),
              _buildVerticalListView(),
            ],
          ),
        ),
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      title: const Text(
        "Guest",
        style: TextStyle(color: Colors.black),
      ),
      centerTitle: false,
      leading: const Icon(Icons.account_circle, color: Colors.black),
      actions: [
        IconButton(
          icon: const Icon(Icons.notifications, color: Colors.black),
          onPressed: () {},
        ),
        IconButton(
          icon: const Icon(Icons.settings, color: Colors.black),
          onPressed: () {},
        ),
      ],
    );
  }

  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Text(title),
    );
  }

  Widget _buildHorizontalListView() {
    return SizedBox(
      height: 150,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Card(
              child: SizedBox(
                width: 120,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.account_balance_wallet_outlined,
                      size: 50,
                    ),
                    Text("Account $index"),
                    Text("Balance $index"),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _buildVerticalListView() {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 6,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 4.0),
          child: ListTile(
            contentPadding: const EdgeInsets.symmetric(horizontal: 8.0),
            leading: const Icon(Icons.monetization_on),
            title: Text("Transaction $index"),
            subtitle: Text("Details $index"),
            trailing: const Icon(Icons.chevron_right),
          ),
        );
      },
    );
  }
}
