import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hea_apps/Layout/Health_Layout/health_patien_Layout_Screen.dart';
import 'package:hea_apps/Modeules/CreatProfile_patien/Creatprofile_screen_patien.dart';
import 'package:hea_apps/Modeules/Register_patient/Cubits_Register_patien/cubits.dart';
import 'package:hea_apps/Modeules/Register_patient/Cubits_Register_patien/stats.dart';
import 'package:hea_apps/Shared/Colors/Colors.dart';
import 'package:hea_apps/Shared/Networkes/Logical/Diohelper.dart';
import 'package:hea_apps/Shared/Shealt_Compnent/Constants.dart';

class RegisterPatien extends StatelessWidget {
  var keye=GlobalKey<FormState>();
  var namecontroller=TextEditingController();
  var Emailcontroller=TextEditingController();
  var Passwordcontroller=TextEditingController();
  var phonecontroller=TextEditingController();
  String? v;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context)=>ResgsiterPatienCubit(),
      child: BlocConsumer<ResgsiterPatienCubit,RegisterPainteStates>(
        listener: (BuildContext context, state) {  },
        builder: (BuildContext context, Object? state) {
          var cubit=ResgsiterPatienCubit.get(context);
          return Scaffold(
            body: Center(
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Form(
                  key: keye,
                  child: Column(
                    children: [
                      Column(
                        children: [
                          SvgPicture.asset('assert/image/logogApp.svg',height: 100,width: 100,),
                          SizedBox(height: 5.0,),
                          Text("My HEALTH",style: TextStyle(
                            fontStyle: FontStyle.normal,
                            color: Colors.teal,
                            fontWeight: FontWeight.bold,
                            fontSize: 25.0,
                          ),),
                        ],
                      ),
                      SizedBox(height: 17.0,),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          children: [
                          /*  TextFormField(
                              //   cursorColor: Colors.black26,
                              controller: namecontroller,
                              onFieldSubmitted: (value){
                                print(namecontroller.text);
                                v=namecontroller.text;
                              },
                              /*  onChanged: (value){
                              print(namecontroller.text);
                            },*/
                              validator: (String? v){
                                if(v!.isEmpty){
                                  return "You must enter your name " ;
                                }

                              },
                              keyboardType: TextInputType.name,
                              decoration: InputDecoration(

                                labelText: "Name",
                                labelStyle: TextStyle( fontStyle:FontStyle.italic,),
                                prefixIcon:Icon(Icons.person,color: defultColor,),
                                border: OutlineInputBorder(
                                  borderRadius:BorderRadius.circular(20.0) ,
                                  borderSide: BorderSide(
                                    color: Colors.red,
                                  ),
                                ),

                              ),
                            ),*/
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 0),
                              child: TextFormField(
                                controller: namecontroller,
                                keyboardType: TextInputType.name,
                                decoration: InputDecoration(
                                  labelText: 'Name',
                                  labelStyle: Theme.of(context).textTheme.bodyText2!.copyWith(
                                    color: Color(0xff57646C),
                                  ),
                                  hintText: 'Please enter a valid number...',
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
                                controller: Emailcontroller,
                                keyboardType: TextInputType.emailAddress,
                                decoration: InputDecoration(
                                  labelText: 'E-mail',
                                  labelStyle: Theme.of(context).textTheme.bodyText2!.copyWith(
                                    color: Color(0xff57646C),
                                  ),
                                  hintText: 'Forexample@gmail.com',
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
                                    return "You must enter your email ";
                                  }
                                },

                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 0),
                              child: TextFormField(
                                obscureText: cubit.IsShowEye,
                                controller: Passwordcontroller,
                                keyboardType: TextInputType.visiblePassword,
                                decoration: InputDecoration(
                                  suffixIcon:IconButton(icon:Icon(cubit.Icon,color: Colors.grey,),onPressed:(){
                                    cubit.RegisterPaShowVisiblePassword();
                                    ;},),
                                  labelText: 'Password',
                                  labelStyle: Theme.of(context).textTheme.bodyText2!.copyWith(
                                    color: Color(0xff57646C),
                                  ),
                                  hintText: 'Please enter Password...',
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
                                    return "You must enter your Password ";
                                  }
                                },

                              ),
                            ),
                            /*TextFormField(

                              //cursorColor: Colors.black26,
                              controller:phonecontroller,
                              onFieldSubmitted: (value){
                                print(phonecontroller.text);
                              },
                              /*  onChanged: (value){
                              print(Emailcontroller.text);
                            },*/
                              validator: (String? value){
                                if(value!.isEmpty){
                                  return "You must enter your phone " ;
                                }

                              },
                              keyboardType: TextInputType.phone,
                              decoration: InputDecoration(
                                labelText: "Phone",
                                labelStyle: TextStyle( fontStyle:FontStyle.italic,),
                                prefixIcon:Icon(Icons.phone_android,color: defultColor,),
                                border: OutlineInputBorder(
                                  borderRadius:BorderRadius.circular(20.0) ,
                                  borderSide: BorderSide(

                                    // color: Colors.red,
                                  ),
                                ),

                              ),
                            ),*/
                            SizedBox(height: 15.0,),
                            SizedBox(
                              height: 20.0,
                            ),
                            Container(
                              width: 150.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25.0),
                                color: defultColor,
                              ),
                              child: MaterialButton(
                                onPressed: (){
                                  if(keye.currentState!.validate()){
                                    print(namecontroller.text);



                                    Diohelper.SaveData(key: 'Rasterpatient', value: true).then((value) {
                                      if(value){
                                        Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=> creatpatient==true ? healthLayout_patien():Creatprofilepatien(),), (route) => false);
                                      }
                                    });
                                  }},
                                child: Text(
                                  "Sign up",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16.0,
                                    fontStyle:FontStyle.italic,
                                  ),

                                ),
                              ),
                            ),
                            if(Patient != null)
                              Align(
                                alignment: AlignmentDirectional.centerStart,
                                child: Container(
                                  width: 100.0,
                                  child: TextButton(
                                    onPressed: (){
                                      Navigator.pop(context);
                                    },
                                    child: Row(
                                      children: [
                                        Icon(Icons.arrow_back ,color: defultColor,),
                                        SizedBox(width: 5.0,),
                                        Text(
                                          "back",
                                          style: TextStyle(
                                            fontSize: 16.0,
                                            fontWeight: FontWeight.w400,
                                            color: defultColor,
                                          ),
                                        ),

                                      ],
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
    height: 200,
    color: defultColor,
  ),
  clipper: CustomClipPath(),
);