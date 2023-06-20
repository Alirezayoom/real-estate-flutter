import 'package:flutter/material.dart';
import '../components/filter_items.dart';
import '../components/home_item.dart';

class SalePage extends StatelessWidget {
  const SalePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [FilterItems()],
    );
  }
}
