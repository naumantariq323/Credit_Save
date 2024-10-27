import 'package:flutter/material.dart';

import 'package:credit_save/pages/home.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/Logo.jpg',
                  height: 90,
                ),
                const SizedBox(height: 20),
                const Text(
                  'CredentialSafe',
                  style: TextStyle(
                      color: Color.fromARGB(255, 12, 37, 57),
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                const SizedBox(height: 20),
                const Text(
                  'Password Manager',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 20),
                const Align(
                  alignment: Alignment.topLeft,
                  child: Text('Email'),
                ),
                const SizedBox(height: 20),
                const TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 20),
                const Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Password',
                  ),
                ),
                const SizedBox(height: 20),
                const TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 20),
                const Align(
                  alignment: Alignment.topRight,
                  child: Text(
                    'Forgot Password?',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => const Home()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 22, 36, 48),
                    minimumSize: const Size(300, 50),
                    side: const BorderSide(color: Colors.black),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: const Text(
                    'Login',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  'Donot have account.Register Now!',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
