import 'dart:convert';
import 'package:flutter/material.dart';
import 'create_team.dart';
import 'package:http/http.dart' as http;

class FristScreen extends StatefulWidget {
  const FristScreen({Key? key}) : super(key: key);

  @override
  State<FristScreen> createState() => _FristScreenState();
}

class _FristScreenState extends State<FristScreen> {
  Color _color = Color(0xffD9D9D9);
  Color _onTapcolor = Color(0xffD9D9D9);

  Future playersAlbum() async {
    String url =
        'https://90a5-122-160-167-80.in.ngrok.io/newZealand-vs-australia/6374d209d205356534229085';
    var response = await http.get(Uri.parse(url), headers: {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
    });
    String json = response.body;
    print(" datalist ${response.body}");
    Map<String, dynamic> data = jsonDecode(response.body);
    print("response.body ${response.body}");
    if (response.statusCode == 201) {
      // print(" _playerList 2 ${ _playerList![0].wicketkeepers}");
      return data["New_Zealand_team"][0]["wicketkeepers"];
    } else {
      throw Exception('Failed to load data');
    }
  }

  // Future WicketsAlbum()  async {
  //   String url = 'https://71e3-103-179-103-130.in.ngrok.io/newZealand-vs-australia/6374d209d205356534229085';
  //   var response = await http.get(Uri.parse(url), headers: {
  //     'Content-Type': 'application/json',
  //     'Accept': 'application/json',
  //   });
  //   String json = response.body;
  //   print("response.body ${response.body}");
  //   var wiketsData =  AllWickets.fromJson(jsonDecode(response.body));
  //   print("fdfgdf   ${wiketsData}");
  //
  //
  //  //print(" ${ wiketsData .newZealandTeam}");
  //
  //
  //   List<Wicketkeepers>? wicketList = wiketsData.newZealandTeam![0].wicketkeepers!;
  //   print("_wicketList ${wiketsData.newZealandTeam}");
  //   if (response.statusCode == 201) {
  //     // print("_matchList ${_matchList.data![0].team1}");
  //     return wiketsData;
  //   } else {
  //     throw Exception('Failed to load data');
  //   }
  // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height / 2.5,
              width: double.infinity,
              child: FutureBuilder(
                  future: playersAlbum(),
                  builder: (BuildContext context, AsyncSnapshot snapshot) {
                    print("snapshot ${snapshot.data}");

                    if (!snapshot.hasData) {
                      return Text('Loading');
                    } else {
                      return ListView.builder(
                          itemCount: snapshot.data.length,
                          // itemCount:  _WiketsdataList?.length,
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          itemBuilder: (context, index) {
                            return Card(
                              child: ListTile(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => CreateTeam(
                                            // id: _WiketsList?[index].sId ?? "",
                                            )),
                                  );
                                },
                                title: Column(
                                  children: [
                                    Text(
                                      "Select 1-2 Wicket-kepper",
                                      style: TextStyle(fontSize: 12),
                                    ),
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
                                                color: Colors.black,
                                                fontSize: 10),
                                          ),
                                          Text(
                                            "POINTS",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 10),
                                          ),
                                          Text(
                                            "CREDIT",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 10),
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
                                                          color:
                                                              Color(0xffD9D9D9),
                                                          shape:
                                                              BoxShape.circle),
                                                    ),
                                                    Positioned(
                                                        top: 40,
                                                        left: 35,
                                                        child: Container(
                                                          height: 30,
                                                          width: 30,
                                                          decoration:
                                                              BoxDecoration(
                                                                  color: Colors
                                                                      .white,
                                                                  shape: BoxShape
                                                                      .circle),
                                                          // color: Colors.white,

                                                          child: Center(
                                                              //child: Text(),
                                                              // child: Text(
                                                              // _WiketsdataList?[index].wicketkeepers.playername??"",
                                                              // style: TextStyle(
                                                              //     color: Colors
                                                              //         .black,
                                                              //     fontSize: 10)
                                                              ),
                                                        )),
                                                    //),
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
                                                  // Text("${snapshot.data["New_Zealand_team"][0]["wicketkeepers"]}"),
                                                  //  Text(snapshot.data["New_Zealand_team"]),
                                                  //Text("${snapshot.data[index].wicketkeepers.playerName}"),
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
                                            // Text("${ _WiketsdataList?[index].wicketkeepers.points}"),

                                            // Text("${ _WiketsdataList?[index].points}"),
                                            SizedBox(width: 50),

                                            //Text( "${ _WiketsdataList?[index].credits}"),
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
                          });
                    }
                  }),
            ),
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
