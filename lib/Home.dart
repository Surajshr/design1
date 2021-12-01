import 'dart:math' as math;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: homePageDesign(),
    );
  }
}

class homePageDesign extends StatefulWidget {
  const homePageDesign({Key? key}) : super(key: key);

  @override
  _homePageDesignState createState() => _homePageDesignState();
}

class _homePageDesignState extends State<homePageDesign> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Container(
      color: Colors.white,
      child: Stack(
        children: [
          Container(
            child: Image(
              height: height,
              width: width,
              image: AssetImage('images/Map.png'),
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: 60.0,
            left: 20.0,
            child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                ),
                height: 60.0,
                width: width * .90 - 5,
                child: Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 22.0),
                        child: TextField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Enter Location",
                              hintStyle: TextStyle(
                                  fontSize: 15.0, color: Colors.black45)),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 10.0),
                      child: Container(
                        height: 35.75,
                        width: 38,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0x1AEF1D52),
                        ),
                        child: Icon(
                          Icons.search,
                          color: Color(0xFFEF1D52),
                        ),
                      ),
                    )
                  ],
                )),
          ),
          Positioned(
            top: height * .50 - 30,
            left: width * .85 - 10,
            child: GestureDetector(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.0),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(10.0, 5.0, 5.0, 10.0),
                  child: Transform.rotate(
                    angle: 90 * math.pi / 340,
                    child: Icon(
                      Icons.navigation_rounded,
                      color: Colors.black,
                      size: 30.0,
                    ),
                  ),
                ),
              ),
              onTap: () {
                // Get.back();
              },
            ),
          ),
          Positioned(
            top: height * .55,
            child: Container(
              height: height * .5,
              width: width,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0),
                ),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.only(top: 5.0, left: 15.0, right: 17.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 15.0),
                        child: Image(
                          image: AssetImage("images/slide.png"),
                        ),
                      ),
                    ),
                    SizedBox(height: 20.8),
                    Text(
                      "Suggested Rides",
                      style: TextStyle(
                          fontSize: 15.0,
                          fontFamily: "Poppins",
                          color: Colors.black,
                          decoration: TextDecoration.none),
                    ),
                    SizedBox(
                      height: 9.5,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Color(0xDEF1D52),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 14.0, top: 11, bottom: 11.5,right:19.0 ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "JUBERGO",
                                  style: TextStyle(
                                      fontSize: 15, fontFamily: 'Poppins'),
                                ),
                                SizedBox(
                                  height: 1,
                                ),
                                Text(
                                  "Best Save",
                                  style: TextStyle(
                                      fontSize: 11,
                                      fontFamily: 'Poppins',
                                      color: Color(0xFFEF1D52)),
                                ),
                                SizedBox(
                                  height: 7.5,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "\$25.50",
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontFamily: 'Poppins',
                                          color: Color(0xFFEF1D52)),
                                    ),
                                    SizedBox(
                                      width: 39.3,
                                    ),
                                    Icon(
                                      Icons.timer_rounded,
                                      size: 13.0,
                                    ),
                                    SizedBox(
                                      width: 3,
                                    ),
                                    Text(
                                      "1-4 min",
                                      style: TextStyle(
                                        fontSize: 11,
                                        fontFamily: 'Poppins',
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                            Image.asset("images/taxi.png")
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 10.0,),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Color(0xD515151),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 14.0, top: 11, bottom: 11.5,right:19.0 ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "JUBERGO",
                                  style: TextStyle(
                                      fontSize: 15, fontFamily: 'Poppins'),
                                ),
                                SizedBox(
                                  height: 1,
                                ),
                                Text(
                                  "4 Seats",
                                  style: TextStyle(
                                      fontSize: 11,
                                      fontFamily: 'Poppins',
                                      color: Color(0xFFEF1D52)),
                                ),
                                SizedBox(
                                  height: 7.5,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "\$35.",
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontFamily: 'Poppins',
                                          color: Color(0xFFEF1D52)),
                                    ),
                                    SizedBox(
                                      width: 39.3,
                                    ),
                                    Icon(
                                      Icons.timer_rounded,
                                      size: 13.0,
                                    ),
                                    SizedBox(
                                      width: 3,
                                    ),
                                    Text(
                                      "1-5 min",
                                      style: TextStyle(
                                        fontSize: 11,
                                        fontFamily: 'Poppins',
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                            Image.asset("images/scooter.png")
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 24.0, right: 24.0),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Color(0xc4ef1d52),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0)),
                          ),
                          onPressed: () {},
                          child: Padding(
                            padding:
                            const EdgeInsets.fromLTRB(80.4, 15.5, 100.4, 20.5),
                            child: Text(
                              "Book Now",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16.0,
                              ),
                            ),
                          )),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
    ;
  }
}
