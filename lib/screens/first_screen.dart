import 'package:dream_11/screens/register_screen.dart';
import 'package:flutter/material.dart';

import 'home_screen.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return
      Stack(
        children: [
          const SingleChildScrollView(),
          SizedBox(
            height: double.infinity,
            width: double.infinity,
            child: Image.asset("assets/images/Rectangle.png"),
          ),
          Positioned(
              top: 85,
              left: 35,
              right: 35,
              child: Image.asset(
                'assets/images/Rectangle4.png',
              )),
          Positioned(
              top: 385,
              left: 35,
              right: 35,
              child: Image.asset(
                'assets/images/Rectangle2.png',
              )),


          Padding(
            padding: const EdgeInsets.only(top: 500, left: 45, right: 45),
            child: Column(
              children: [
                const Text(
                  "Select A Match",
                  style: TextStyle(
                      decoration: TextDecoration.none,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.white),
                ),
                const SizedBox(height: 10.0),
                const Text(
                  "Choose an upcoming match that you\n want to play",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      decoration: TextDecoration.none,
                      //fontWeight: FontWeight.bold,
                      fontSize: 12,
                      color: Colors.white),
                ),
                const SizedBox(height: 50),


                   GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) =>
                              const RegisterScreen()

                          )
                      );
                    },
                    child: Container(


                      height: 50,
                      width: 300,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Colors.white,),
                      child: const Center(
                        child: Text(
                          "REGISTER",
                          style: TextStyle(
                              decoration: TextDecoration.none,
                              color: Colors.black54,
                              fontSize: 15),
                        ),
                      ),
                    ),
                  ),



                const SizedBox(height: 10),
                // const SizedBox(
                //   height: 10,
                //   ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "Invited By A Friend ?\nEnter Code",
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 10,
                          color: Colors.white),
                    ),
                    Text(
                      "Already a User ?\nEnter Code",
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 10,
                          color: Colors.white),
                    ),
                  ],
                )
              ],
            ),
          )


        ],



    );
  }
}
