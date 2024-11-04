import 'package:credit_save/export.dart';
import 'package:credit_save/constants.dart';
import 'package:credit_save/pages/register.dart';
import 'package:flutter/material.dart';

import 'package:credit_save/pages/home.dart';

import 'package:flutter_form_builder/flutter_form_builder.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              AppAssets.logo,
              height: 100,
            ),
            const SizedBox(height: 10),
            const Text(
              'Credential Safe',
              style: TextStyle(
                  color: appPrimarycolor,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text(
              'Password Manager',
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Align(
              alignment: Alignment.topLeft,
              child: Text('Email'),
            ),
            FormBuilderTextField(
              name: 'Username',
              decoration: InputDecoration(
                  labelText: 'example@gmail.com',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10))),
            ),
            const SizedBox(
              height: 20,
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Text('Password'),
            ),
            FormBuilderTextField(
              name: 'Password',
              decoration: InputDecoration(
                  labelText: '*************',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10))),
            ),
            const Align(
              alignment: Alignment.bottomRight,
              child: Text(
                'Forgot Password?',
                style: TextStyle(
                  color: appPrimarycolor,
                ),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => const Home()));
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: appPrimarycolor,
                    minimumSize: const Size(300, 50),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                child: const Text(
                  'Login',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                )),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Donot have account?'),
                const SizedBox(width: 7),
                InkWell(
                  onTap: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => Register()));
                  },
                  child: const Text(
                    "Create account",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                )
              ],
            )
          ],
        ),
      )
    ]));
  }
}
