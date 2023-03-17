import 'package:flutter/material.dart';

import 'final_page.dart';

class ContestsPage extends StatefulWidget {
  const ContestsPage({Key? key}) : super(key: key);

  @override
  State<ContestsPage> createState() => _ContestsPageState();
}

class _ContestsPageState extends State<ContestsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(


      body: Container(
        padding: EdgeInsets.all(20),
          margin: EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            //crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("CONFIRMATION",
                      style: TextStyle(color: Colors.black,
                          fontWeight: FontWeight.bold,fontSize: 20),),
                  IconButton(onPressed: (){}, icon:Icon(Icons.close))
                ],
              ),

              Text("Amount added/unutilized + winnias = 70",
                  style: TextStyle(color: Colors.black38)
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Entry",
                    style: TextStyle(color: Colors.black,),
                  ),
                  Text("Rs. 0")
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Usable cash Bonus",
                    style: TextStyle(color: Colors.black,),
                    
                  ),
                  Text("Rs -0")
                ],
              ),
              Divider(
                color: Colors.black38,
                thickness: 2,
              ),
             // SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(top: 10,right: 300),
                child: Text("Pay",
                  style: TextStyle(color: Colors.black,),
                ),
              ),
              SizedBox(height: 20),
              Container(
                height: 40,
                  width: 150,
                  decoration: BoxDecoration(

                    color:Color(0xff25B434),
                    borderRadius: BorderRadius.all(Radius.circular(5.0))
                  ),
                  child: Center(child: TextButton(onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => FinalPage()),
                    );



                  },
                      child: Text("Join Contest",
                          style: TextStyle(color:Colors.white,)))),
              ),


            ],
          ),
        ),

    );
  }
}
