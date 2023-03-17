//import 'package:dream_11/custom_appbar.dart';
import 'package:dream_11/screens/second_screen.dart';
import 'package:flutter/material.dart';

//import 'create_team.dart';
import 'join_contests.dart';
import 'leader_board.dart';

class Prizes extends StatefulWidget {
//  final String id;
   Prizes({Key? key}) : super(key: key);

  @override
  State<Prizes> createState() => _PrizesState();
}

class _PrizesState extends State<Prizes> {
  // String? _id;
  // void initState() {
  //   _id= widget.id;
  //   print("id $_id");
  //   super.initState();
  // }
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
              Padding(
                padding: EdgeInsets.only(right: 150),
                child: Text(
                  "2h 26min Left",
                  style: TextStyle(color: Colors.white, fontSize: 10),
                ),
              ),
            ],
          ),
          Icon(
            Icons.wallet,
            color: Colors.white,
          ),
        ],

        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new_outlined),
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
              color: Color(0xffC90000),
              child: const Center(
                child: Text("Prize Pool",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.white)),
              ),
            ),
            const SizedBox(height: 20),
            Container(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "10 Lakh",
                          style: TextStyle(color: Colors.black, fontSize: 20),
                        ),
                        GestureDetector(
                          child: Container(
                            decoration: const BoxDecoration(
                                color: Color(0xff00A143),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5.0))),
                            height: 30,
                            width: 50,
                            child: TextButton(
                              child: const Text(
                                "Join",
                                style: TextStyle(color: Colors.white),
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => JoinContests(



                                      ),
                                  ),
                                );
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    const LinearProgressIndicator(
                      value: 0.6,
                      color: Color(0xffFBB548), //<-- SEE HERE
                      backgroundColor: Color(0xffebd57f), //<-- SEE HERE
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          "5153 Spots left",
                          style: TextStyle(
                              color: Color(0xffFBB548),
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "5333 Spots",
                          style: TextStyle(
                            color: Colors.black38,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Container(
                      height: 40,
                      decoration: const BoxDecoration(
                        color: Color(0xffFF0000),
                      ),
                      child: Row(
                        children: [
                          Container(
                            height: 20,
                            width: 20,
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                // color: Colors.green,
                                image: DecorationImage(
                                  image: AssetImage(
                                      "assets/images/Rectangle33.png"),
                                  fit: BoxFit.cover,
                                )),
                          ),

                          const Text(
                            "95,000",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                            ),
                          ),
                          const SizedBox(width: 10),
                          Container(
                            height: 20,
                            width: 20,
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                // color: Colors.green,
                                image: DecorationImage(
                                  image: AssetImage(
                                      "assets/images/Rectangle34.png"),
                                  fit: BoxFit.cover,
                                )),
                          ),

                          // Icon(Icons.wine_bar,color:Colors.white),

                          const Text(
                            "54%",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                            ),
                          ),
                          const SizedBox(width: 80),
                          Container(
                            height: 20,
                            width: 20,
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                // color: Colors.green,
                                image: DecorationImage(
                                  image: AssetImage(
                                      "assets/images/Rectangle35.png"),
                                  fit: BoxFit.cover,
                                )),
                          ),
                          const Text(
                            "Guaranteed",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    DefaultTabController(
                        length: 2, // length of tabs
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
                                    Tab(text: 'Winnings'),
                                    Tab(text: 'LeaderBoard'),
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
                                      SecondScreen(),
                                      LeaderBoard(),
                                    ]))
                              ]),
                        )),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
