import 'package:flutter/material.dart';
import 'components/item.dart';
import 'components/app_hero.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xff222222),
        appBar: AppBar(
          title: const Text("Real Estate"),
          backgroundColor: const Color(0xff111111),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: const [
              AppHero(),
              SizedBox(
                height: 10,
              ),
              Item(),
              Item(),
              Item(),
            ],
          ),
        ),
      ),
    );
  }
}
