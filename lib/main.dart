import 'package:extra_pratice/preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Home.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: SpleshPage(duration: 2,goToPage:PreviewPage()),
  ));
}

class SpleshPage extends StatelessWidget {
  int duration =0;
  Widget goToPage;

   SpleshPage({Key? key,required this.duration,required this.goToPage}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: this.duration), (){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> this.goToPage));
    });
    return  Scaffold(
      body: Center(
        child: Image.asset("images/home.png"),
      ),
    );
  }

}




