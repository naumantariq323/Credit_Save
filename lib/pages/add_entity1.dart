import 'package:credit_save/export.dart';
import 'package:credit_save/pages/add_entity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class AddEntity1 extends StatefulWidget {
  const AddEntity1({super.key});

  @override
  State<AddEntity1> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<AddEntity1> {
  bool ischecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(
            0xFF14244c,
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                icon: const Icon(
                  Icons.arrow_back_ios,
                  color: Colors.white,
                ),
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const AddEntity(),
                    ),
                  );
                },
              ),
              const Text(
                'Facebook',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              const Icon(
                Icons.edit,
                color: Colors.white,
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
            child: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Category'),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(
                        0xFF14244c,
                      ),
                    ),
                    child: const Text(
                      'Social',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const Text(
                'Image',
                style: TextStyle(color: Colors.black),
              ),
              const SizedBox(height: 20),
              Container(
                width: 70,
                height: 70,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(10)),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      AppAssets.facebookimage,
                      fit: BoxFit.fill,
                    )),
              ),
              const SizedBox(height: 20),
              const Text('Username'),
              const SizedBox(height: 20),
              FormBuilderTextField(
                name: "Input",
                decoration: InputDecoration(
                  hintText: 'John Alex',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                ),
              ),
              const SizedBox(height: 20),
              const Text('Password'),
              const SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(
                    hintText: '**************',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
              const SizedBox(height: 10),
              const SizedBox(height: 20),
              const Text('Website'),
              const SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(
                    hintText: 'www.testing.com',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  Checkbox(
                      value: ischecked,
                      onChanged: (bool? newValue) {
                        setState(() {
                          ischecked = newValue!;
                        });
                      }),
                  const Text('Shared with')
                ],
              ),
              const SizedBox(height: 30),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Testing User',
                    style: TextStyle(
                        color: Color(
                          0xFF14244c,
                        ),
                        fontWeight: FontWeight.bold),
                  ),
                  Text('Testing@gmail.com')
                ],
              ),
              const SizedBox(height: 30),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Testing User',
                      style: TextStyle(
                          color: Color(
                            0xFF14244c,
                          ),
                          fontWeight: FontWeight.bold)),
                  Text('Testing@gmail.com')
                ],
              ),
              const SizedBox(height: 30),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Testing User',
                      style: TextStyle(
                          color: Color(
                            0xFF14244c,
                          ),
                          fontWeight: FontWeight.bold)),
                  Text('Testing@gmail.com')
                ],
              ),
              const SizedBox(height: 30),
              const Text('Note'),
              const SizedBox(height: 20),
              FormBuilderTextField(
                name: "input",
                decoration: InputDecoration(
                    hintText: 'John Alex',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
            ],
          ),
        )));
  }
}
