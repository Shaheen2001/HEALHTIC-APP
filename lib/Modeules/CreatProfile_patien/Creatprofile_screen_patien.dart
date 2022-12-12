import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:hea_apps/Layout/Health_Layout/health_patien_Layout_Screen.dart';
import 'package:hea_apps/Modeules/CreatProfile_patien/CubitCreatprofile/Cubita.dart';
import 'package:hea_apps/Modeules/CreatProfile_patien/CubitCreatprofile/statesa.dart';
import 'package:hea_apps/Shared/Colors/Colors.dart';
import 'package:hea_apps/Shared/Networkes/Logical/Diohelper.dart';




class Creatprofilepatien extends StatefulWidget {






  @override
  State<Creatprofilepatien> createState() => _CreatprofilepatienState();
}

class _CreatprofilepatienState extends State<Creatprofilepatien> {
    var fisrtNamecontroller=TextEditingController();
    var Agescontroller=TextEditingController();
    var  phonecontroller=TextEditingController();
    var  mothcontroller=TextEditingController();
    var  daycontroller=TextEditingController();
    var  weightcontroller=TextEditingController();
    var  heightcontroller=TextEditingController();
    var gendercontroller=TextEditingController();
    var Addresscontroller=TextEditingController();
    var diseasescontroller=TextEditingController();

    var keys=GlobalKey<FormState>();

    List<String>itemsList=["Male","Female"];

