import 'package:flutter/material.dart';
import 'package:credit_save/pages/login.dart';
import 'package:credit_save/export.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    config();
  }

  config() async {
    await Future.delayed(const Duration(milliseconds: 1900));
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => const Login(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Image.asset(
            AppAssets.logo,
            height: 150,
          ),
          const SizedBox(height: 30),
          const Text(
            'Credential Safe',
            style: TextStyle(
                color: Colors.blue, fontWeight: FontWeight.bold, fontSize: 20),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 30),
          const Text(
            "Password Manager",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
