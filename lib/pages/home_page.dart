import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/home_item.dart';
import '../models/homes.dart';
import '../models/homes.api.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late List<Homes> homes;
  bool isLoading = true;

  @override
  void initState() {
    super.initState();

    getHomes();
  }

  Future<void> getHomes() async {
    homes = await HomesApi.getHomes();
    setState(() {
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return isLoading
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
          );
  }
}
