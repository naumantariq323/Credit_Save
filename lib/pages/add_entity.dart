import 'package:credit_save/pages/add_entity1.dart';
import 'package:flutter/material.dart';

class AddEntity extends StatefulWidget {
  const AddEntity({super.key});

  @override
  State<AddEntity> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<AddEntity> {
  bool ischecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 12, 37, 57),
            ),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.arrow_back_ios, color: Colors.white),
                    Icon(
                      Icons.save,
                      color: Colors.white,
                    )
                  ],
                ),
                SizedBox(height: 20),
                Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Title',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    )),
                SizedBox(height: 20),
                Text(
                  'Add Title',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20,
                ),
                Divider(
                  height: 10,
                  thickness: 2,
                  color: Colors.white,
                )
              ],
            ),
          ),
          Container(
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
                        backgroundColor: const Color.fromARGB(255, 12, 37, 57),
                      ),
                      child: const Text(
                        'Social',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    const Icon(
                      Icons.add,
                      color: Color.fromARGB(255, 12, 37, 57),
                    )
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
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(10)),
                  child: const Icon(Icons.add),
                ),
                const SizedBox(height: 20),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Username'),
                    Icon(Icons.edit),
                  ],
                ),
                const SizedBox(height: 20),
                TextField(
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
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 5,
                        width: 150,
                        decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 12, 37, 57),
                        ),
                      ),
                      Container(
                        height: 5,
                        width: 150,
                        decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 194, 193, 193),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                const Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Medium',
                    style: TextStyle(
                        color: Color.fromARGB(255, 12, 37, 57),
                        fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(height: 20),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Website'),
                    SizedBox(
                      width: 220,
                    ),
                    Icon(Icons.edit),
                    Icon(Icons.delete)
                  ],
                ),
                const SizedBox(height: 20),
                TextField(
                  decoration: InputDecoration(
                      hintText: 'www.testing.com',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                ),
                const SizedBox(height: 20),
                Align(
                    alignment: Alignment.center,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 12, 37, 57),
                      ),
                      child: const Text(
                        'Add Field',
                        style: TextStyle(color: Colors.white),
                      ),
                    )),
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
                    const Text('Shared Credential')
                  ],
                ),
                const SizedBox(height: 20),
                const Text('Shared with'),
                const SizedBox(height: 20),
                TextField(
                  decoration: InputDecoration(
                      hintText: 'John Alex',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                ),
                const SizedBox(height: 30),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Testing User',
                          style: TextStyle(
                              color: Color.fromARGB(255, 12, 37, 57),
                              fontWeight: FontWeight.bold),
                        ),
                        Text('Testing@gmail.com')
                      ],
                    ),
                    Icon(Icons.delete)
                  ],
                ),
                const SizedBox(height: 30),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Testing User',
                            style: TextStyle(
                                color: Color.fromARGB(255, 12, 37, 57),
                                fontWeight: FontWeight.bold)),
                        Text('Testing@gmail.com')
                      ],
                    ),
                    Icon(Icons.delete)
                  ],
                ),
                const SizedBox(height: 30),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Testing User',
                            style: TextStyle(
                                color: Color.fromARGB(255, 12, 37, 57),
                                fontWeight: FontWeight.bold)),
                        Text('Testing@gmail.com')
                      ],
                    ),
                    Icon(Icons.delete)
                  ],
                ),
                const SizedBox(height: 30),
                const Text('Note'),
                const SizedBox(height: 20),
                TextField(
                  decoration: InputDecoration(
                      hintText: 'John Alex',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                ),
                const SizedBox(height: 30),
                Align(
                    alignment: Alignment.bottomCenter,
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => AddEntity1()));
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor:
                                const Color.fromARGB(255, 22, 36, 48),
                            minimumSize: const Size(300, 50),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20))),
                        child: const Text(
                          'Next',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        )))
              ],
            ),
          )
        ],
      ),
    ));
  }
}
