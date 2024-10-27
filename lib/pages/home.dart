import 'package:credit_save/pages/add_entity.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
              padding: const EdgeInsets.all(30),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20)),
                color: Color.fromARGB(255, 12, 37, 57),
              ),
              child: Column(children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Credential Safe',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                      ),
                      Image.asset('assets/Vector.png'),
                    ]),
                const SizedBox(height: 20),
                TextField(
                  decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.search),
                      fillColor: Colors.grey,
                      filled: true,
                      hintText: 'Search',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Category',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    const SizedBox(width: 190),
                    const Icon(
                      Icons.arrow_drop_down,
                      color: Colors.white,
                    ),
                    Image.asset('assets/Icon.png'),
                  ],
                )
              ])),
          const SizedBox(height: 20),
          Container(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Align(
                  alignment: Alignment.center,
                  child: Text('02 entries'),
                ),
                const SizedBox(height: 20),
                const Text(
                  'A',
                  textAlign: TextAlign.left,
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    Image.asset('assets/Amazon.png'),
                    const SizedBox(
                      width: 40,
                    ),
                    const Column(
                      children: [
                        Text(
                          'Amazon',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text('Amazon@example.com')
                      ],
                    )
                  ],
                ),
                const SizedBox(height: 20),
                const Text(
                  'F',
                  textAlign: TextAlign.left,
                ),
                const SizedBox(height: 30),
                Row(
                  children: [
                    Image.asset('assets/Facebook.png'),
                    const SizedBox(
                      width: 40,
                    ),
                    const Column(
                      children: [
                        Text(
                          'Facebook',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text('Facebook@example.com')
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => const AddEntity()));
            },
            style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 22, 36, 48),
                maximumSize: const Size(300, 50),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20))),
            child: const Text(
              'Next',
              style: TextStyle(color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}
