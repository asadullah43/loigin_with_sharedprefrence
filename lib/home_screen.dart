import 'package:flutter/material.dart';
import 'package:login_shared_prefrence/login_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            color: Colors.white,
            icon: const Icon(Icons.logout),
            tooltip: 'log out',
            onPressed: () async {
              SharedPreferences sp = await SharedPreferences.getInstance();
              sp.clear();

              Navigator.push(
                  // ignore: use_build_context_synchronously
                  context,
                  MaterialPageRoute(builder: (context) => const LoginScreen()));
            },
          ),
        ],
        title: const Text(
          'HOME SCREEN',
        ),
        centerTitle: true,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.pinkAccent,
      ),
      body: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [Center(child: Text('WELCOME'))],
      ),
    );
  }
}
