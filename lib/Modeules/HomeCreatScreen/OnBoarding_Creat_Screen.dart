
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hea_apps/Modeules/Register_noutris/Register_Specialized_Screen.dart';
import 'package:hea_apps/Modeules/Register_patient/Register_Patien_Screen.dart';
import 'package:hea_apps/Shared/Colors/Colors.dart';
import 'package:hea_apps/Shared/Networkes/Logical/Diohelper.dart';

class HomeCreatScreen extends StatefulWidget {


  @override
  State<HomeCreatScreen> createState() => _HomeCreatScreenState();
}

class _HomeCreatScreenState extends State<HomeCreatScreen> {
  var c= true;
  var f= false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
       // backgroundColor: Colors.teal.shade200,
        body: Center(
          child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                //alignment: AlignmentDirectional.center,
                // fit: StackFit.passthrough,
                children: [
                  SizedBox(height: 50.0,),
                  SvgPicture.asset('assert/image/logogApp.svg',height: 100,width: 100,),
                  SizedBox(height: 5.0,),
                  Text("MY HEALTH",style: TextStyle(
                    fontStyle: FontStyle.normal,
                    color: Colors.teal,
                    fontWeight: FontWeight.bold,
                    fontSize: 25.0,
                  ),),
                ],
              ),
              SizedBox(height: 5.0,),
              Column(
               // crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  /*Text("Health for Us",
                    style:
                  TextStyle(
                    color: Colors.teal.withOpacity(0.8),
                    fontWeight: FontWeight.w600,
                    fontSize: 25.0,

                  ),),*/
                  SizedBox(height: 60.0,),
                  Text("Are you ready to change",
                    style:
                    TextStyle(
                      color: defultColor.withOpacity(0.8),
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.normal,
                      fontSize: 25.0,

                    ),),
                  SizedBox(height: 20.0,),
                  Container(
                    width: 300.0,
                    height: 200.0,
                    padding:const EdgeInsets.all(20.0),
                    decoration: BoxDecoration(
                      border: Border.all(color: defultColor as Color ,width: 2.0),
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    child: Column(
                      //mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(height: 17.0,),
                        Container(

                          width: 220.0,
                          decoration:BoxDecoration(
                            border: Border.all(width: 1,color:Colors.transparent ),
                            borderRadius: BorderRadius.circular(40),
                            color:defultColor.withOpacity(.6),

                          ),
                          child: MaterialButton(
                              onPressed: (){
                                Diohelper.SaveData(key: 'patient', value: true).then((value) {
                                  if(value){
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>RegisterPatien()),);
                                  }
                                });
                                setState(() {
                                  c=true;
                                  f=false;
                                });
                              },
                          child: Text(
                              "Sign up as Patient ",
                            style: TextStyle(
                              color:  Colors.white,
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.normal,
                            ),
                          ),
                          ),
                        ),
                        SizedBox(height: 20.0,),
                        Container(
                          width: 220.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25.0),
                            color: defultColor.withOpacity(.6),
                          ),
                          child: MaterialButton(
                            onPressed: (){
                              Diohelper.SaveData(key: 'Specialized', value: true).then((value) {
                                if(value){
                                  Navigator.
                                  push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context)=>
                                          RegisterSpecialized()),

                                  );
                                }
                              });
                              setState(() {
                                c=false;
                                f=true;
                              });
                            },
                            child: Text(
                              "Sign up as Nutritionist",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16.0,
                                fontWeight: FontWeight.w500,
                                fontStyle: FontStyle.normal,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),


              //Expanded(child: colorbulid(context),),

            ],
          ),
        ),
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
    height: 200,
    color: defultColor,
  ),
  clipper: CustomClipPath(),
);




/*class CustomClipPathbut extends CustomClipper<Path> {
  var radius = 10.0;
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(size.height/2, 0);
    path.cubicTo(size.height*0.9, size.width, size.height/2,  3*(size.width/4),3*(size.height/2), size.width/4,);
    /*path.quadraticBezierTo(
        size.width / 4, size.height - 40, size.width / 2, size.height - 20);
    path.quadraticBezierTo(
        3 / 4 * size.width, size.height, size.width, size.height - 30);*/
    path.lineTo(0, size.width);

    return path;
  }
  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

Widget colorbulidbut(context)=>ClipPath(
  // ignore: sort_child_properties_last
  child: Container(
    width: MediaQuery.of(context).size.width,
    height: 200,
    color: defultColor,
  ),
  clipper: CustomClipPath(),
);*/