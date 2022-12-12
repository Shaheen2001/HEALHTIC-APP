
import 'package:flutter/material.dart';
import 'package:hea_apps/Modeules/Rate_nutritionist/Rating_Dialog/Rating_Nurtion_Screen_dialoge.dart';
import 'package:hea_apps/Shared/Colors/Colors.dart';


class Chatdetailes extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(builder: (context)=>IconButton(onPressed: (){Navigator.pop(context);},icon: Icon(Icons.arrow_back,color: defultColor),)),
        backgroundColor: Colors.white,
        actions: [
          MaterialButton(
            padding: EdgeInsets.zero,
            minWidth: 1.0,
            onPressed: (){
              OpenRatingDialog(context);
            },
            child: Row(
              children: [
                Icon(Icons.star,color: defultColor,size: 17.0,),
                Text("Rating",style: TextStyle(color: defultColor),),
              ],
            ),
          ),
          SizedBox(width: 7.0,),
          MaterialButton(
            padding: EdgeInsets.zero,
            minWidth: 1.0,
            onPressed: (){
            },
            child: Row(
              children: [
                Icon(Icons.add,color: defultColor,size: 17.0,),
                Text("Pay list",style: TextStyle(color: defultColor),),
              ],
            ),
          ),

        ],
        elevation: 0.0,
        titleSpacing: 0.0,
        title: Row(
          children: [
            CircleAvatar(

              radius: 25.0,

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
            Expanded(
              child: Text(
                "Ibrahim majed ",
                style:
                TextStyle(
                    fontSize: 17.0,
                    fontWeight: FontWeight.bold,
                  color: defultColor,
                ),),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Align(
              alignment: AlignmentDirectional.centerStart,
              child: Container(

                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadiusDirectional.only(
                    bottomEnd: Radius.circular(10.0),
                    topStart: Radius.circular(10.0),
                    topEnd: Radius.circular(10.0),
                  ),

                ),
                padding: EdgeInsets.symmetric(
                  vertical: 5.0,
                  horizontal: 10.0,
                ),
                child: Text(
                  "Hello world"
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional.centerEnd,
              child: Container(

                decoration: BoxDecoration(
                  color: defultColor,
                  borderRadius: BorderRadiusDirectional.only(
                    bottomStart: Radius.circular(10.0),
                    topStart: Radius.circular(10.0),
                    topEnd: Radius.circular(10.0),
                  ),

                ),
                padding: EdgeInsets.symmetric(
                  vertical: 5.0,
                  horizontal: 10.0,
                ),
                child: Text(
                    "Hello world"
                ),
              ),
            ),
            Spacer(),
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey[300]!,
                  width: 1.0,
                ),
                borderRadius: BorderRadius.circular(15.0),
              ),
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: Row(
                children: [
                  Expanded(
                      child:TextFormField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "tupr your message here...",
                    ),
                  )
                  ),
                  Container(
                  //  height: 10.0,
                  //  color: defultColor,
                    child: MaterialButton(
                        onPressed:(){},
                      minWidth: 1.0,
                      child: Text(
                        "Send",
                        style: TextStyle(
                          color: defultColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0,
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
    );
  }

  OpenRatingDialog(context){

    return showDialog(context: context, builder:(context){
      return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Dialog(
          child: Rating_Nurtions(),
        ),
      );

    });

  }



}
/*Icon(
IconlyBroken.send,
size: 16.0,
color: Colors.white,
),
*/
