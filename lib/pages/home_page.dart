import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/home_item.dart';
import '../components/home_hero.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        HomeHero(),
        HomeItem(),
        HomeItem(),
        HomeItem(),
        HomeItem(),
      ],
    );
  }
}
