import 'package:flutter/material.dart';

import 'contests_page.dart';
import 'my_contests.dart';
import 'my_terms.dart';

class JoinedTeam extends StatefulWidget {
  const JoinedTeam({Key? key}) : super(key: key);

  @override
  State<JoinedTeam> createState() => _JoinedTeamState();
}

class _JoinedTeamState extends State<JoinedTeam> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [

          Column(
            children: [

              Padding(
                padding: const EdgeInsets.only(right: 100,),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,


                  children: [

                    Text("SL",
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                    SizedBox(width: 5.0),
                    Text("Vs"),
                    SizedBox(width: 5.0),
                    Text("UAE",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)
                  ],
                ),
              ),
              Padding(padding: EdgeInsets.only(right: 100),
                child:
                Text("2h 26min Left",
                  style: TextStyle(color: Colors.white,fontSize: 10),),),
            ],
          ),




          IconButton(icon:Icon(
            Icons.wallet,
            color: Colors.white,
          ), onPressed: () {


          },),
        ],

        leading: IconButton(icon: Icon(Icons.arrow_back_ios_new_outlined), onPressed: () {
          Navigator.pop(context);
        },), // appbar leading icon.


        backgroundColor: Colors.black,
      ),
      body: Column(
        children: [
          DefaultTabController(
              length: 3, // length of tabs
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
                          Tab(text: 'Contests'),
                          Tab(text: 'My Contests(1)'),
                          Tab(text: 'My Terms(1)'),
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


                            ContestsPage(),
                            MyContests(),
                            MyTerms(),


                          ]))
                    ]),
              )),
        ],
      ),

    );
  }
}
