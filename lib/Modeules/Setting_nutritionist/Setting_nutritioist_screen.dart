import 'package:flutter/material.dart';
import 'package:hea_apps/Shared/Colors/Colors.dart';

class SettingNutritionst extends StatelessWidget {
  var Emailcontroller=TextEditingController();
  var Passwordcontroller=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        leading: Builder(builder: (context)=>IconButton(onPressed: (){Navigator.pop(context);},icon: Icon(Icons.arrow_back,color: defultColor),)),
        title: Text("Setting ",style: TextStyle(color: defultColor,fontStyle: FontStyle.italic),),
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
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
                      hintText: 'Please enter a E-mail...',
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
                    // obscureText: cubit.IsShowEye,
                    controller: Passwordcontroller,
                    keyboardType: TextInputType.visiblePassword,
                    decoration: InputDecoration(
                      /* suffixIcon:IconButton(icon:Icon(cubit.Icon,color: Colors.grey,),onPressed:(){
                        cubit.RegisterSpeShowVisiblePassword();
                        ;},),*/
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
                Padding(
                  padding:  EdgeInsetsDirectional.fromSTEB(20, 20, 20, 0),
                  child: Row(
                    children: [
                      Expanded(
                        child: OutlinedButton(
                          onPressed: () {

                          },
                          child: Text(
                            'change',
                            style: TextStyle(
                              color: defultColor,
                            ),
                          ),
                        ),
                      ),


                    ],
                  ),
                ),
                Padding(
                  padding:  EdgeInsetsDirectional.fromSTEB(20, 20, 20, 0),
                  child: Row(
                    children: [
                      Expanded(
                        child: OutlinedButton(
                          onPressed: () {

                          },
                          child: Text(
                            'sign out',
                            style: TextStyle(
                              color: defultColor,
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
  }
}
