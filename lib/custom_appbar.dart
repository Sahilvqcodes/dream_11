
import 'package:flutter/material.dart';

class CustomAppbar extends StatefulWidget {
  const CustomAppbar({Key? key}) : super(key: key);

  @override
  State<CustomAppbar> createState() => _CustomAppbarState();
}

class _CustomAppbarState extends State<CustomAppbar> {
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


                  children: const [

                    Text("SL",
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                    SizedBox(width: 5.0),
                    Text("Vs"),
                    SizedBox(width: 5.0),
                    Text("UAE",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)
                  ],
                ),
              ),
              const Padding(padding: EdgeInsets.only(right: 100),
                child:
                Text("2h 26min Left",
                  style: TextStyle(color: Colors.white,fontSize: 10),),),
            ],
          ),




          IconButton(icon:const Icon(
            Icons.wallet,
            color: Colors.white,
          ), onPressed: () {


          },),
        ],

        leading: IconButton(icon: const Icon(Icons.arrow_back_ios_new_outlined), onPressed: () {
          Navigator.pop(context);
        },), // appbar leading icon.


        backgroundColor: Colors.black,
      ),

    );
  }
}
