import 'package:flutter/material.dart';

class MyContests extends StatefulWidget {
  const MyContests({Key? key}) : super(key: key);

  @override
  State<MyContests> createState() => _MyContestsState();
}

class _MyContestsState extends State<MyContests> {
  String dropdownvalue = 'Item 1';
  var items = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(


      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            const Text("Practice Contests",
              style: TextStyle(fontSize: 20,fontWeight:FontWeight.bold),),
            SizedBox(height: 20),
            const LinearProgressIndicator(
              value: 0.6,
              color: Color(0xffFBB548), //<-- SEE HERE
              backgroundColor: Color(0xffebd57f), //<-- SEE HERE
            ),

            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:  const [
                    Text(
                      "5153 Spots left",
                      style: TextStyle(
                          color:Color(0xffFBB548),
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
            ),
            Container(
              height: 40,
              decoration: const BoxDecoration(
                  color: Color(0xffFF0000),




              ),
              child: Row(
                children:   [
                  Container(
                    height: 20,
                    width: 20,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        // color: Colors.green,
                        image:  DecorationImage(
                          image:  AssetImage("assets/images/Rectangle33.png"),
                          fit: BoxFit.cover,
                        )
                    ),
                  ),



                  const Text(
                    "95,000",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,),
                  ),
                  const SizedBox(width:10),
                  Container(
                    height: 20,
                    width: 20,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        // color: Colors.green,
                        image:  DecorationImage(
                          image:  AssetImage("assets/images/Rectangle34.png"),
                          fit: BoxFit.cover,
                        )
                    ),
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
                        image:  DecorationImage(
                          image:  AssetImage("assets/images/Rectangle35.png"),
                          fit: BoxFit.cover,
                        )
                    ),
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("Joined with 1 team"),
                DropdownButton(
                  icon: const Icon(Icons.keyboard_arrow_down),
                    items: items.map((String items) {
                      return DropdownMenuItem(
                        value: items,
                        child: Text(items),
                      );
                    }).toList(),


                    onChanged: (String? newValue) {
                      setState(() {
                        dropdownvalue = newValue!;
                      });
                    },
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(right: 320),
              child: Container(
                height: 20,
                width: 20,
                color: Color(0xffD9D9D9),
                child: Text("F1"),
              ),
            )
        ]
      
        
        ),
      ),

    );
  }
}
