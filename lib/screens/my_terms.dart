import 'package:flutter/material.dart';

class MyTerms extends StatefulWidget {
  const MyTerms({Key? key}) : super(key: key);

  @override
  State<MyTerms> createState() => _MyTermsState();
}

class _MyTermsState extends State<MyTerms> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(


      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 200,
                width: double.infinity,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    padding: const EdgeInsets.all(8),
                    itemCount: 21,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                          height: 50,
                          width: 20,
                          color: index % 2 == 0
                              ? const Color(0xff25B434)
                              : const Color(0xff059739));
                    }),
              ),
              const Positioned(
                top: 60,
                left: 50,
                child: Text(
                  "SL",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
              const Positioned(
                top: 90,
                left: 55,
                child: Text(
                  "5",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ),
              const Positioned(
                top: 60,
                left: 120,
                child: Text(
                  "UAE",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
              const Positioned(
                top: 90,
                left: 130,
                child: Text(
                  "6",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ),
              Positioned(
                top: 50,
                left: 190,
                child: Container(
                  height: 60,
                  width: 60,
                  decoration: const BoxDecoration(
                      color: Color(0xffD9D9D9), shape: BoxShape.circle),
                ),
              ),
              Positioned(
                top: 50,
                left: 185,
                child: Container(
                    height: 20,
                    width: 20,
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        // color: Color(0xffD9D9D9),
                        shape: BoxShape.circle),
                    child: const Center(child: Text("C"))),
              ),
              Positioned(
                top: 95,
                left: 185.0,
                child: Container(
                  height: 20,
                  width: 70,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5.0)),
                  child: const Center(
                    child: Text("K Mendis",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold)),
                  ),
                ),
              ),
              Positioned(
                top: 50,
                left: 280,
                child: Container(
                  height: 60,
                  width: 60,
                  decoration: const BoxDecoration(
                      color: Color(0xffD9D9D9), shape: BoxShape.circle),
                ),
              ),
              Positioned(
                top: 50,
                left: 275,
                child: Container(
                    height: 20,
                    width: 20,
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        // color: Color(0xffD9D9D9),
                        shape: BoxShape.circle),
                    child: const Center(child: Text("C"))),
              ),
              Positioned(
                top: 95,
                left: 275.0,
                child: Container(
                  height: 20,
                  width: 70,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5.0)),
                  child: const Center(
                    child: Text("K Mendis",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold)),
                  ),
                ),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.all(10.0),
            height: 50,
            width: double.infinity,
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("WK2"),
                Text("BAT3"),
                Text("AR3"),
                Text("bOWL3"),
              ],
            ),
          )
        ],
      ),
    );
  }
}
