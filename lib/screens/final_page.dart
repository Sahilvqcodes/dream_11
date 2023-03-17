import 'package:flutter/material.dart';

class FinalPage extends StatefulWidget {
  const FinalPage({Key? key}) : super(key: key);

  @override
  State<FinalPage> createState() => _FinalPageState();
}

class _FinalPageState extends State<FinalPage> {
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
      body: Padding(
        padding: const EdgeInsets.only(top: 100,left: 20,right: 20),
        child: Column(
          children: [
            Text("TOTAL BALANCE",
              style: TextStyle(fontSize: 20,color: Colors.black),
            ),
            SizedBox(height: 10),
            Text("Rs.80"),
            Divider(
              color: Colors.black38,
              thickness: 2,
            ),
            SizedBox(height: 20),
            Text("ADD CASH",style: TextStyle(fontSize: 15,color: Colors.black),),
            TextField(
              decoration: InputDecoration(
                hintText: "Add Cash"
              ),
            ),
            SizedBox(height: 20),
            Container(
                height: 40,
                width: 150,
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.all(Radius.circular(5.0))
                ),
                child: Center(child: TextButton(onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => FinalPage()),
                  );



                },
                    child: Text("Add Rs.80",style: TextStyle(color: Colors.white),))))

          ],
        ),
      ),
    );
  }
}
