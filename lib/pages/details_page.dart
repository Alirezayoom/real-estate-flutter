import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Detail",
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff111111),
          title: Text("Details"),
          leading: IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: const Icon(Icons.arrow_back_ios)),
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            color: Color(0xff222222),
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
                      child: Image.asset(
                        // coverPhoto.toString(),
                        'images/1.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 0, vertical: 10),
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
                                  // "\$ " + price.toString(),
                                  '\$ 2000',
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
                                  // rooms.toString() + " rooms",
                                  '2 rooms',
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
                                  // purpose.toString(),
                                  'for rent',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: "Montserrat",
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 10),
                            Text(
                              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Mattis vulputate enim nulla aliquet. Odio eu feugiat pretium nibh ipsum consequat. Nunc sed velit dignissim sodales. Turpis egestas maecenas pharetra convallis posuere. Orci eu lobortis elementum nibh tellus molestie. Sapien faucibus et molestie ac. Facilisis mauris sit amet massa vitae tortor condimentum. In nibh mauris cursus mattis. Iaculis at erat pellentesque adipiscing commodo elit at imperdiet dui. Amet tellus cras adipiscing enim eu. Interdum consectetur libero id faucibus nisl tincidunt eget. Leo urna molestie at elementum eu facilisis sed odio. Sodales ut etiam sit amet nisl purus. Hac habitasse platea dictumst quisque sagittis purus sit amet volutpat. Phasellus vestibulum lorem sed risus ultricies tristique nulla aliquet. Magna fermentum iaculis eu non diam phasellus vestibulum. Urna nunc id cursus metus aliquam eleifend mi in nulla. Posuere sollicitudin aliquam ultrices sagittis orci. Pharetra pharetra massa massa ultricies mi quis hendrerit. Velit ut tortor pretium viverra suspendisse potenti nullam. Pretium viverra suspendisse potenti nullam ac. Nec ullamcorper sit amet risus. Adipiscing diam donec adipiscing tristique risus nec feugiat in fermentum. Maecenas pharetra convallis posuere morbi leo urna molestie. Tristique senectus et netus et malesuada fames ac turpis. Vulputate dignissim suspendisse in est ante in nibh.Nibh praesent tristique magna sit amet purus gravida quis blandit. Bibendum ut tristique et egestas. Malesuada pellentesque elit eget gravida cum.",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Montserrat'),
                            )
                          ],
                        ),
                      ),

                      SizedBox(
                        height: 45,
                        width: 45,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(100),
                          child: Image.asset(
                            // logo.toString(),
                            'images/1.jpg',
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
          ),
        ),
      ),
    );
  }
}
