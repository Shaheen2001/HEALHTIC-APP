import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hea_apps/Shared/Colors/Colors.dart';


class ForgotPassword extends StatelessWidget {

  var EmailControl=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
      body:SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              alignment: AlignmentDirectional.center,
              children: [
                colorbulid(context),
                Icon(
                  Icons.lock_open,
                  color: Colors.white,
                  size: 100.0,
                ),
               // SvgPicture.asset('assert/image/ibrahim.svg',height: 200,width: 210,)

              ],
            ),
            SizedBox(height: 20.0,),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Text(
                    "Receive an email to \n reset your password" ,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: defultColor,
                      fontSize: 16.0,
                      fontWeight: FontWeight.w600,
                      fontStyle: FontStyle.normal,

                    ),

                  ),
                  Container(
                    height: 100.0,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: TextFormField(
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

                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          labelText: "E-mail",
                           border: OutlineInputBorder(
                                    borderRadius:BorderRadius.circular(25.0) ,
                             borderSide: BorderSide(
                               color: Theme.of(context).primaryColor,
                             ),
                                  ),

                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 200.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25.0),
                      color: defultColor,
                    ),
                    child: MaterialButton(
                        onPressed: (){},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.email_outlined,size: 20.0,color: Colors.white,),
                            SizedBox(width: 5.0,),
                            Text(
                                "Reset Password",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.bold,
                            ),
                            ),
                          ],
                        ),

                    ),
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.only(top: 60.0),
                    child: Align(
                      alignment: AlignmentDirectional.bottomStart,
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
                                    fontStyle: FontStyle.italic,
                                  ),
                                ),

                              ],
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
      ) ,

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