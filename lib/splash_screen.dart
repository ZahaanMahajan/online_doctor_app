// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:online_doctor_app/common/common_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigateToHome();
  }

  _navigateToHome() async {
    await Future.delayed(
      const Duration(milliseconds: 1000),
      () {},
    );
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => const CommonScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
