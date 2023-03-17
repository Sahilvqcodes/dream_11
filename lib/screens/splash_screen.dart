import 'dart:async';

//import 'package:dream_11/home_screen.dart';
import 'package:flutter/material.dart';

import 'first_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds:5),
    ()=>Navigator.pushReplacement(context,
        MaterialPageRoute(builder:(context) =>
            const FirstScreen()
        )
    )
    );
  }
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
        height: double.infinity,
        width: double.infinity,
        child: Image.asset("assets/images/Rectangle.png"),
          
      
      ),
        Positioned(
            top:85,
            left: 35,right: 35,
            child: Image.asset('assets/images/Rectangle4.png',)),
        Positioned(
            top:385,
            left: 35,right: 35,
            child: Image.asset('assets/images/Rectangle2.png',)),
        const Positioned(
            top:650,
            left: 145,right: 35,
            child:Text("Official Partner",style: TextStyle(decoration: TextDecoration.none,
                fontWeight: FontWeight.bold,
            fontSize:15,color: Colors.white),),),
        Positioned(
            top:685,
            left: 35,right: 35,
            child: Image.asset('assets/images/Rectangle3.png',)),
    ],
    );
  }
}
