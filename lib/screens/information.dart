import 'package:dream_11/validators.dart';
import 'package:flutter/material.dart';

import '../alliraries.dart';
import '../customfeild.dart';

class Information extends StatefulWidget {
  const Information({Key? key}) : super(key: key);

  @override
  State<Information> createState() => _InformationState();
}

class _InformationState extends State<Information> {
  late FocusNode myFocusNode;
  String? gender;

  @override
  void initState() {
    super.initState();

    myFocusNode = FocusNode();
  }

  @override
  void dispose() {
    myFocusNode.dispose();

    super.dispose();
  }

  final _formKey = GlobalKey<FormState>();
  TextEditingController controllerForName = TextEditingController();
  TextEditingController controllerForLastName = TextEditingController();
  TextEditingController controllerForGender = TextEditingController();
  TextEditingController controllerForDob = TextEditingController();
  TextEditingController controllerForEmail = TextEditingController();
  TextEditingController controllerForPhone = TextEditingController();
  TextEditingController controllerForPassword = TextEditingController();
  TextEditingController controllerForConfirmation = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Scaffold(
          appBar: AppBar(

            leading: IconButton(
              onPressed: (){
                Navigator.pop(context);
              },
              icon:Icon(Icons.arrow_back_ios_new_outlined,color: Colors.white,)),
            //centerTitle: true,
            backgroundColor: Colors.black,
            title: const Text("My Info & Setting"),
          ),
          body: SingleChildScrollView(

              child: Padding(padding: EdgeInsets.all(20),
                child: Column(

                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(height: 10,),
                    firstName(),
                    const SizedBox(height: 10,),
                    email(),
                    const SizedBox(height: 10,),
                    phone(),
                    const SizedBox(height: 10,),
                    dob(),
                    const SizedBox(height: 10,),
                    genderSelect(),
                    const SizedBox(height: 20),
                    TextField(
                      decoration: InputDecoration(
                          labelText: 'App Language ',
                          //hintText: 'App Language',
                        suffixIcon: IconButton(

                          icon: const Icon(Icons.arrow_forward_ios),
                          onPressed: () {  },)
                      ),
                    ),
                    const SizedBox(height: 20),
                    TextField(
                      decoration: InputDecoration(
                          labelText: 'Privacy',
                          //hintText: 'App Language',
                          suffixIcon: IconButton(

                            icon: Icon(Icons.arrow_forward_ios),
                            onPressed: () {  },)
                      ),
                    ),
                    SizedBox(height: 30),
                    
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text("Allow SMS Notification"),
                        Container(
                          height: 15,
                          width: 15,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.green
                          ),
                        )
                        
                      ],
                    ),
                    const SizedBox(height: 20),
                    const Divider(
                      color: Colors.black,
                    ),
                    SizedBox(height: 20),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text("Make me Discoverable"),
                        Container(
                          height: 15,
                          width: 15,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.green
                          ),
                        ),

                      ],
                    ),
                    const SizedBox(height: 10),
                    const Divider(
                      color: Colors.black,
                    ),
                    SizedBox(height:20),

                    Row(
                      children: [
                        IconButton(onPressed: (){}, icon:const Icon(Icons.logout_rounded)),
                        const Text("Logout"),
                        const SizedBox(width:120,),
                        const Text("STRATEGIC TIMEOUT"),
                      ],
                    )

                  ],
                ),
              ),
            ),
      ),

         // floatingActionButton: focusNode()),
    );
  }

  firstName() {
    return CustomField(
        length: getFullHeight(context: context) * 0.10,
        breadth: getFullWidth(context: context) * 0.90,
        focusAuto: true,
        controller: controllerForName,
        validator: (value) => validateName(value),
        labelText: 'Name',
        hint: 'Name',
        nodeFocus: null,
        keyBoard: TextInputType.name);
  }
  email() {
    return CustomField(
        length: getFullHeight(context: context) * 0.10,
        breadth: getFullWidth(context: context) * 0.90,
        controller: controllerForEmail,
        validator: (value) => validateEmail(value),
        labelText: 'Email ',
        hint: 'Email',
        focusAuto: false,
        nodeFocus: null,
        keyBoard: TextInputType.emailAddress);
  }
  phone() {
    return CustomField(
        length: getFullHeight(context: context) * 0.10,
        breadth: getFullWidth(context: context) * 0.90,
        controller: controllerForPhone,
        validator: (value) => validatePhone(value),
        labelText: 'Mobile',
        hint: 'Mobile',
        focusAuto: false,
        nodeFocus: null,
        keyBoard: TextInputType.phone);
  }
  dob() {
    return CustomField(

        length: getFullHeight(context: context) * 0.10,
        breadth: getFullWidth(context: context) * 0.90,
        nodeFocus: myFocusNode,
        controller: controllerForDob,
        validator: (value) => validateDob(value),
        labelText: 'DOB',
        hint: 'DOB',
        focusAuto: false,
        keyBoard: TextInputType.datetime);
  }




  genderSelect() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        const Text('Gender'),
        Row(
          children:[
            Expanded(
              child: ListTile(
                    title: const Text('Female',style: TextStyle(fontSize: 8.0),),
                    leading: Radio(

                      activeColor: Color(0xff25B434
                      ),

                    //  fillColor: MaterialStateColor.resolveWith((states) => Color(0XFFB63728)),
                      value: "female",
                      groupValue: gender,
                      onChanged: (value) {
                        setState(() {
                          gender = value.toString();
                        });
                      },
                    ),
                  ),
                ),
            Expanded(
              child: ListTile(

                title: const Text('Male',style: TextStyle(fontSize: 8.0)),
                leading: Radio(
                  activeColor: Color(0xff25B434
                  ),
                 // fillColor: MaterialStateColor.resolveWith((states) => Color(0XFFB63728)),
                  value: "Male",
                  groupValue: gender,
                  onChanged: (value) {
                    setState(() {
                      gender = value.toString();
                    });
                  },
                ),
              ),),
            Expanded(
              child:ListTile(
                title: const Text('Other',style: TextStyle(fontSize:8.0)),
                leading: Radio(
                  activeColor: Color(0xff25B434
                  ),
                  //fillColor: MaterialStateColor.resolveWith((states) => Color(0XFFB63728)),
                  value:"Others",
                  groupValue: gender,
                  onChanged: ( value) {
                    setState(() {
                      gender = value.toString();
                    });
                  },
                ),
              ),
            ),


      ],
    ),
    ],


    );
  }












  }

