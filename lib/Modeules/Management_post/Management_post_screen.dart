import 'package:flutter/material.dart';
import 'package:hea_apps/Shared/Colors/Colors.dart';


class ManagementPost extends StatelessWidget {

  String? imageee;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(builder: (context)=>IconButton(onPressed: (){Navigator.pop(context);},icon: Icon(Icons.arrow_back,color: defultColor),)),

        backgroundColor:Colors.white ,
        elevation: 0.0,
        title: Text("ManagementPost",style: TextStyle(color: defultColor,fontStyle: FontStyle.italic),),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            ListView.separated(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (context, index) => buliderItems(context),
              itemCount: 10,
              separatorBuilder: (BuildContext context, int index) =>SizedBox(height: 10.0,),
            ),

          ],
        ),
      ),
    );
  }
}



Widget buliderItems(context )=> Card(
  clipBehavior: Clip.antiAliasWithSaveLayer,
  elevation: 8.0,
  margin: EdgeInsets.symmetric(
    horizontal: 8.0,
  ),
  child: Padding(
    padding: const EdgeInsets.all(10.0),
    child: Column(
      // crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            CircleAvatar(
              backgroundImage:NetworkImage("https://img.freepik.com/free-vector/illustration-user-avatar-icon_53876-5907.jpg?w=740&t=st=1666537051~exp=1666537651~hmac=e6535f48409fec3e96d8f2ed0985f5ea33611d5b1d2151dab1f92faf06435526") ,
              radius: 35.0,
            ),
            SizedBox(width: 6.0,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text("Ibarhim majed",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16.0,height: 1.0),),
                    SizedBox(width: 5.0,),
                    Icon(Icons.check_circle,color: Colors.blue,size: 19.0,),
                  ],
                ),
                Text("junyuu 21, 2020 at  11:00 pm  ",style: TextStyle(color: Colors.grey,fontSize: 13.0),),
              ],
            ),


          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical:15.0),
          child: Container(
            width: double.infinity,
            color: Colors.grey[300],
            height: 1.0,

          ),
        ),
        Text("With Odoo Documents, you can easily share, send, categorize, and archive scanned documents. You can also generate business documents such as vendor bills, tasks, and product sheets for manufacturing.",
          style: Theme.of(context).textTheme.subtitle1!.copyWith(height: 1.2),
        ),
        //if(image != null)
        Container(
          width: double.infinity,
          height: 150.0,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(7.0),
            image: DecorationImage(
              image: NetworkImage("https://img.freepik.com/free-vector/smart-healthcare-technology-template-vector_53876-110859.jpg?w=1060&t=st=1666539268~exp=1666539868~hmac=178d445cd8cd9965ebeb15c9676c321f13ecea698d86c3a13964dec3a8fdbd4f",),
              fit: BoxFit.cover,
            ),
          ),
        ),

        Padding(
          padding: const EdgeInsets.symmetric(vertical:15.0),
          child: Container(
            width: double.infinity,
            color: Colors.grey[300],
            height: 1.0,

          ),
        ),
        Row(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.grey[300],
                ),
                child: MaterialButton(
                  splashColor: defultColor,
                  onPressed: (){

                  },
                  child:Text("Accept",style: TextStyle(fontStyle: FontStyle.italic,color:Colors.black ),) ,

                ),
              ),
            ),
            // Spacer(),
            SizedBox(width: 10.0,),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.grey[300],
                ),
                child: MaterialButton(
                  splashColor: defultColor,
                  onPressed: (){

                  },
                  child:Text("Reject",style: TextStyle(fontStyle: FontStyle.italic,color:Colors.black ),) ,

                ),
              ),
            ),
          ],
        ),
      ],
    ),
  ),
);