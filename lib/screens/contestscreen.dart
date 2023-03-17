
import 'dart:convert';


import 'package:dream_11/screens/prizes.dart';
import 'package:flutter/material.dart';

import '../modelclass/contests_model.dart';


import 'package:http/http.dart' as http;

import 'join_contests.dart';

class ConstestScreen extends StatefulWidget {
  final String id;
   ConstestScreen({Key? key,required this.id}) : super(key: key);

  @override
  State<ConstestScreen> createState() => _ConstestScreenState();
}

class _ConstestScreenState extends State<ConstestScreen> {
String? _id;
  void initState() {
    _id= widget.id;
    print("id $_id");
    super.initState();
  }
  Future ApiData() async {
    print("_matchList 1");

    String url = 'https://90a5-122-160-167-80.in.ngrok.io/getsingleteam/$_id';
    var response = await http.get(Uri.parse(url), headers: {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
    }
    );
    String json = response.body;
    var _contestsData = ContestModel.fromJson(jsonDecode(response.body));
    List<Contest> _matchContestList = _contestsData.data!;
    print("_matchList 2");
    if (response.statusCode == 201) {
      print("_matchList ${_matchContestList[0].offer}");
      return _matchContestList;
    } else {
      throw Exception('Failed to load data');
    }
  }
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
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.wallet,
                color: Colors.white,
              ))
        ],

        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new_outlined),
          onPressed: () {
            Navigator.pop(context);
          },
        ), // appbar leading icon.
        backgroundColor: Color(0xff000000),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 50,
              width: MediaQuery.of(context).size.width,
              color: const Color(0xffC90000),
              child: Padding(
                padding: const EdgeInsets.only(left: 25, right: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text("Join Contests",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.white)),
                    Container(
                      height: 20,
                      width: 20,
                      decoration: const BoxDecoration(

                          // color: Colors.green,
                          image: DecorationImage(
                        image: AssetImage("assets/images/Vector2.png"),
                        fit: BoxFit.cover,
                      )),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: const Text("Special For You",
                        style: TextStyle(color: Colors.black, fontSize: 20)),
                  ),
                  TextButton(
                      onPressed: () {},
                      child: const Text(
                        "View All",
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      ))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: SizedBox(
                height: 500,
                width: double.infinity,
                child: FutureBuilder(
                    future: ApiData(),
                    builder: (BuildContext context, AsyncSnapshot snapshot) {
                      print("snapshot ${snapshot.data}");
                      // List<Contest> _ContestDataList = snapshot.data;
                      List<Contest>? _ContestDataList = snapshot.data;
                      if (!snapshot.hasData) {
                        return Text('Loading');
                      } else {
                        return ListView.builder(
                           itemCount: _ContestDataList?.length,
                            shrinkWrap: true,
                            scrollDirection: Axis.vertical,
                            itemBuilder: (context, index) {
                              return Card(
                                child: ListTile(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                        builder: (context) => JoinContests()));




                                    // Navigator.push(
                                    //   context,
                                    //   MaterialPageRoute(
                                    //       builder: (context) => Prizes(
                                    //         //id: _ContestDataList ?[index].sId ?? "",
                                    //       )),
                                    // );
                                  },
                                  title: Column(
                                    children: [

                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("Price Pool", style: TextStyle(color: Colors.black38),),
                                          Text("Entry", style: TextStyle(color: Colors.black38),)
                                        ],
                                        
                                      ),
                                      SizedBox(height: 10),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                           _ContestDataList?[index].prizepoal?? "",
                                          ),
                                          GestureDetector(
                                            child: Container(
                                              decoration: const BoxDecoration(
                                                  color: Color(0xff00A143),
                                                  borderRadius:
                                                  BorderRadius.all(
                                                      Radius.circular(
                                                          5.0))),
                                              height: 30,
                                              width: 50,
                                              child:  Center(
                                                child: Text(
                                                  _ContestDataList?[index].entryfee?? "",
                                                  style: TextStyle(
                                                      color: Colors.white),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),


                                      const SizedBox(height: 10),
                                      const LinearProgressIndicator(
                                        value: 0.6,
                                        color: Color(0xffFBB548),
                                        //<-- SEE HERE
                                        backgroundColor:
                                            Color(0xffebd57f), //<-- SEE HERE
                                      ),
                                      const SizedBox(height: 10),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children:  [
                                          const Text(
                                            "5153 Spots left",
                                            style: TextStyle(
                                                color: Color(0xffFBB548),
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Text(
                                            "${_ContestDataList?[index].totalspots}",
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
                                            borderRadius: BorderRadius.only(
                                                bottomLeft: Radius.circular(10),
                                                bottomRight:
                                                    Radius.circular(10))),
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
                                    ],
                                  ),
                                ),
                              );
                              // return Padding(
                              //   padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                              //   child: list,
                              // );
                            });
                      }
                    }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
