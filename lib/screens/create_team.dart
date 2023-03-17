import 'package:dream_11/screens/joined_team.dart';
import 'package:flutter/material.dart';

class CreateTeam extends StatefulWidget {
  // final String id;
   CreateTeam({Key? key,}) : super(key: key);

  @override
  State<CreateTeam> createState() => _CreateTeamState();
}

class _CreateTeamState extends State<CreateTeam> {
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
                  right: 100,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    Text(
                      "Create Team 1",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(right: 100),
                child: Text(
                  "2h 26min Left",
                  style: TextStyle(color: Colors.white, fontSize: 10),
                ),
              ),
            ],
          ),
          IconButton(icon:const Icon(
            Icons.wallet,
            color: Colors.white,
          ), onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => JoinedTeam()),
            );
          },),
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
        child: Column(children: [
          Container(
            height: 80,
            width: MediaQuery.of(context).size.width,
            color: Color(0xffC90000),
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: const [
                  Text("Choose Your Caption  and Vice Capoiton",
                      style: TextStyle(fontSize: 20, color: Colors.white)),
                  Text(
                    "C gets 2x points Vs gets 1.5x points",
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 500,
            width: double.infinity,
            child: ListView.builder(
                // itemCount: 5,
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => JoinedTeam()),
                        );

                      },
                      title: Column(
                        children: [
                          Container(
                            height: 30,
                            color: const Color(0xffD9D9D9),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                SizedBox(width: 30),
                                Text(
                                  "POINTS",
                                  style: TextStyle(color: Colors.black,fontSize: 12),
                                ),
                                Text(
                                  "%C BY",
                                  style: TextStyle(color: Colors.black,fontSize: 12),
                                ),
                                Text(
                                  "%VS BY",
                                  style: TextStyle(color: Colors.black,fontSize: 12),
                                ),
                                // SizedBox(width:2.0)
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SizedBox(
                              height: 80,

                              //color: Colors.deepOrangeAccent,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    children: [
                                      Stack(
                                        children: [
                                          Container(
                                            height: 80,
                                            width: 80,
                                            color: Colors.white,
                                          ),
                                          Container(
                                            height: 70,
                                            width: 70,
                                            decoration: const BoxDecoration(
                                                color: Color(0xffD9D9D9),
                                                shape: BoxShape.circle),
                                          ),
                                          Positioned(
                                            top: 45,
                                            left: 35,
                                            child: Container(
                                                height: 35,
                                                width: 35,
                                                decoration: const BoxDecoration(
                                                    color: Colors.white,
                                                    shape: BoxShape.circle),
                                                // color: Colors.white,

                                                child: Column(
                                                  children: const [
                                                    Center(
                                                      child: Text("SL",
                                                          style: TextStyle(
                                                              color: Color(0xffC90000), fontSize: 10)),
                                                    ),
                                                    Text("WK",style: TextStyle(
                                                        color: Color(0xff25B434),fontSize: 10),)
                                                  ],
                                                )),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                  Container(
                                    height: 50,
                                    width: 80,
                                    color: Colors.white,
                                    child: Column(
                                      children: const [
                                        SizedBox(height: 20),
                                        Text(
                                          "G Maithani",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold, fontSize: 15),
                                        ),
                                        Text(
                                          "Sel by 81.28%",
                                          style: TextStyle(fontSize: 10, color: Colors.black38),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Column(
                                    children: [
                                      Container(
                                          height: 35,
                                          width: 35,
                                          decoration: const BoxDecoration(
                                              color: Color(0xffD9D9D9), shape: BoxShape.circle),
                                          child: Center(child: Text("C"))),
                                      Text("8.0")
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Container(
                                          height: 35,
                                          width: 35,
                                          decoration: const BoxDecoration(
                                              color: Color(0xffD9D9D9), shape: BoxShape.circle),
                                          child: Center(child: const Text("VS"))),
                                      Text("8.9")
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),


                        ],
                      ),
                    ),

                  );
                  // return Padding(
                  //   padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                  //   child: createList,
                  // );
                }),
          ),
        ]),
      ),
    );
  }
}
