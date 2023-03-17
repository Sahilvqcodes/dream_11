import 'dart:convert';

import 'package:flutter/material.dart';

import '../modelclass/user_model.dart';
import 'contestscreen.dart';


import 'package:http/http.dart' as http;

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // List<UserModel> UserData = [];

  Color _colorChange = Color(0xff8C8C8C);
  int _selectedIndex = 0;

  int index = 0;
  final List<Category> _categories = [
    Category('Cricket', Icons.sports_baseball),
    Category('Kabaddi', Icons.sports_kabaddi),
    Category('Baseball', Icons.sports_basketball_outlined),
    Category('Basketball', Icons.sports_basketball),
    Category(
      'Handball',
      Icons.sports_handball,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Future fetchAlbum() async {
    String url = 'https://90a5-122-160-167-80.in.ngrok.io/getallteam';
    var response = await http.get(Uri.parse(url), headers: {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
    });
    String json = response.body;
    print("response.body ${response.body}");
    var _matchData = UserModel.fromJson(jsonDecode(response.body));
    print("  _mathsss ${_matchData}");
    List<Data> _matchList = _matchData.data!;

    if (response.statusCode == 201) {
      // print("_matchList ${_matchList.data![0].team1}");
      return _matchList;
    } else {
      throw Exception('Failed to load data');
    }
  }

  @override
  Widget build(BuildContext context) {
    DateTime target = DateTime.now().add(Duration(hours: 5));
    print("target $target");
    return Scaffold(
      appBar: AppBar(
        actions: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 240, left: 5.0, top: 2),
                child: Column(
                  children: [
                    Stack(children: [
                      const SizedBox(
                        height: 50,
                        width: 50,
                      ),
                      Container(
                        height: 45,
                        width: 45,
                        decoration: const BoxDecoration(
                          color: Color(0xffD9D9D9),
                          shape: BoxShape.circle,
                        ),
                      ),
                      Positioned(
                        top: 20.0,
                        left: 25,
                        child: Container(
                          height: 30,
                          width: 25,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                          ),
                          child: const Center(
                            child: Icon(
                              Icons.menu,
                              color: Colors.black,
                              size: 15,
                            ),
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
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.notification_add,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              const Icon(
                Icons.wallet,
                color: Colors.white,
              ),
              const SizedBox(
                width: 10,
              ),
            ],
          )
        ],
        backgroundColor: const Color(0xffC90000),
      ),
      //drawer: const Drawer(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            // color: Colors.green,

            color: const Color(0xffF5F5F5),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 80,
                  // child: Expanded(
                    child: ListView(

                      scrollDirection: Axis.horizontal,
                      children: _categories.map((data) {
                        return GestureDetector(
                          onTap: () {
                            setState(() {
                              _colorChange == Color(0xffC90000)
                                  ? _colorChange = Color(0xff8C8C8C)
                                  : _colorChange = Color(0xffC90000);
                            });
                          },
                          child: Container(
                            width: 90,
                            height: 60,
                            decoration: BoxDecoration(
                              border: Border.all(color: _colorChange),
                              shape: BoxShape.circle,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Center(
                                  child: Icon(
                                    data.icon,
                                    color: _colorChange,
                                  ),
                                ),
                                Text(
                                  data.name,
                                  style: TextStyle(
                                      color: _colorChange, fontSize: 15),
                                ),
                              ],
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                //),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "Upcoming Matches ",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 500,
                  width: double.infinity,
                  child: FutureBuilder(
                      future: fetchAlbum(),
                      builder: (BuildContext context, AsyncSnapshot snapshot) {
                         //List? _DataList = snapshot.data;
                        List<Data>? _DataList = snapshot.data;
                        if (!snapshot.hasData) {
                          return Text('Loading');
                        } else {
                          return ListView.builder(
                             itemCount: _DataList?.length,

                              // itemCount:choices.length,
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
                                                  ConstestScreen(
                                                    id: _DataList?[index].sId ?? "",


                                                  )));
                                    },
                                    title: Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            //
                                            Text(
                                              _DataList?[index]?.league ?? "",
                                              style: TextStyle(
                                                color: Colors.black38,
                                              ),
                                            ),
                                            // Text(UserModel!.[index].name ?? ""),
                                            IconButton(
                                                onPressed: () {},
                                                icon: Icon(
                                                  Icons.notification_add,
                                                  color: Colors.black38,
                                                ))
                                          ],
                                        ),
                                        const Divider(
                                          color: Colors.black,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              _DataList?[index]?.team1 ?? "",
                                              style: TextStyle(
                                                  color: Colors.black),
                                            ),
                                            Text(
                                              _DataList?[index].team2 ?? "",
                                              style: TextStyle(
                                                  color: Colors.black),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Container(
                                              padding:
                                                  EdgeInsets.only(top: 10.0),
                                              margin: EdgeInsets.all(5.0),
                                              height: 50,

                                              // color: Colors.blue,
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Stack(children: [
                                                    SizedBox(
                                                      height: 80,
                                                      width: 70,
                                                    ),
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                        left: 10,
                                                        // top:25
                                                      ),
                                                      child: Container(
                                                        height: 25,
                                                        width: 30,
                                                        decoration:
                                                            BoxDecoration(
                                                          image:
                                                              DecorationImage(
                                                            image: AssetImage(
                                                                "assets/images/sl.png"),
                                                            fit: BoxFit.fill,
                                                          ),
                                                          //shape: BoxShape.circle,
                                                        ),
                                                      ),
                                                    ),
                                                    Positioned(
                                                      bottom: 3.0,
                                                      right: 40,
                                                      child: Icon(
                                                          Icons.arrow_right,
                                                          size: 50,
                                                          color: Color(
                                                              0xffFBB548)),
                                                    ),
                                                  ]),
                                                ],
                                              ),
                                            ),
                                            SizedBox(
                                              height: 50,
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    _DataList?[index]?.team1ShortName ?? "",
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 15,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                  SizedBox(width: 20),


                                                      //Text('${DateFormat.Hms().format(target)}'),
                                                      // SizedBox(height: 24.0),
                                                      // Text(
                                                      //   _DataList[index]
                                                      //           .datetime ??
                                                      //       "",
                                                      //   style: TextStyle(
                                                      //       fontSize: 10),
                                                      // ),
                                                      Text(
                                                        target.difference(DateTime.now()).toString().split('.')[0],
                                                        style: TextStyle(
                                                            fontSize: 12,color: Colors.red),
                                                      ),

                                                      // Text(
                                                      //   "2h 24m",
                                                      //   style: TextStyle(
                                                      //       color: Colors.red,
                                                      //       fontSize: 15,
                                                      //       fontWeight:
                                                      //           FontWeight.bold),
                                                      // ),


                                                  SizedBox(width: 20),
                                                  Text(
                                                    _DataList?[index]?.team2ShortName ?? "",
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 15,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Container(
                                              padding:
                                                  EdgeInsets.only(top: 10.0),
                                              margin: EdgeInsets.all(5.0),
                                              height: 50,

                                              //  color: Colors.blue,

                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Stack(children: [
                                                    SizedBox(
                                                      height: 50,
                                                      width: 35,
                                                    ),
                                                    Container(
                                                      height: 20,
                                                      width: 25,
                                                      decoration: BoxDecoration(
                                                        image: DecorationImage(
                                                          image: AssetImage(
                                                              "assets/images/uae.png"),
                                                          fit: BoxFit.fill,
                                                        ),
                                                        //shape: BoxShape.circle,
                                                      ),
                                                    ),
                                                    Positioned(
                                                      bottom: 3.0,
                                                      left: 5,
                                                      child: Icon(
                                                          Icons.arrow_left,
                                                          size: 50,
                                                          color: Color(
                                                              0xffFF0000)),
                                                    ),
                                                  ]),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              _DataList?[index].price ?? "",
                                              style: TextStyle(
                                                  color: Colors.black),
                                            ),
                                            Container(
                                              height: 20,
                                              width: 20,
                                              decoration: const BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  // color: Colors.green,
                                                  image: DecorationImage(
                                                    image: AssetImage(
                                                        "assets/images/Rectangle6.png"),
                                                    fit: BoxFit.cover,
                                                  )),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              });
                        }
                      }),
                ),
              ],
            ),
          ),
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
        unselectedLabelStyle:
            const TextStyle(color: Colors.black, fontSize: 14),
        backgroundColor: Colors.black,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.black38),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.wine_bar,
              color: Colors.black38,
            ),
            label: 'My Match',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.flare_outlined,
              color: Colors.black38,
            ),
            label: 'Winners',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.chat,
              color: Colors.black38,
            ),
            label: 'Chat',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.card_giftcard_outlined,
              color: Colors.black38,
            ),
            label: 'Rewards',
          ),
        ],
        currentIndex: index,
        onTap: (int i) {
          setState(() {
            index = i;
          });
        },
        fixedColor: Colors.red,
      ),
    );
  }
}

class Category {
  String name;
  IconData icon;

  Category(this.name, this.icon);
}

class UserData {
  String sId;

  String league;

  String team1;

  String team2;
  String price;
  String datetime;
  bool? active;
  int? iV;
  int id;

  UserData(
      {required this.sId,
      required this.league,
      required this.id,
      required this.team1,
      required this.team2,
      required this.price,
      required this.datetime,
      this.active,
      this.iV});
}
