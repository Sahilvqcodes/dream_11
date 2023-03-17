

import 'package:dream_11/screens/frist_route.dart';
import 'package:dream_11/screens/second_route.dart';
import 'package:dream_11/screens/third_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



import 'frist_screen.dart';

class JoinContests extends StatefulWidget {
  const JoinContests({Key? key}) : super(key: key);

  @override
  State<JoinContests> createState() => _JoinContestsState();
}

class _JoinContestsState extends State<JoinContests> {



 // int i = 0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  right: 150,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    Text(
                      "SL",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    SizedBox(width: 5.0),
                    Text("Vs"),
                    SizedBox(width: 5.0),
                    Text(
                      "UAE",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    )
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(right: 150),
                child: Text(
                  "2h 26min Left",
                  style: TextStyle(color: Colors.white, fontSize: 10),
                ),
              ),
            ],
          ),
          const Icon(
            Icons.wallet,
            color: Colors.white,
          ),
        ],

        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new_outlined),
          onPressed: () {
            Navigator.pop(context);
          },
        ), // appbar leading icon.

        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 50,
              width: MediaQuery.of(context).size.width,
            color:Color(0xffC90000),

            child: const Center(
                child: Text("Prize Pool",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.white)),
              ),
            ),
            Container(
              height: 180,
              width: double.infinity,
              color: Colors.black,
              child: Padding(
                padding:  EdgeInsets.all(8.0),
                child: Column(
                  children: [


                     Text("You can Select Any 7 from each team",
                        style: TextStyle(color: Colors.white)),
                    // SizedBox(height: 10),
                    Container(


                      height: 100,
                    //  color: Colors.red,



                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              children: [
                                Stack(children: [
                                  Container(
                                    height: 50,
                                    width: 50,
                                    color: Colors.black,
                                  ),
                                  Container(
                                    height: 20,
                                    width: 50,
                                    color: Colors.red,
                                    child: const Center(
                                      child: Text(
                                        "players",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    top: 20,
                                    left: 10,
                                    child: Container(
                                      height: 20,
                                      width: 30,
                                      color: Colors.white,
                                      child: RichText(
                                        text: const TextSpan(
                                            text: '2', style: TextStyle(
                                            color: Colors.black, fontSize:15),
                                            children: <TextSpan>[
                                              TextSpan(text: '/11',
                                                  style: TextStyle(
                                                      color: Colors.black54,
                                                      fontSize: 10)
                                              )
                                            ]

                                    ),
                                  ),
                                    ),
                                  ),
                                ]
                                    ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              children: [
                                Stack(children: [
                                  Container(
                                    height: 80,
                                    width: 50,
                                    color: Colors.black,
                                  ),

                                  //CircleAvatar
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10),
                                    child: Container(
                                      height: 40,
                                      width: 50,
                                      decoration: const BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage(
                                              "assets/images/sl.png"),
                                          fit: BoxFit.fill,
                                        ),
                                        shape: BoxShape.circle,
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    top: 5.0,
                                    left: 30,
                                    child: Container(
                                      height: 18,
                                      width: 18,
                                      decoration: const BoxDecoration(
                                        color: Colors.white,
                                        shape: BoxShape.circle,
                                      ),
                                      child: const Center(
                                        child: Text("1"),
                                      ),
                                    ),
                                  ),
                                  const Positioned(
                                    top: 55,
                                    left: 15,
                                    child: Text("SL",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold)),
                                  ),
                                ]),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              children: [
                                Stack(children: [
                                  Container(
                                    height: 80,
                                    width: 50,
                                    color: Colors.black,
                                  ),

                                  //CircleAvatar
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10),
                                    child: Container(
                                      height: 40,
                                      width: 50,
                                      decoration: const BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage(
                                              "assets/images/uae.png"),
                                          fit: BoxFit.fill,
                                        ),
                                        shape: BoxShape.circle,
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    top: 5.0,
                                    left: 30,
                                    child: Container(
                                      height: 18,
                                      width: 18,
                                      decoration: const BoxDecoration(
                                        color: Colors.white,
                                        shape: BoxShape.circle,
                                      ),
                                      child: const Center(
                                        child: Text("1"),
                                      ),
                                    ),
                                  ),
                                  const Positioned(
                                    top: 55,
                                    left: 10,
                                    child: Text("UAE",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold)),
                                  ),
                                ]),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              children: [
                                Stack(children: [
                                  Container(
                                    height: 50,
                                    width: 50,
                                    color: Colors.black,
                                  ),
                                  Container(
                                    height: 20,
                                    width: 50,
                                    color: Colors.red,
                                    child: const Center(
                                      child: Text(
                                        "players",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    top: 20,
                                    left: 10,
                                    child: Container(
                                      height: 20,
                                      width: 30,
                                      color: Colors.white,
                                      child: Text("100"),
                                    ),
                                  ),

                                ],
                                ),


                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 50),


                        child: Container(
                          height: 40,


                          width: double.infinity,


                          child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              padding: const EdgeInsets.all(8),
                              itemCount: 11,
                              itemBuilder: (BuildContext context, int index) {
                                return Container(
                                    height: 20,
                                    width: 20,
                                    color: Color(0xffC90000),

                                    margin: EdgeInsets.all(2));


                                // color: msgCount[index]>=3? Color(0xff059739):
                                // msgCount[index]<=3?  Color(0xff25B434):  Color(0xff059739));
                                //

                              }
                          ),
                        ),
                      ),






                  ],
                ),
              ),
            ),



            //const SizedBox(height:20),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  DefaultTabController(
                      length: 4, // length of tabs
                      initialIndex: 0,
                      child: SingleChildScrollView(
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: <Widget>[
                              const TabBar(
                                labelColor: Colors.white,
                                unselectedLabelColor: Colors.black,
                                indicator: BoxDecoration(
                                    //borderRadius: BorderRadius.circular(50),
                                    color: Color(0xff25B434)),
                                tabs: [
                                  Tab(text: 'WK(0)'),
                                  Tab(text: 'BAT(0)'),
                                  Tab(text: 'AR(0)'),
                                  Tab(text: 'BOWL(0)'),
                                ],
                              ),
                              Container(
                                  height: 500, //height of TabBarView
                                  decoration: const BoxDecoration(
                                      border: Border(
                                          top: BorderSide(
                                              color: Colors.grey,
                                              width: 0.5))),
                                  child: TabBarView(children: <Widget>[
                                    FristScreen(),
                                    FristRoute(),
                                    SecondRoute(),
                                    ThirdRoute()
                                   // SecondScreen(),






                                  ]))
                            ]),
                      )),

                ],
              ),
            ),


          ],
        ),
      ),
    );
  }
}
