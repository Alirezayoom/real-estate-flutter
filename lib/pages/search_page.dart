import 'package:flutter/material.dart';
import '../components/filter_items.dart';
import '../components/home_item.dart';
import '../models/homes.dart';
import '../models/homes.api.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
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
    return Column(
      children: [
        SizedBox(height: 15),
        FilterItems(),
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
