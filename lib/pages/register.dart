import 'package:credit_save/constants.dart';
import 'package:credit_save/pages/home.dart';
import 'package:credit_save/pages/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:credit_save/export.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
              padding: EdgeInsets.all(20),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      AppAssets.logo,
                      height: 100,
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'CredentialSafe',
                      style: TextStyle(
                          color: appPrimarycolor,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'Password Manager',
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 20),
                    const Align(
                      alignment: Alignment.topLeft,
                      child: Text('Name'),
                    ),
                    const SizedBox(height: 10),
                    FormBuilderTextField(
                      name: "Name",
                      decoration: InputDecoration(
                          labelText: "John Alex",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10))),
                    ),
                    const SizedBox(height: 10),
                    const Align(
                      alignment: Alignment.topLeft,
                      child: Text('Email'),
                    ),
                    const SizedBox(height: 10),
                    FormBuilderTextField(
                      name: 'Email',
                      decoration: InputDecoration(
                          labelText: 'Example@gmail.com',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10))),
                    ),
                    const SizedBox(height: 10),
                    const Align(
                      alignment: Alignment.topLeft,
                      child: Text('Password'),
                    ),
                    const SizedBox(height: 10),
                    FormBuilderTextField(
                      name: 'Password',
                      decoration: InputDecoration(
                          labelText: '***********',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10))),
                    ),
                    const SizedBox(height: 20),
                    ElevatedButton(
                        onPressed: () {
                          Navigator.pushReplacement(context,
                              MaterialPageRoute(builder: (context) => Home()));
                        },
                        style: ElevatedButton.styleFrom(
                            minimumSize: const Size(300, 50),
                            backgroundColor: appPrimarycolor,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10))),
                        child: const Text(
                          'Register',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        )),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text('Already have an account?'),
                        const SizedBox(width: 7),
                        InkWell(
                          onTap: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Login()));
                          },
                          child: const Text(
                            "Login",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    )
                  ]))
        ],
      ),
    );
  }
}
