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
              child: const Column(children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Credential Safe',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                      ),
                      Image(
                        image: AssetImage('assets/Vector.png'),
                      ),
                    ]),
                SizedBox(height: 20),
                TextField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search),
                      fillColor: Colors.grey,
                      filled: true,
                      border: OutlineInputBorder()),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      'Category',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    SizedBox(width: 210),
                    Icon(
                      Icons.arrow_drop_down,
                      color: Colors.white,
                    ),
                    SizedBox(width: 5),
                    Image(image: AssetImage('assets/Icon.png')),
                  ],
                )
              ])),
          const SizedBox(height: 20),
          Container(
            padding: const EdgeInsets.all(20),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.center, // Center the "02 entries" text
                  child: Text('02 entries'),
                ),
                SizedBox(height: 20),
                Text(
                  'A',
                  textAlign: TextAlign.left,
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Image(
                      image: AssetImage(
                        'assets/Amazon.png',
                      ),
                      //  width: 60,
                      //  height: 100,
                      fit: BoxFit.contain,
                    ),
                    SizedBox(
                      width: 40,
                    ),
                    Column(
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
                SizedBox(height: 20),
                Text(
                  'F',
                  textAlign: TextAlign.left,
                ),
                SizedBox(height: 30),
                Row(
                  children: [
                    Image(image: AssetImage('assets/Facebook.png')),
                    SizedBox(
                      width: 40,
                    ),
                    Column(
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
