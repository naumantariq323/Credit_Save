import 'package:flutter/material.dart';
import 'package:credit_save/pages/login.dart';
import 'package:credit_save/export.dart';
import 'package:credit_save/constants.dart';

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
        context, MaterialPageRoute(builder: (context) => const Login()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset(
            AppAssets.logo,
            height: 200,
          ),
          const Text(
            'Credential Safe',
            style: TextStyle(
                color: appPrimarycolor,
                fontSize: 25,
                fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 10),
          const Text(
            'Password Manager',
            style: TextStyle(
                color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