    String?SelectedItem="Male";

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context)=>CreatProfilepatiencubit(),
      child: BlocConsumer<CreatProfilepatiencubit,CreatprofilepatienState>(
        listener: (BuildContext context, Object? state) {  },
        builder: (BuildContext context, state) {
          var cubit=CreatProfilepatiencubit.get(context).ImageProfil;
          var CubitE=CreatProfilepatiencubit.get(context);
          return  SafeArea(
            child: Scaffold(
              body: SingleChildScrollView(
                child: Form(
                  key:keys ,
                  child: Column(
                    //  mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 15.0,),
                      Column(
                        children: [
                          InkWell(
                            onTap: (){
                              CubitE.getImageProfilepatine();
                            },
                            child: CircleAvatar(
                              radius: 57.0,
                              //  backgroundColor: Colors.white,
                              child: CircleAvatar(
                                backgroundImage: ((cubit == null)
                                    ? NetworkImage('https://cdn1.iconfinder.com/data/icons/user-interface-82/100/ui_user_interface_ux-43-512.png')
                                    : FileImage(cubit) as ImageProvider),
                                radius: 59.0,
                                backgroundColor: Colors.white,

                              ),
                            ),
                          ),
                          SizedBox(height: 5.0,),
                          Text(
                            'Upload a photo for us to easily identify you.',
                            style: Theme.of(context).textTheme.bodyText1!.copyWith(
                              color: Color(0xff57646C),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20.0,),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                         // mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                          /*  Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                  width: 120.0,
                                  child: Container(
                                    width: 175.0,
                                    child: TextFormField(

                                      //cursorColor: Colors.black26,
                                      controller: fisrtNamecontroller,
                                      onFieldSubmitted: (value){
                                        print(fisrtNamecontroller.text);
                                      },
                                      /*  onChanged: (value){
                                          print(Emailcontroller.text);
                                        },*/
                                      validator: (String? value){
                                        if(value!.isEmpty){
                                          return "You must enter your FristName " ;
                                        }

                                      },
                                      keyboardType: TextInputType.name,
                                      decoration: InputDecoration(
                                        labelText: "FristName",
                                        labelStyle: TextStyle( fontStyle:FontStyle.italic,),
                                       // prefixIcon:Icon(Icons.person,color: Colors.teal.shade200,),
                                      /*  border: OutlineInputBorder(
                                          borderRadius:BorderRadius.circular(20.0) ,
                                          borderSide: BorderSide(

                                            color: Colors.red,
                                          ),
                                        ),*/

                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(width: 15.0,),
                                SizedBox(
                                    width: 120.0,
                                  child: Container(
                                    width: 150.0,
                                    child: TextFormField(

                                      //cursorColor: Colors.black26,
                                      controller: LastNamecontroller,
                                      onFieldSubmitted: (value){
                                        print(LastNamecontroller.text);
                                      },
                                      /*  onChanged: (value){
                                          print(Emailcontroller.text);
                                        },*/
                                      validator: (String? value){
                                        if(value!.isEmpty){
                                          return "You must enter your LastName " ;
                                        }

                                      },
                                      keyboardType: TextInputType.name,
                                      decoration: InputDecoration(
                                        labelText: "LastName",
                                        labelStyle: TextStyle( fontStyle:FontStyle.italic,),
                                       // prefixIcon:Icon(Icons.person,color: Colors.teal.shade200,),
                                      /*  border: OutlineInputBorder(
                                          borderRadius:BorderRadius.circular(20.0) ,
                                          borderSide: BorderSide(

                                            color: Colors.red,
                                          ),
                                        ),*/

                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),*/
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 0),
                              child: TextFormField(
                                controller: fisrtNamecontroller,
                                keyboardType:TextInputType.name ,
                                decoration: InputDecoration(
                                  labelText: 'Your Name',
                                  labelStyle: Theme.of(context).textTheme.bodyText2!.copyWith(
                                    color: Color(0xff57646C),
                                  ),
                                  hintText: 'Please enter Name  on the application ...',
                                  hintStyle: Theme.of(context).textTheme.bodyText2!.copyWith(
                                    color: Color(0xff57646C),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 1,
                                    ),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 1,
                                    ),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  filled: true,
                                  fillColor: Color(0xffF1F4F8),
                                  contentPadding: EdgeInsetsDirectional.fromSTEB(20, 24, 20, 24),
                                ),
                                style: Theme.of(context).textTheme.bodyText1,
                                validator: (String? value) {
                                  if (value!.isEmpty) {
                                    return "You must enter your Name ";
                                  }
                                },
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 0),
                              child: TextFormField(
                                controller: Agescontroller,
                                keyboardType:TextInputType.number ,
                                decoration: InputDecoration(
                                  labelText: 'Your Age',
                                  labelStyle: Theme.of(context).textTheme.bodyText2!.copyWith(
                                    color: Color(0xff57646C),
                                  ),
                                  hintText: 'i.e.34',
                                  hintStyle: Theme.of(context).textTheme.bodyText2!.copyWith(
                                    color: Color(0xff57646C),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 1,
                                    ),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 1,
                                    ),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  filled: true,
                                  fillColor: Color(0xffF1F4F8),
                                  contentPadding: EdgeInsetsDirectional.fromSTEB(20, 24, 20, 24),
                                ),
                                style: Theme.of(context).textTheme.bodyText1,
                                validator: (String? value) {
                                  if (value!.isEmpty) {
                                    return "You must enter your Age ";
                                  }
                                },
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 0),
                              child: TextFormField(
                                controller: Addresscontroller,
                                keyboardType:TextInputType.streetAddress ,
                                decoration: InputDecoration(
                                  labelText: 'Your Address',
                                  labelStyle: Theme.of(context).textTheme.bodyText2!.copyWith(
                                    color: Color(0xff57646C),
                                  ),
                                  hintText: 'Please enter Address...',
                                  hintStyle: Theme.of(context).textTheme.bodyText2!.copyWith(
                                    color: Color(0xff57646C),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 1,
                                    ),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 1,
                                    ),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  filled: true,
                                  fillColor: Color(0xffF1F4F8),
                                  contentPadding: EdgeInsetsDirectional.fromSTEB(20, 24, 20, 24),
                                ),
                                style: Theme.of(context).textTheme.bodyText1,
                                validator: (String? value) {
                                  if (value!.isEmpty) {
                                    return "You must enter your Address ";
                                  }
                                },
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 0),
                              child: TextFormField(
                                controller: phonecontroller,
                                keyboardType: TextInputType.phone,
                                decoration: InputDecoration(
                                  labelText: 'Phone',
                                  labelStyle: Theme.of(context).textTheme.bodyText2!.copyWith(
                                    color: Color(0xff57646C),
                                  ),
                                  hintText: 'Please enter Phone...',
                                  hintStyle: Theme.of(context).textTheme.bodyText2!.copyWith(
                                    color: Color(0xff57646C),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 1,
                                    ),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 1,
                                    ),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  filled: true,
                                  fillColor: Color(0xffF1F4F8),
                                  contentPadding: EdgeInsetsDirectional.fromSTEB(20, 24, 20, 24),
                                ),
                                style: Theme.of(context).textTheme.bodyText1,
                                validator: (String? value) {
                                  if (value!.isEmpty) {
                                    return "You must enter your Phone ";
                                  }
                                },

                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 0),
                              child: TextFormField(
                                controller: weightcontroller,
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                  labelText: 'weight',
                                  labelStyle: Theme.of(context).textTheme.bodyText2!.copyWith(
                                    color: Color(0xff57646C),
                                  ),
                                  hintText: 'Please enter weight...',
                                  hintStyle: Theme.of(context).textTheme.bodyText2!.copyWith(
                                    color: Color(0xff57646C),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 1,
                                    ),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 1,
                                    ),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  filled: true,
                                  fillColor: Color(0xffF1F4F8),
                                  contentPadding: EdgeInsetsDirectional.fromSTEB(20, 24, 20, 24),
                                ),
                                style: Theme.of(context).textTheme.bodyText1,
                                validator: (String? value) {
                                  if (value!.isEmpty) {
                                    return "You must enter your weight ";
                                  }
                                },

                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 0),
                              child: TextFormField(
                                controller: heightcontroller,
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                  labelText: 'height',
                                  labelStyle: Theme.of(context).textTheme.bodyText2!.copyWith(
                                    color: Color(0xff57646C),
                                  ),
                                  hintText: 'Please enter height...',
                                  hintStyle: Theme.of(context).textTheme.bodyText2!.copyWith(
                                    color: Color(0xff57646C),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 1,
                                    ),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 1,
                                    ),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  filled: true,
                                  fillColor: Color(0xffF1F4F8),
                                  contentPadding: EdgeInsetsDirectional.fromSTEB(20, 24, 20, 24),
                                ),
                                style: Theme.of(context).textTheme.bodyText1,
                                validator: (String? value) {
                                  if (value!.isEmpty) {
                                    return "You must enter your height ";
                                  }
                                },

                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 0),
                              child: TextFormField(
                                controller: diseasescontroller,
                                keyboardType: TextInputType.text,
                                decoration: InputDecoration(
                                  labelText: 'diseases',
                                  labelStyle: Theme.of(context).textTheme.bodyText2!.copyWith(
                                    color: Color(0xff57646C),
                                  ),
                                  hintText: 'i.e.disbestes,stress...',
                                  hintStyle: Theme.of(context).textTheme.bodyText2!.copyWith(
                                    color: Color(0xff57646C),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 1,
                                    ),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 1,
                                    ),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  filled: true,
                                  fillColor: Color(0xffF1F4F8),
                                  contentPadding: EdgeInsetsDirectional.fromSTEB(20, 24, 20, 24),
                                ),
                                style: Theme.of(context).textTheme.bodyText1,

                              ),
                            ),
                            SizedBox(height: 6.0,),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                              child: Row(

                                children: [
                                  Align(
                                    //  alignment: AlignmentDirectional.topStart,
                                    child: Text(
                                      'Your Birth Sex',
                                      style: Theme.of(context).textTheme.bodyText1!.copyWith(color:Color(0xff57646C), ),),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(0, 0, 20, 0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  SizedBox(width:4 ,),
                                  Radio(
                                    value: 'Male',
                                    groupValue: CubitE.c,
                                    onChanged: (dynamic value){
                                      CubitE.ChangeRaiosCreatprofilepatien(value: value);
                                    },
                                    activeColor: Colors.teal,
                                    toggleable: false,

                                  ),
                                  Text("Male",style: TextStyle(color: CubitE.c=='Male'?Colors.teal:null ),),
                                  Radio(
                                    value: 'Female',
                                    groupValue: CubitE.c,
                                    onChanged: (dynamic value){
                                      CubitE.ChangeRaiosCreatprofilepatien(value: value);
                                    },
                                    activeColor: Colors.teal,
                                    focusColor:Colors.teal ,
                                    toggleable: false,

                                  ),
                                  Text("Female",style: TextStyle(color: CubitE.c=='Female'?Colors.teal:null ),),
                                  Radio(
                                    value: 'Undisclosed',
                                    groupValue: CubitE.c,
                                    onChanged: (dynamic value){
                                      CubitE.ChangeRaiosCreatprofilepatien(value: value);
                                    },
                                    activeColor: Colors.teal,
                                    toggleable: false,

                                  ),
                                  Text("Undisclosed",style: TextStyle(color: CubitE.c=='Undisclosed'?Colors.teal:null ),),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(0, 0, 20, 0),
                              child: Row(
                                children: [
                                  Container(
                                    padding: EdgeInsets.zero,
                                    decoration: BoxDecoration(
                                      border: Border.all(width: 1,color: Colors.teal),
                                      borderRadius: BorderRadius.circular(26.0),
                                    ),
                                    child: IconButton(
                                      padding: EdgeInsets.zero,
                                      splashColor: Colors.teal,
                                      onPressed: (){},
                                      icon: Icon(
                                        IconlyBroken.location,
                                        color: Colors.teal,
                                        size: 28.0,
                                      ),

                                    ),
                                  ),
                                  SizedBox(width: 6.0,),
                                  Text("Send your location ",style:Theme.of(context).textTheme.bodyText2!.copyWith(
                                    color: Color(0xff57646C),
                                  ), ),
                                ],
                              ),
                            ),
                            SizedBox(height: 13.0,),

                           /* Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                              /*  Container(
                                  width: 110.0,
                                  child: TextFormField(

                                    //cursorColor: Colors.black26,
                                    controller: weightcontroller,
                                    onFieldSubmitted: (value){
                                      print(weightcontroller.text);
                                    },
                                    /*  onChanged: (value){
                                        print(Emailcontroller.text);
                                      },*/
                                    validator: (String? value){
                                      if(value!.isEmpty){
                                        return "You must enter weigh " ;
                                      }

                                    },
                                    keyboardType: TextInputType.number,
                                    decoration: InputDecoration(
                                      labelText: "Weigh",
                                      labelStyle: TextStyle( fontStyle:FontStyle.italic,),
                                      //label: Text("month",textAlign: TextAlign.center,),
                                      // prefixIcon:Icon(Icons.person,color: Colors.teal.shade200,),
                                     /* border: OutlineInputBorder(
                                        borderRadius:BorderRadius.circular(20.0) ,
                                        borderSide: BorderSide(

                                          color: Colors.red,
                                        ),
                                      ),*/

                                    ),
                                  ),
                                ),*/
                                //SizedBox(width: 10.0,),
                                /*Container(
                                  width: 110.0,
                                  child: TextFormField(

                                    //cursorColor: Colors.black26,
                                    controller: heightcontroller,
                                    onFieldSubmitted: (value){
                                      print(heightcontroller.text);
                                    },
                                    /*  onChanged: (value){
                                        print(Emailcontroller.text);
                                      },*/
                                    validator: (String? value){
                                      if(value!.isEmpty){
                                        return "You must enter height " ;
                                      }

                                    },
                                    keyboardType: TextInputType.number,
                                    decoration: InputDecoration(
                                      labelText: "Height",
                                      labelStyle: TextStyle( fontStyle:FontStyle.italic,),
                                      //label: Text("month",textAlign: TextAlign.center,),
                                      // prefixIcon:Icon(Icons.person,color: Colors.teal.shade200,),
                                      /* border: OutlineInputBorder(
                                        borderRadius:BorderRadius.circular(20.0) ,
                                        borderSide: BorderSide(

                                          color: Colors.red,
                                        ),
                                      ),*/

                                    ),
                                  ),
                                ),*/
                               // SizedBox(width: 10.0,),
                                SizedBox(
                                  width: 120.0,
                                  child: Container(
                                    width: 110.0,
                                    child: TextFormField(

                                      //cursorColor: Colors.black26,
                                      controller: weightcontroller,
                                      onFieldSubmitted: (value){
                                        print(weightcontroller.text);
                                      },
                                      /*  onChanged: (value){
                                          print(Emailcontroller.text);
                                        },*/
                                      validator: (String? value){
                                        if(value!.isEmpty){
                                          return "You must enter weigh " ;
                                        }

                                      },
                                      keyboardType: TextInputType.number,
                                      decoration: InputDecoration(
                                        labelText: "Weigh",
                                        labelStyle: TextStyle( fontStyle:FontStyle.italic,),
                                        //label: Text("month",textAlign: TextAlign.center,),
                                        // prefixIcon:Icon(Icons.person,color: Colors.teal.shade200,),
                                        /* border: OutlineInputBorder(
                                          borderRadius:BorderRadius.circular(20.0) ,
                                          borderSide: BorderSide(

                                            color: Colors.red,
                                          ),
                                        ),*/

                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(width:10.0 ,),
                                SizedBox(
                                  width: 120.0,
                                  child: Container(
                                    width: 110.0,
                                    child: TextFormField(

                                      //cursorColor: Colors.black26,
                                      controller: heightcontroller,
                                      onFieldSubmitted: (value){
                                        print(heightcontroller.text);
                                      },
                                      /*  onChanged: (value){
                                          print(Emailcontroller.text);
                                        },*/
                                      validator: (String? value){
                                        if(value!.isEmpty){
                                          return "You must enter height " ;
                                        }

                                      },
                                      keyboardType: TextInputType.number,
                                      decoration: InputDecoration(
                                        labelText: "Height",
                                        labelStyle: TextStyle( fontStyle:FontStyle.italic,),
                                        //label: Text("month",textAlign: TextAlign.center,),
                                        // prefixIcon:Icon(Icons.person,color: Colors.teal.shade200,),
                                        /* border: OutlineInputBorder(
                                          borderRadius:BorderRadius.circular(20.0) ,
                                          borderSide: BorderSide(

                                            color: Colors.red,
                                          ),
                                        ),*/

                                      ),
                                    ),
                                  ),
                                ),

                              ],
                            ),*/

                            SizedBox(height: 20.0,),
                            Align(
                              alignment: AlignmentDirectional.center,
                              child: Container(

                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20.0),
                                  color: defultColor,
                                ),
                                child: MaterialButton(
                                  onPressed:(){
                                    if(keys.currentState!.validate()){


                                      Diohelper.SaveData(key: 'Creatpatient', value: true).then((value) {
                                             if(value){
                                       Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>healthLayout_patien()), (route) => false);
                                            }
                                           });

                                    }},

                                  child: Text(
                                    "Create Profile",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 17.0,
                                      fontStyle: FontStyle.normal,
                                      fontWeight: FontWeight.bold,
                                    ),

                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                    ],
                  ),
                ),
              ),
            ),
          );
        },

      ),
    );
  }
}
class CustomClipPath extends CustomClipper<Path> {
  var radius = 10.0;
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height/2);
    path.cubicTo(size.width/4, 3*(size.height/2), 3*(size.width/4), size.height/2, size.width, size.height*0.9);
    /*path.quadraticBezierTo(
        size.width / 4, size.height - 40, size.width / 2, size.height - 20);
    path.quadraticBezierTo(
        3 / 4 * size.width, size.height, size.width, size.height - 30);*/
    path.lineTo(size.width, 0);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

