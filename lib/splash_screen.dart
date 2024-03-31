import 'dart:async';

import 'package:flutter/material.dart';

import 'package:login_shared_prefrence/login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 3),
      () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const LoginScreen(),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Image(
          height: double.infinity,
          fit: BoxFit.fitHeight,
          image: NetworkImage(
            'https://images.pexels.com/photos/17531433/pexels-photo-17531433/free-photo-of-colorful-flowers-in-vase.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
          )),
    );
  }
}
