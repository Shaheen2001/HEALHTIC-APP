
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hea_apps/Layout/Health_Layout/health_Specialized_Layout_Screen.dart';
import 'package:hea_apps/Layout/Health_Layout/health_patien_Layout_Screen.dart';
import 'package:hea_apps/Modeules/Forgot_password/Forgot_password_screen.dart';
import 'package:hea_apps/Modeules/Register_noutris/Register_Specialized_Screen.dart';
import 'package:hea_apps/Modeules/Register_patient/Register_Patien_Screen.dart';
import 'package:hea_apps/Shared/Colors/Colors.dart';
import 'package:hea_apps/Shared/Networkes/Logical/Diohelper.dart';
import 'package:hea_apps/Shared/Shealt_Compnent/Constants.dart';



class LoginScreenHeath extends StatelessWidget {
var keys=GlobalKey<FormState>();
var EmailControl=TextEditingController();
var PasswordControl=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: SingleChildScrollView(
            child: Form(
              key: keys,
              child: Column(
                children: [
                  Column(
                   // alignment: AlignmentDirectional.center,
                    children: [
                    //  colorbulid(context),
                     /*Icon(
                        MyFlutterApp.heartbeat,
                        color: Colors.white,
                        size: 150.0,
                      ),*/
                      SvgPicture.asset('assert/image/logogApp.svg',height: 100,width: 100,),
                      SizedBox(height: 5.0,),
                      Text("My Health",style: TextStyle(
                        fontStyle: FontStyle.normal,
                        color: Colors.teal,
                        fontWeight: FontWeight.bold,
                        fontSize: 25.0,
                      ),),
                      /*Image(image:AssetImage("assert/image/stethoscope.png"),
                        height: 190.0,
                        width: 190.0,
                      ),*/
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextFormField(
                          controller: EmailControl,
                          onFieldSubmitted: (value){
                            print(EmailControl.text);
                          },
                          onChanged: (value){
                            print(EmailControl.text);
                          },
                          validator: (String? value){
                            if(value!.isEmpty){
                              return "You must enter your email";
                            }

                          },
                          style: Theme.of(context).textTheme.bodyText1!.copyWith(
                            color: Colors.teal,
                          ),

                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            labelText: "E-mail",
                           labelStyle: TextStyle(
                             fontStyle: FontStyle.normal,
                           ),
                           /* border: OutlineInputBorder(
                              borderRadius:BorderRadius.circular(20.0) ,
                              borderSide: BorderSide(

                                // color: Colors.red,
                              ),
                            ),*/

                          ),
                        ),
                        SizedBox(height: 16.0,),
                        TextFormField(

                          obscureText: true,
                          cursorColor: Colors.black26,
                          controller: PasswordControl,
                          onFieldSubmitted: (value){
                            print(PasswordControl.text);
                          },
                          onChanged: (value){
                            print(PasswordControl.text);
                          },
                          validator: (String? value){
                            if(value!.isEmpty){
                              return "You must enter your Password " ;
                            }

                          },
                          style: Theme.of(context).textTheme.bodyText1!.copyWith(
                            color: Colors.teal,
                          ),
                          keyboardType: TextInputType.visiblePassword,
                          decoration: InputDecoration(
                              labelText: "Password",
                            suffixIcon: Icon(Icons.visibility_off),
                            labelStyle: TextStyle(
                              fontStyle: FontStyle.normal,

                            ),
                           /* border: OutlineInputBorder(
                              borderRadius:BorderRadius.circular(20.0) ,
                              borderSide: BorderSide(

                                // color: Colors.red,
                              ),
                            ),*/

                          ),
                        ),
                        SizedBox(height: 16.0,),
                        Align(
                          alignment: AlignmentDirectional.center,
                          child: Container(

                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.0),
                              color: Colors.teal,
                            ),
                            child: MaterialButton(
                                onPressed:(){
                                  if(keys.currentState!.validate()){
                                   print(EmailControl.text);
                                   print(PasswordControl.text);


                              Diohelper.SaveData(key:'Login', value: true).then((value) {
                                      if(value){
                                        Navigator.
                                        pushAndRemoveUntil(
                                         context,
                                         MaterialPageRoute(
                                       builder:(context)=>rasterpatient==true? healthLayout_patien():healthLayout_Specialized(),
                                            ),
                                           (route) => false);
                                             }
                                          });
                                  }},

                              child: Text(
                                  "login",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 17.0,
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.bold
                                ),

                              ),
                            ),
                          ),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextButton(
                                onPressed: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>ForgotPassword() ));
                                },
                                child: Text(
                                    "Forgot password",
                                  style: TextStyle(
                                    color: defultColor,
                                    fontStyle: FontStyle.normal,
                                    fontWeight: FontWeight.w600,
                                  ),


                                ),
                            ),

                          ],
                        ),
                        TextButton(
                          onPressed: (){
                            if(rasterpatient==true){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>RegisterPatien() ));
                            }else{
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>RegisterSpecialized() ));
                            }
                          },
                          child: Text(
                            "Create an account",
                            style: TextStyle(
                              color: defultColor,
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w600,
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
    height: 300,
    color: defultColor,
  ),
  clipper: CustomClipPath(),
);