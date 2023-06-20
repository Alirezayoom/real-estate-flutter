import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/rent_page.dart';
import 'package:flutter_application_1/pages/sale_page.dart';
import 'package:flutter_application_1/pages/search_page.dart';
import 'pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Widget> pages = const [HomePage(), RentPage(), SalePage(), SearchPage()];
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xff222222),
        appBar: AppBar(
          title: const Text("Real Estate"),
          backgroundColor: const Color(0xff111111),
        ),
        body: pages[currentPage],
        bottomNavigationBar: NavigationBar(
          destinations: const [
            NavigationDestination(icon: Icon(Icons.home), label: "Home"),
            NavigationDestination(icon: Icon(Icons.house), label: "Rent"),
            NavigationDestination(icon: Icon(Icons.house), label: "Sale"),
            NavigationDestination(icon: Icon(Icons.search), label: "Search"),
          ],
          onDestinationSelected: (int index) {
            setState(() {
              currentPage = index;
            });
          },
          selectedIndex: currentPage,
        ),
      ),
    );
  }
}
