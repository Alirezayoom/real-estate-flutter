import 'package:flutter/material.dart';
import '../components/filter_items.dart';
import '../components/home_item.dart';
import '../models/homes.dart';
import '../models/sale.api.dart';

class SalePage extends StatefulWidget {
  const SalePage({super.key});

  @override
  State<SalePage> createState() => _SalePageState();
}

class _SalePageState extends State<SalePage> {
  late List<Homes> homes;
  bool isLoading = true;

  @override
  void initState() {
    super.initState();

    getHomes();
  }

  Future<void> getHomes() async {
    homes = await SaleApi.getHomes();
    setState(() {
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 15),
        Expanded(
          child: isLoading
              ? const Center(child: CircularProgressIndicator())
              : ListView.builder(
                  itemBuilder: (context, index) {
                    return HomeItem(
                        title: homes[index].title,
                        purpose: homes[index].purpose,
                        price: homes[index].price,
                        rooms: homes[index].rooms,
                        coverPhoto: homes[index].coverPhoto,
                        logo: homes[index].logo);
                  },
                  itemCount: homes.length,
                ),
        ),
      ],
    );
  }
}
