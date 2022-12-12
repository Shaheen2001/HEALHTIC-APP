
import 'package:flutter/material.dart';
import 'package:hea_apps/Shared/Colors/Colors.dart';


class EditProfilePatien extends StatelessWidget {
 var Namecontroller=TextEditingController();
 var Agescontroller=TextEditingController();
 var phonecontroller=TextEditingController();
 var weightcontroller=TextEditingController();
 var heightcontroller=TextEditingController();
 var diseasescontroller=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        leading: Builder(builder: (context)=>IconButton(onPressed: (){Navigator.pop(context);},icon: Icon(Icons.arrow_back,color: defultColor),)),
        title: Text(" Edit Profile ",style: TextStyle(color: defultColor,fontStyle: FontStyle.italic),),
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Container(
                height: 190.0,
                child: Stack(
                  alignment: AlignmentDirectional.bottomCenter,
                  children: [
                    Align(
                      child: Container(
                        height: 140.0,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(
                              4.0,
                            ),
                            topRight: Radius.circular(
                              4.0,
                            ),
                          ),
                          image: DecorationImage(
                            image: NetworkImage(
                              'https://tse2.mm.bing.net/th?id=OIP.At9CpPJanT2mDg-DAdCJQwHaE8&pid=Api&P=0}',
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      alignment: AlignmentDirectional.topCenter,
                    ),
                    CircleAvatar(
                      radius: 64.0,
                      backgroundColor:
                      Theme.of(context).scaffoldBackgroundColor,
                      child: CircleAvatar(
                        radius: 60.0,
                        backgroundImage: NetworkImage(
                          'https://tse2.mm.bing.net/th?id=OIP.At9CpPJanT2mDg-DAdCJQwHaE8&pid=Api&P=0',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 5.0,
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 0),
                child: TextFormField(
                  controller: Namecontroller,
                  keyboardType:TextInputType.name ,
                  decoration: InputDecoration(
                    labelText: 'Edit Your Name',
                    labelStyle: Theme.of(context).textTheme.bodyText2!.copyWith(
                      color: Colors.black,
                    ),
                  /*  hintText: 'Please enter Name  on the application ...',
                    hintStyle: Theme.of(context).textTheme.bodyText2!.copyWith(
                      color: Color(0xff57646C),
                    ),*/
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
                    labelText: 'Edit Your Age',
                    labelStyle: Theme.of(context).textTheme.bodyText2!.copyWith(
                      color: Colors.black,
                    ),
                    /*hintText: 'i.e.34',
                    hintStyle: Theme.of(context).textTheme.bodyText2!.copyWith(
                      color: Color(0xff57646C),
                    ),*/
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
                  controller: phonecontroller,
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    labelText: 'Phone',
                    labelStyle: Theme.of(context).textTheme.bodyText2!.copyWith(
                      color: Colors.black,
                    ),
                   /* hintText: 'Please enter Phone...',
                    hintStyle: Theme.of(context).textTheme.bodyText2!.copyWith(
                      color: Color(0xff57646C),
                    ),*/
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
                      color: Colors.black,
                    ),
                 /*   hintText: 'Please enter weight...',
                    hintStyle: Theme.of(context).textTheme.bodyText2!.copyWith(
                      color: Color(0xff57646C),
                    ),*/
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
                      color: Colors.black,
                    ),
                   /* hintText: 'Please enter height...',
                    hintStyle: Theme.of(context).textTheme.bodyText2!.copyWith(
                      color: Color(0xff57646C),
                    ),*/
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
                      color: Colors.black,
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
              SizedBox(height: 10.0,),
              Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 0),
                child: Row(
                  children: [
                    Expanded(
                      child: OutlinedButton(
                        onPressed: () {

                        },
                        child: Text(
                          'Uptodate Image',
                          style: TextStyle(
                            color: defultColor,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 15.0,),
                    Expanded(
                      child: OutlinedButton(
                        onPressed: () {

                        },
                        child: Text(
                          'Uptodate Cover Photo ',
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
                padding: EdgeInsetsDirectional.fromSTEB(20, 13, 20, 0),
                child: Row(
                  children: [
                    Expanded(
                      child: OutlinedButton(
                        onPressed: () {

                        },
                        child: Text(
                          'Uptdtate',
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
    );
  }
}
