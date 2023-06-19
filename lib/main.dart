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
                  Padding(padding: EdgeInsets.all(10)),
                  Text(
                    "RENT A HOME",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Rental homes for everyone",
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(height: 4),
                  Text(
                    'Explore Apartments, Villas and Homes',
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(height: 10),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Explore renting',
                      style: TextStyle(
                        color: Colors.white,
                        backgroundColor: Colors.blue,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
