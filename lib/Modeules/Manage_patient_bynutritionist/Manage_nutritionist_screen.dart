

import 'package:flutter/material.dart';
import 'package:hea_apps/Modeules/NavBar_pation/NavBar_screen.dart';
import 'package:hea_apps/Modeules/Profile_patient/Profile_patient_screen.dart';
import 'package:hea_apps/Shared/Colors/Colors.dart';
import 'package:smooth_star_rating_null_safety/smooth_star_rating_null_safety.dart';

class Manage_Nutritionist_by_patient_screen extends StatelessWidget {
  var searchFieldController = TextEditingController();
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer:NavBarPation() ,
        appBar: AppBar(
          leading: Builder(builder: (context)=>IconButton(onPressed: (){Navigator.pop(context);},icon: Icon(Icons.arrow_back,color: defultColor),)),
          backgroundColor: Colors.white,
          elevation: 0.0,
          title:  Text(
            "Manage patient",
            style: TextStyle(color: defultColor),),

        ),

        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [

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

      Container(
        height: 110.0,
        child: Row(

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
                    Container(
                      width:300,
                      child: Column(

                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [

                          Padding(
                            padding: const EdgeInsetsDirectional.only(top: 21.0),
                            child: Text("Ibrahim majed ",
                              style:
                              TextStyle(
                                  fontSize: 17.0,
                                  fontWeight: FontWeight.bold,

                              ),

                            maxLines: 1,
                             // overflow:TextOverflow.ellipsis,
                            ),
                          ),
                          SizedBox(height: 6.0,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
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

                          SizedBox(height: 10.0,),
                       //  SizedBox(height: 5.0,),
                          Expanded(
                            child: Row(
                              children: [
                                Container(
                                  width: 80.0,
                                  child: IconButton(
                                    padding: EdgeInsets.zero,
                                    onPressed: (){
                                      Navigator.push(context,MaterialPageRoute(builder:(context)=>ProfilePatient()));
                                    },
                                    icon: Text("view profile",
                                    style: TextStyle(
                                       color: defultColor,
                                    ),

                                    ),
                                  ),
                                ),
                                Container(
                                  width: 60.0,
                                  child: IconButton(
                                    padding: EdgeInsets.zero,
                                    onPressed: (){},
                                    icon: Text("delete ",
                                      style: TextStyle(
                                        color: defultColor,
                                      ),

                                    ),
                                  ),
                                ),
                                Container(
                                  width: 40.0,
                                  child: IconButton(
                                    padding: EdgeInsets.zero,
                                    onPressed: (){},
                                    icon: Text("block",
                                      style: TextStyle(
                                        color: defultColor,
                                      ),

                                    ),
                                  ),
                                ),
                              ],
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
                    ),
                   /* Spacer(),
                    IconButton(
                      padding: EdgeInsets.zero,
                      onPressed: (){},
                      icon: Icon(
                        Icons.visibility,
                        color: Colors.teal.withOpacity(0.5),
                      ),
                    ),
                    IconButton(
                      padding: EdgeInsets.zero,
                      onPressed: (){},
                      icon: Icon(
                        Icons.delete_forever_outlined,
                        color: Colors.red.withOpacity(0.5), //بصير لونو اذ كبس عليها وضاف دكتور teal
                      ),
                    ),
*/
                  ],

                ),
              ),

            ),



          ],

        ),
      ),



    ],

  );
}
