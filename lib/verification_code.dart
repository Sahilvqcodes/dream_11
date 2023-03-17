
import 'dart:convert';

import 'package:dream_11/screens/home_screen.dart';
import 'package:dream_11/validators.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart'as http;

class MyVerify extends StatefulWidget {
  const MyVerify({Key? key}) : super(key: key);

  @override
  State<MyVerify> createState() => _MyVerifyState();
}

class _MyVerifyState extends State<MyVerify> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController controllerForOtp= TextEditingController();
  _otp(String Otp) async {
    print("Otp");
    String body = json.encode(Otp);
    var url = 'https://90a5-122-160-167-80.in.ngrok.io/otp';
    var response = await http.post(
      Uri.parse(url),
      body: jsonEncode(<String,String>{
        "otp" : Otp,
      }),
      headers: {
        "Content-Type": "application/json",
        "accept": "application/json",
        "Access-Control-Allow-Origin": "*"
      },
    );
    print(response.body);
    print(response.statusCode);
    if (response.statusCode == 201) {
      Navigator.push(context, MaterialPageRoute
        (builder: (context) => HomeScreen()));
      //Or put here your next screen using Navigator.push() method
      print('success');
    } else {
      print('error');
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(icon:Icon(Icons.arrow_back_ios_new_outlined,
            color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },),
        title:  Text("Register & Play",
            style: TextStyle(
                decoration: TextDecoration.none,
                color: Colors.white,
                fontSize: 20)),


        backgroundColor: Color(0xffC90000),
      ),
      body: Form(
        key: _formKey,
        child: Column(
          children: [
            SizedBox(height: 150,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  width: 350,
                  child: TextFormField(
                    controller: controllerForOtp,
                    keyboardType: TextInputType.phone,
                   // validator: (value) => validatePhone(value),
                    decoration: InputDecoration(
                        hintText: "Enter OTP"),
                  ),
                ),
              ],
            ),
            SizedBox(height: 50),
            Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(5.0)),
                //color:Color(0xffF5F5F5),
                color:Color(0xffD9D9D9),
              ),

              height: 50,
              width: 350,
              child: TextButton(child:const Text(
                "Verify Otp",
                style: TextStyle(
                    decoration: TextDecoration.none,
                    fontWeight: FontWeight.bold,
                    color: Colors.black54,
                    fontSize: 15),),
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _otp(controllerForOtp.text);
                  };
                },
              ),
            ),


        // if (_formKey.currentState!.validate()) {
        //   _login(controllerForPhone.text);
        //






          ],
        ),
      ),
    );
  }
}
