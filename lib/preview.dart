import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'Home.dart';

class PreviewPage extends StatefulWidget {
  const PreviewPage({Key? key}) : super(key: key);

  @override
  _PreviewPageState createState() => _PreviewPageState();
}

class _PreviewPageState extends State<PreviewPage> {
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.1),
                      spreadRadius: 2,
                      blurRadius: 10,
                      offset: Offset(4, 8),
                    )
                  ]),
              margin: EdgeInsets.only(top: 125.5, left: 30.0),
              padding: EdgeInsets.fromLTRB(23.5, 41, 23, 41),
              child: Image.asset("images/car.png"),
            ),
            SizedBox(
              height: 105,
            ),
            Expanded(
              child: PageView(
                controller: _controller,
                scrollDirection: Axis.horizontal,
                children: [
                  CustomText(),
                  CustomText(),
                  CustomText(),
                  CustomText(),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30.0),
              child: SmoothPageIndicator(
                controller: _controller,
                count: 4,
                effect: JumpingDotEffect(
                    activeDotColor: Colors.deepOrange,
                    dotColor: Colors.black12,
                    dotHeight: 8.0,
                    dotWidth: 8.0),
              ),
            ),
            SizedBox(height: 25.0),
            Image.asset("images/Bcar.png"),
            Padding(
              padding:
                  const EdgeInsets.only(left: 32.0, bottom: 49.2, right: 135),
              child: TextButton(
                style: ButtonStyle(
                  backgroundColor:MaterialStateProperty.all<Color>(Colors.white) ,
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50.0),
                          side: BorderSide(color: Colors.transparent))),
                ),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
                },
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0,top: 10,bottom: 0.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'Let\'s get rides',
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(width: 5.0,),
                      Icon(
                        Icons.arrow_forward,
                        color: Colors.black,
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomText extends StatelessWidget {
  const CustomText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30.0, right: 30.0),
      child: Text(
        "Users have the liberty to choose "
        "The type of vehicle as per their need.",
        style: TextStyle(
            fontSize: 16.0, fontFamily: 'Popping', color: Colors.black54),
      ),
    );
  }
}
