import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/details_page.dart';

class HomeItem extends StatelessWidget {
  final String? title;
  final String? purpose;
  final double? price;
  final int? rooms;
  final String? coverPhoto;
  final String? logo;

  HomeItem(
      {this.title,
      this.purpose,
      this.price,
      this.rooms,
      this.coverPhoto,
      this.logo});

  // const HomeItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 10, left: 10, bottom: 20),
      child: Column(
        children: [
          SizedBox(
            height: 200,
            width: double.infinity,
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) {
                      return const DetailsPage();
                    },
                  ),
                );
              },
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.network(
                  coverPhoto.toString(),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            'Price: ',
                            style: TextStyle(
                              color: Colors.white70,
                              fontFamily: "Montserrat",
                            ),
                          ),
                          Text(
                            "\$ " + price.toString(),
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: "Montserrat",
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 2),
                      Row(
                        children: [
                          Text(
                            'Features: ',
                            style: TextStyle(
                              color: Colors.white70,
                              fontFamily: "Montserrat",
                            ),
                          ),
                          Text(
                            rooms.toString() + " rooms",
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: "Montserrat",
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 2),
                      Row(
                        children: [
                          Text(
                            'Purpose: ',
                            style: TextStyle(
                              color: Colors.white70,
                              fontFamily: "Montserrat",
                            ),
                          ),
                          Text(
                            purpose.toString(),
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: "Montserrat",
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 2),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Description: ',
                            style: TextStyle(
                              color: Colors.white70,
                              fontFamily: "Montserrat",
                            ),
                          ),
                          Expanded(
                            child: Text(
                              title.toString(),
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: "Montserrat",
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                SizedBox(
                  height: 45,
                  width: 45,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Image.network(
                      logo.toString(),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

                // const SizedBox(
                //   height: 40,
                //   width: 40,
                //   child: CircleAvatar(
                //     radius: 10,
                //     backgroundImage: (logo.toString() == null) ? null : NetworkImage(logo.toString())
                //     // Image.network(logo.toString()),
                //   ),
                // )
              ],
            ),
          )
        ],
      ),
    );
  }
}
