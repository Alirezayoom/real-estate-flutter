import 'package:flutter/material.dart';
import '../pages/details_page.dart';

class HomeHero extends StatelessWidget {
  const HomeHero({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const Padding(padding: EdgeInsets.all(10)),
          const Text(
            "RENT A HOME",
            style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontFamily: "Montserrat",
                fontWeight: FontWeight.w800),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            "Rental homes for everyone",
            style: TextStyle(
              color: Colors.white,
              fontFamily: "Montserrat",
            ),
          ),
          const SizedBox(height: 4),
          const Text(
            'Explore Apartments, Villas and Homes',
            style: TextStyle(
              color: Colors.white,
              fontFamily: "Montserrat",
            ),
          ),
          const SizedBox(height: 10),
          Container(
            padding: const EdgeInsets.all(10),
            child: TextButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) {
                      return DetailsPage();
                    },
                  ),
                );
              },
              style: TextButton.styleFrom(
                padding: const EdgeInsets.all(12),
                backgroundColor: const Color(0xff444444),
              ),
              child: const Text(
                'Explore renting',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: "Montserrat",
                ),
              ),
            ),
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}