Widget colorbulid(context)=>ClipPath(
  // ignore: sort_child_properties_last
  child: Container(
    width: MediaQuery.of(context).size.width,
    height: 150,
    color: defultColor,
  ),
  clipper: CustomClipPath(),
);


/*Diohelper.SaveData(key: 'Creatpatient', value: true).then((value) {
if(value){
Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>healthLayout_patien()), (route) => false);
}
});*/

/*    Container(
              width: 150.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25.0),
                color:  Colors.teal.shade200,
              ),
              child: MaterialButton(
                onPressed: (){

                },
                child: Text(
                  "Sign in",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 16.0,
                  ),

                ),
              ),
            ),*/


/* Row(
                             // crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                  width: 120.0,
                                  child: Container(
                                    width: 120.0,
                                    child: TextFormField(
                                   /*   onTap: (){
                                        showDatePicker(
                                          context: context,
                                          initialDate:DateTime.now() ,
                                          firstDate: DateTime(1932),
                                          lastDate: DateTime(2023,1,2),
                                        ).then((value) {
                                          yearscontroller.text=DateFormat.yMMMd().format(value!);
                                        });

                                      },*/
                                      //cursorColor: Colors.black26,
                                      controller: yearscontroller,
                                      onFieldSubmitted: (value){
                                        print(yearscontroller.text);
                                      },
                                      /*  onChanged: (value){
                                          print(Emailcontroller.text);
                                        },*/
                                      validator: (String? value){
                                        if(value!.isEmpty){
                                          return "You must enter your Age " ;
                                        }

                                      },
                                      keyboardType: TextInputType.datetime,
                                      decoration: InputDecoration(
                                        labelText: "Age",
                                       // prefixIcon:Icon(Icons.person,color: Colors.teal.shade200,),
                                       /* border: OutlineInputBorder(
                                          borderRadius:BorderRadius.circular(20.0) ,
                                          borderSide: BorderSide(

                                            color: Colors.red,
                                          ),
                                        ),*/

                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(width:10.0 ,),
                                SizedBox(
                                  width: 120.0,
                                  child:Padding(
                                    padding: const EdgeInsets.only(bottom: 4.0),
                                    child: DropdownButtonFormField<String>(
                                      decoration: InputDecoration(
                                        labelText: "--Gender--",

                                      ),
                                      validator: (String? v){
                                        if(v!.isEmpty){
                                          return "You must enter your Gender ";
                                        }

                                      },

                                      alignment: AlignmentDirectional.center,
                                   //   value:SelectedItem ,
                                      items: itemsList.map((items) =>DropdownMenuItem(
                                        child:Text(items,style: TextStyle(fontSize: 18.0,fontStyle: FontStyle.italic),) ,
                                      value:items ,
                                      )).toList(),
                                      onChanged: (items)=>setState(()=>SelectedItem=items),

                                    ),
                                  )
                                ),
                                /*Container(
                                  width: 110.0,
                                  child: TextFormField(

                                    //cursorColor: Colors.black26,
                                    controller: mothcontroller,
                                    onFieldSubmitted: (value){
                                      print(mothcontroller.text);
                                    },
                                    /*  onChanged: (value){
                                        print(Emailcontroller.text);
                                      },*/
                                    validator: (String? value){
                                      if(value!.isEmpty){
                                        return "You must enter Month " ;
                                      }

                                    },
                                    keyboardType: TextInputType.datetime,
                                    decoration: InputDecoration(
                                      labelText: "month",
                                      //label: Text("month",textAlign: TextAlign.center,),
                                      // prefixIcon:Icon(Icons.person,color: Colors.teal.shade200,),
                                     /* border: OutlineInputBorder(
                                        borderRadius:BorderRadius.circular(20.0) ,
                                        borderSide: BorderSide(

                                          color: Colors.red,
                                        ),
                                      ),*/

                                    ),
                                  ),
                                ),*/
                              //  SizedBox(width:6.0 ,),
                                /*Expanded(
                                  child: Container(
                                    width: 100.0,
                                    child: TextFormField(

                                      //cursorColor: Colors.black26,
                                      controller: daycontroller,
                                      onFieldSubmitted: (value){
                                        print(daycontroller.text);
                                      },
                                      /*  onChanged: (value){
                                          print(Emailcontroller.text);
                                        },*/
                                      validator: (String? value){
                                        if(value!.isEmpty){
                                          return "You must enter day " ;
                                        }

                                      },
                                      keyboardType: TextInputType.datetime,
                                      decoration: InputDecoration(
                                        labelText: "day",
                                        //label: Text("month",textAlign: TextAlign.center,),
                                        // prefixIcon:Icon(Icons.person,color: Colors.teal.shade200,),
                                        /*border: OutlineInputBorder(
                                          borderRadius:BorderRadius.circular(20.0) ,
                                          borderSide: BorderSide(

                                            color: Colors.red,
                                          ),
                                        ),*/

                                      ),
                                    ),
                                  ),
                                ),*/
                              ],
                            ),*/