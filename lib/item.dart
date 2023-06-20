import 'package:flutter/material.dart';

class Item extends StatelessWidget {
  const Item({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 10, left: 10, bottom: 20),
      child: Column(
        children: [
          SizedBox(
            height: 200,
            width: double.infinity,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                'images/1.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 0, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Price:',
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(height: 2),
                    Text(
                      'Features:',
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(height: 2),
                    Text(
                      'Description:',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 40,
                  width: 40,
                  child: CircleAvatar(
                    radius: 10,
                    backgroundImage: AssetImage('images/1.jpg'),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
