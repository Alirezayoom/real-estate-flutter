import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/home_item.dart';
import '../components/filter_items.dart';

class RentPage extends StatelessWidget {
  const RentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [FilterItems(), HomeItem()],
    );
  }
}
