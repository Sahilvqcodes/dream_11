
import 'dart:convert';





import 'package:flutter/material.dart';

import '../validators.dart';


import '../verification_code.dart';
import 'login_screen.dart';
import 'package:http/http.dart' as http;

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);
  //static String verify = "";

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
   TextEditingController  contactnumber = TextEditingController();
  final _formKey = GlobalKey<FormState>();
   register(phone) async {
     String body = json.encode(phone);
     var url = 'https://90a5-122-160-167-80.in.ngrok.io/register';


     var response = await http.post(
       Uri.parse(url),
       body: jsonEncode(<String,String>{
         "phone" : phone,
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
       Navigator.push(context,
           MaterialPageRoute(builder: (context) => MyVerify ()));
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
          leading: IconButton(icon:  Icon(Icons.arrow_back_ios_new_outlined,
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
          child: SingleChildScrollView(
            child: Padding(
              padding:  EdgeInsets.only(top: 50, left: 20, right: 20),
              child: Column(
                children: [
                  SizedBox(
                    width: 350,
                    child: TextFormField(
                      controller: contactnumber ,
                      keyboardType: TextInputType.phone,
                      validator: (value) => validatePhone(value),
                      decoration: InputDecoration(
                          hintText: "Enter Mobile Number"),
                    ),
                  ),
                   Padding(
                    padding: EdgeInsets.only(right: 150),
                    child: Text(
                      "You'll receive an OTP for verification",
                      style: TextStyle(color: Colors.grey, fontSize: 12),
                    ),
                  ),
                   SizedBox(height: 50),
                  GestureDetector(
                  onTap: () {
                    // register(phone.text)

                    if (_formKey.currentState!.validate()) {
                      register(contactnumber.text);


                    };
                  },
                    child: Container(
                      decoration:  BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(5.0)),
                        color: Color(0xffD9D9D9),
                      ),
                      height: 50,
                      width: 350,
                      child:  Center(
                        child: Text(
                          "REGISTER",
                          style: TextStyle(
                              decoration: TextDecoration.none,
                              fontWeight: FontWeight.bold,
                              color: Colors.black54,
                              fontSize: 15),
                        ),
                      ),
                    ),
                  ),
                   Text(
                    "By Registering, I agree to Dream11's T&Cs",
                    style: TextStyle(
                        color: Colors.black38,
                        fontSize: 12),
                  ),
                  SizedBox(
                    height: 350,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:  [
                      Text(
                        "Have a Referral Code?",
                        style: TextStyle(
                            decoration: TextDecoration.none,
                            fontSize: 15,
                            color: Color(0xff505050)),
                      ),
                      Text(
                        "Already a User ?",
                        style: TextStyle(
                            decoration: TextDecoration.none,
                            fontSize: 15,
                            color: Color(0xff505050)),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(onPressed: () {

                      },
                          child: Text("Enter Code",
                        style: TextStyle(
                            decoration: TextDecoration.none,
                            fontSize: 12,
                            color: Colors.black),)),


                      TextButton(onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(
                              //  builder: (context) =>  HomeScreen()));
                                builder: (context) =>  LoginScreen()));
                      }, child:  Text("Log In",
                        style: TextStyle(
                            decoration: TextDecoration.none,
                            fontSize: 12,
                            color: Colors.black),
                      ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    }
  }



