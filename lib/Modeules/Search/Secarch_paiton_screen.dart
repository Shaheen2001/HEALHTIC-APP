import 'package:flutter/material.dart';
import 'package:hea_apps/Modeules/NavBar_pation/NavBar_screen.dart';
import 'package:hea_apps/Modeules/profile_nutritionist/Profile_nutritionist_screen.dart';
import 'package:hea_apps/Shared/Colors/Colors.dart';

import 'package:smooth_star_rating_null_safety/smooth_star_rating_null_safety.dart';


class Search_paiton_screen extends StatefulWidget {
  @override
  State<Search_paiton_screen> createState() => _Search_paiton_screenState();
}

class _Search_paiton_screenState extends State<Search_paiton_screen> {
  var searchFieldController = TextEditingController();

  List<String>itemsList=['Item1','Item2','Item3','Item4'];

  String?selectedItem='Item1';


  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer:NavBarPation() ,
        appBar: AppBar(
          leading: Builder(builder: (context)=>IconButton(onPressed: (){Navigator.pop(context);},icon: Icon(Icons.arrow_back,color: defultColor,),)),
          backgroundColor: Colors.white,
          elevation: 0.0,
          title:  Text("Search",style: TextStyle(color: defultColor),),

        ),

        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
                child: TextFormField(
                  controller: searchFieldController,
                  obscureText: false,
                  decoration: InputDecoration(
                    labelText: 'Search Specialized',
                    labelStyle: Theme
                        .of(context)
                        .textTheme
                        .bodyText1!
                        .copyWith(
                      fontFamily: 'Outfit',
                      fontWeight: FontWeight.bold,
                      color: Color(0xff8b97a2),
                    ),
                    hintText: 'Dr. Ali...',
                    hintStyle: Theme
                        .of(context)
                        .textTheme
                        .bodyText1!
                        .copyWith(
                      fontFamily: 'Outfit',
                      fontWeight: FontWeight.bold,
                      color: Color(0xff8b97a2),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.white,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.white,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0x00000000),
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0x00000000),
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    filled: true,
                    fillColor: Colors.white,
                    contentPadding: EdgeInsetsDirectional.fromSTEB(
                        24, 20, 20, 20),
                    prefixIcon: Icon(
                      Icons.search_sharp,
                      color: Color(0xff8b97a2),
                      size: 24,
                    ),
                  ),
                  style: Theme
                      .of(context)
                      .textTheme
                      .bodyText1!
                      .copyWith(
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.normal,
                    color: defultColor,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      decoration:BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        color: Colors.teal.withOpacity(0.5),
                      ),
                      child: MaterialButton(
                        onPressed:(){},
                        child:Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.white,
                            ),
                            SizedBox(width: 2.0,),
                            Text(
                              "Rate",
                              style: TextStyle(
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),


                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 7.0,),
                    Container(
                      decoration:BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        color: Colors.teal.withOpacity(0.5),
                      ),
                      child: MaterialButton(
                        onPressed:(){},
                        child:Row(
                          children: [
                            Icon(
                              Icons.location_on,
                              color: Colors.white,
                            ),
                            SizedBox(width: 2.0,),
                            Text(
                              "Location",
                              style: TextStyle(
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),


                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 7.0,),
                    Container(
                      decoration:BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        color: Colors.teal.withOpacity(0.5),
                      ),
                      child: MaterialButton(
                        onPressed:(){},
                        child:Row(
                          children: [
                            Icon(
                              Icons.hotel_sharp,
                              color: Colors.white,
                            ),
                            SizedBox(width: 2.0,),
                            Text(
                              "onilne and clinic",
                              style: TextStyle(
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),


                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10.0,),
              ListView.separated(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) => buliderItems(context),
                separatorBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    height: 1.0,
                    width: double.infinity,
                    color: Colors.grey[300],
                  ),
                ),
                itemCount: 10,

              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buliderItems(context)=>Column(

    children: [

      Row(

        children: [
          Expanded(

            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(

                children: [

                  CircleAvatar(

                    radius: 40.0,

                    child: ClipOval(

                      child: Image(

                        image: AssetImage("assert/image/as.jpg",),

                        height: 90.0,

                        width: 90.0,

                        fit: BoxFit.cover,

                      ),

                    ),

                  ),
                  SizedBox(width: 10.0,),
                  Column(

                    crossAxisAlignment: CrossAxisAlignment.start,

                    children: [

                      Text("Ibrahim majed ",
                        style:
                        TextStyle(
                            fontSize: 17.0,
                            fontWeight: FontWeight.bold
                        ),),
                      SizedBox(height: 5.0,),
                     /* SmoothStarRating(
                        starCount: 5,
                        rating: 3.5,
                        size: 24.0,
                        color: Colors.teal,
                        borderColor: Colors.teal,

                      ),*/
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: "4.5",
                                  style: Theme.of(context).textTheme.subtitle2,
                                ),
                                TextSpan(
                                  text: "/5",
                                  style:Theme.of(context).textTheme.subtitle2,
                                ),
                              ],

                            ),

                          ),
                          Icon(Icons.star,color: defultColor,size: 16.0,),
                        ],
                      ),
                      SizedBox(height: 5.0,),
                      Text(
                        "Near you",//or far from you (orr)هون حيكون موقع طبيب
                        style: TextStyle(
                          color: Colors.teal.withOpacity(0.5),
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.bold,

                        ),

                      ),

                      /* Text(
                        "juun20/22/9 ",
                        style:
                        TextStyle(fontSize: 17.0,
                            color: Colors.grey[300]
                        ),),*/



                    ],

                  ),
                  Spacer(),
                  IconButton(
                    padding: EdgeInsets.zero,
                    onPressed: (){
                      Navigator.push(context,MaterialPageRoute(builder:(context)=>ProfileNutritionist()));
                    },
                    icon: Icon(
                      Icons.visibility,
                      color: Colors.teal.withOpacity(0.5),
                    ),
                  ),
                  IconButton(
                    padding: EdgeInsets.zero,
                    onPressed: (){},
                    icon: Icon(
                      Icons.add_box_sharp,
                      color: Colors.grey,//بصير لونو اذ كبس عليها وضاف دكتور teal
                    ),
                  ),

                ],

              ),
            ),

          ),



        ],

      ),



    ],

  );



}
