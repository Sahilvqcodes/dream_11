import 'dart:convert';

import 'package:dream_11/screens/information.dart';
import 'package:dream_11/verification_code.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'home_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
 // final _emailController = TextEditingController();
  TextEditingController controllerForPhone = TextEditingController();
  _login(contact) async {
    String body = json.encode(contact);
    var url = 'https://90a5-122-160-167-80.in.ngrok.io/login';
    var response = await http.post(
      Uri.parse(url),
      body: jsonEncode(<String,String>{
        "phone" : contact,
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
        (builder: (context) => MyVerify()));
      //Or put here your next screen using Navigator.push() method
      print('Login Successfully');
    } else {
      print('error');
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: const Icon(Icons.arrow_back_ios_new_outlined,
          color: Colors.white,),
          onPressed: (){
          Navigator.pop(context);

          },),
        centerTitle: true,
        title: const Text("Login",
            style: TextStyle(
                decoration: TextDecoration.none,
                color: Colors.white,
                fontSize: 20),
        ),


        backgroundColor: const Color(0xffC90000),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 50, left: 20, right: 20),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    GestureDetector(
                      child: Container(
                        height:30.0,
                        width: 30.0,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                                'assets/images/google.jpg'),
                            fit: BoxFit.fill,
                          ),
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                    const Text("or"),
                    GestureDetector(
                      child: Container(
                        height: 30.0,
                        width: 30.0,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                                'assets/images/facebook.webp'),
                            fit: BoxFit.fill,
                          ),
                          shape: BoxShape.circle,
                        ),
                      ),
                    )


                  ],
                ),
                const SizedBox(height: 100),
                SizedBox(
                  width: 350,


                  child: TextFormField(

                    controller: controllerForPhone,
                    keyboardType: TextInputType.phone,
                    validator: (value) => validatePhone(value),
                    decoration: const InputDecoration(
                        hintText: "Email or  Mobile Number"),

                  ),
                ),
                const SizedBox(height: 50),
                Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(5.0)),
                      //color:Color(0xffF5F5F5),
                      color:Color(0xffD9D9D9),
                    ),

                    height: 50,
                    width: 350,
                  child: TextButton(child:const Text(
                        "Next",
                        style: TextStyle(
                            decoration: TextDecoration.none,
                            fontWeight: FontWeight.bold,
                            color: Colors.black54,
                            fontSize: 15),),
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            _login(controllerForPhone.text);


                          };
                        },
                      ),
                    ),
                const SizedBox(height: 300,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text('Not a Member ?', style: TextStyle(color: Colors.grey, fontSize: 15)),
                    TextButton(onPressed: (){
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Information()));

                    }, child:const Text("Register",style: TextStyle(color: Colors.black, fontSize: 15)))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  String? validatePhone(String? value) {
    String pattern = r"^[0-9]{10}$";
    RegExp regex = RegExp(pattern);
    if (value == null || value.isEmpty || !regex.hasMatch(value)) {
      return 'Enter valid  email or Phone Number';
    } else {
      return null;
    }
  }
}
