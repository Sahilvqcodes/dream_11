import 'dart:convert';

import 'package:flutter/material.dart';


import '../modelclass/all_batsman.dart';
import 'create_team.dart';
import 'package:http/http.dart' as http;

class FristRoute extends StatefulWidget {

  const FristRoute({Key? key}) : super(key: key);

  @override
  State<FristRoute> createState() => _FristRouteState();
}

class _FristRouteState extends State<FristRoute> {
  @override
  Widget build(BuildContext context) {
    Color _color = Color(0xffD9D9D9);
    Color _onTapcolor = Color(0xffD9D9D9);



    // Future playersAlbum() async {
    //   String url = 'https://71e3-103-179-103-130.in.ngrok.io/getAllbatsman/6373252f937ea228011fb1e6';
    //   var response = await http.get(Uri.parse(url), headers: {
    //     'Content-Type': 'application/json',
    //     'Accept': 'application/json',
    //   });
    //   String json = response.body;
    //   print("response.body ${response.body}");
    //   var _playersData = BatsMan.fromJson(jsonDecode(response.body));
    //   List<Batsmans>? _playerList = _playersData.batsmans;
    //   print("_playerList 1 ${_playersData.batsmans}");
    //
    //   if (response.statusCode == 201) {
    //      print(" _playerList ${ _playerList![0].playerName}");
    //     return _playerList;
    //   } else {
    //     throw Exception('Failed to load data');
    //   }
    // }
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height / 2.5,
              width: double.infinity,
              child:
    //           FutureBuilder(
    //             future:playersAlbum() ,
    // builder: (BuildContext context, AsyncSnapshot snapshot) {
    //   print("snapshot ${snapshot.data}");
    //   //print("snapshot ${snapshot.data}");
    //   List<Batsmans>? _DataList = snapshot.data;
    //   if (!snapshot.hasData) {
    //
    //     return Text('Loading');
    //   } else {
    //    return
        ListView.builder(
           // itemCount:_DataList?.length,
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            itemBuilder: (context, index) {
              return Card(
                child: ListTile(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              CreateTeam(
                                //   id: _DataList?[index].sId ?? "",
                              )),
                    );
                  },
                  title: Column(
                    children: [
                      Text("Select 1-2 Wicket-kepper",
                        style: TextStyle(fontSize: 12),),
                      SizedBox(height: 10),
                      Container(
                        height: 30,
                        color: const Color(0xffD9D9D9),
                        child: Row(
                          mainAxisAlignment:
                          MainAxisAlignment.spaceAround,
                          children: const [
                            SizedBox(width: 30),
                            Text(
                              "SELECTED BY",
                              style: TextStyle(
                                  color: Colors.black, fontSize: 10),
                            ),
                            Text(
                              "POINTS",
                              style: TextStyle(
                                  color: Colors.black, fontSize: 10),
                            ),
                            Text(
                              "CREDIT",
                              style: TextStyle(
                                  color: Colors.black, fontSize: 10),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Container(
                          height: 100,
                          //color: Colors.deepOrangeAccent,
                          child: Row(
                            // mainAxisAlignment:
                            //     MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  Stack(
                                    children: [
                                      Container(
                                        height: 80,
                                        width: 70,
                                        //  color: Colors.red,
                                      ),
                                      Container(
                                        height: 60,
                                        width: 60,
                                        decoration: BoxDecoration(
                                            color: Color(0xffD9D9D9),
                                            shape: BoxShape.circle),
                                      ),
                                      Positioned(
                                        top: 40,
                                        left: 35,
                                        child: Container(
                                          height: 30,
                                          width: 30,
                                          decoration:
                                          BoxDecoration(
                                              color: Colors.white,
                                              shape:
                                              BoxShape.circle),
                                          // color: Colors.white,

                                          // child: Center(
                                          //   child: Text( _DataList?[index].teamName?? "",
                                          //       style: TextStyle(
                                          //           color: Colors.black,
                                          //           fontSize: 10)),
                                          // )
                                        ),
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
                                  children: [
                                    SizedBox(height: 15),
                                    // Text(
                                    //     _DataList?[index].playerName ?? "",
                                    //   style: TextStyle(
                                    //       fontWeight: FontWeight.bold,
                                    //       fontSize: 12),
                                    // ),
                                    Text(
                                      "Sel by 81.28%",
                                      style: TextStyle(
                                          fontSize: 10,
                                          color: Colors.black38),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(width: 30),


                              //  Text("${_DataList?[index].points}"),
                              SizedBox(width: 50),


                              //Text( "${_DataList?[index].credits}"),
                              Container(
                                height: 20,
                                width: 20,
                                decoration: const BoxDecoration(
                                    color: Colors.green,
                                    shape: BoxShape.circle),
                                //color: Colors.green,
                                child: const Icon(
                                  Icons.add,
                                  color: Colors.white,
                                  size: 20,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );

            }








           )
            ),
     //}
   // }
   //            ),
   //          ),



            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      _color == Color(0xffC90000)
                          ? _color = Color(0xffD9D9D9)
                          : _color = Color(0xffC90000);
                    });
                  },
                  child: Container(
                    height: 40,
                    width: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                      color: _color,

                      //color: Color(0xffC90000),
                    ),
                    child: const Center(
                      child: Text(
                        "Team Preview",
                        style: TextStyle(color: Colors.black, fontSize: 15),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      _onTapcolor == Color(0xffC90000)
                          ? _onTapcolor = Color(0xffD9D9D9)
                          : _onTapcolor = Color(0xffC90000);
                    });
                  },
                  child: Container(
                    height: 40,
                    width: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                      color: _onTapcolor,

                      //color: Color(0xffC90000),
                    ),
                    child: const Center(
                      child: Text(
                        "Continue",
                        style: TextStyle(color: Colors.black, fontSize: 15),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),

    );
  }
}
