import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text("Rank",style: TextStyle(color: Color(0xff505050),fontSize: 20),),
                Text("Winnings",style: TextStyle(color: Color(0xff505050),fontSize: 20)),

              ],
            ),
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text("1",style: TextStyle(fontSize:15),),
                Text("1.40 lakha",style: TextStyle(fontSize:15)),

              ],
            ),
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text("# 2-4",style: TextStyle(fontSize:15),),
                Text("9,500",style: TextStyle(fontSize:15)),

              ],
            ),
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text("# 5",style: TextStyle(fontSize:15),),
                Text("8,000",style: TextStyle(fontSize:15)),

              ],
            ),
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text("# 6",style: TextStyle(fontSize:15),),
                Text("5,000",style: TextStyle(fontSize:15)),

              ],
            ),
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(" 7",style: TextStyle(fontSize:15),),
                Text("4,000",style: TextStyle(fontSize:15)),

              ],
            ),
            const SizedBox(height: 15),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(" 8-9",style: TextStyle(fontSize:15),),
                Text("4,500",style: TextStyle(fontSize: 15)),

              ],
            )


          ],
        ),
      ),

    );
  }
}
