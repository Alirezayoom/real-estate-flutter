import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xff222222),
        appBar: AppBar(
          title: const Text("Real Estate"),
          backgroundColor: Color(0xff111111),
        ),
        body: Column(
          children: [
            Center(
              child: Column(
                children: [
                  const Padding(padding: EdgeInsets.all(10)),
                  const Text(
                    "RENT A HOME",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "Rental homes for everyone",
                    style: TextStyle(color: Colors.white),
                  ),
                  const SizedBox(height: 4),
                  const Text(
                    'Explore Apartments, Villas and Homes',
                    style: TextStyle(color: Colors.white),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    padding: const EdgeInsets.all(10),
                    child: TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        padding: const EdgeInsets.all(12),
                        backgroundColor: const Color(0xff444444),
                      ),
                      child: const Text(
                        'Explore renting',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 10),
              color: Colors.green,
              child: Column(
                children: [
                  Container(
                    color: Colors.red,
                    height: 200,
                    width: double.infinity,
                    child: const Text('image of house'),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text('name'),
                      Text('image'),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
