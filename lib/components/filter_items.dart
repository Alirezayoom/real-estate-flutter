import 'package:flutter/material.dart';

class FilterItems extends StatelessWidget {
  const FilterItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.fromLTRB(10, 16, 10, 24),
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "Filter",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontFamily: "Montserrat",
                      fontWeight: FontWeight.bold),
                ),
                Icon(
                  Icons.filter_list,
                  color: Colors.white,
                )
              ],
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Color(0xff444444),
                  ),
                  onPressed: () {},
                  child: const Text(
                    'House',
                    style: TextStyle(
                        color: Colors.white, fontFamily: "Montserrat"),
                  ),
                ),
                SizedBox(width: 10),
                TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Color(0xff444444),
                  ),
                  onPressed: () {},
                  child: const Text(
                    'Apartment',
                    style: TextStyle(
                        color: Colors.white, fontFamily: "Montserrat"),
                  ),
                ),
              ],
            ),
          ],
        ));
  }
}
