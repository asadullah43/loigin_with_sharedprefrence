import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Image(
          image: NetworkImage(
              'https://www.pexels.com/photo/colorful-flowers-in-vase-17531433/')),
    );
  }
}
