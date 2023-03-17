import 'package:flutter/material.dart';

class LeaderBoard extends StatefulWidget {
  const LeaderBoard({Key? key}) : super(key: key);

  @override
  State<LeaderBoard> createState() => _LeaderBoardState();
}

class _LeaderBoardState extends State<LeaderBoard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  ListView.builder(
        // itemCount: 5,
          itemBuilder: (BuildContext context,index) {


            return ListTile(
              leading:CircleAvatar(radius: 15,backgroundColor: Colors.black38,),


              title:  Text(
                "Ripudaman",
                style: TextStyle(color: Colors.black, fontSize: 15),
              ),
              trailing: Icon(Icons.more_vert),
            );
            //  title: Text("$index"));
          }
      ),

    );
  }
}
