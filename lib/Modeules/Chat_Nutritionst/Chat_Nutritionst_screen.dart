import 'package:flutter/material.dart';
import 'package:hea_apps/Modeules/Chat_Nutritionst/Chat_Nutritionst_detailess/Chat_Nutritions_detailess_screen.dart';
import 'package:hea_apps/Shared/Colors/Colors.dart';


class MessChatNutritions extends StatelessWidget {

  var controlleChat=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: Builder(builder: (context)=>IconButton(onPressed: (){Navigator.pop(context);},icon: Icon(Icons.arrow_back,color: defultColor),)),
        backgroundColor: Colors.white,
        //titleSpacing: 20.0,
        elevation: 0.0,
        title: Row(
          children: [
            CircleAvatar(

              radius: 26.0,

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
            Text(
              "Chat" ,
              style: TextStyle(
                  color: defultColor,
                  fontStyle: FontStyle.normal,

                  fontSize: 25.0),),
          ],
        ),

      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              Stack(
                alignment: AlignmentDirectional.centerEnd,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
                    child: TextFormField(
                      controller: controlleChat,
                      obscureText: false,
                      decoration: InputDecoration(
                        labelText: 'Search',
                        labelStyle: Theme
                            .of(context)
                            .textTheme
                            .bodyText1!
                            .copyWith(
                          fontFamily: 'Outfit',
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
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
                        fillColor: Colors.grey[300],
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

                ],
              ),


              SizedBox(height: 20.0,),
              ListView.separated(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) => Chat(context),
                  separatorBuilder: (context,index)=> Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      height: 1.0,
                      width: double.infinity,
                      color: Colors.grey[300],

                    ),
                  ),
                  itemCount: 8,
              ),

            ],
          ),
        ),
      ),
    );
  }

  Widget Story()=> Container(
    width: 60.0,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          alignment: Alignment.bottomRight,
          children: [
            CircleAvatar(
              radius: 30.0,
              backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUuKuKA7sKsoTJp5bFRCtjg9qCsAte-H9ddQ&usqp=CAU"),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(end: 6.0,bottom: 6.0),
              child: CircleAvatar(
                radius: 6.0,
                backgroundColor: Colors.green,
              ),
            ),
          ],
        ),
        SizedBox(height: 10.0,),
        Text("Ibrahim majed omar",maxLines: 2,overflow: TextOverflow.ellipsis,),

      ],),
  );
  Widget Chat(context)=> InkWell(
    onTap: (){
      Navigator.push(context,MaterialPageRoute(builder:(context)=>ChatdetailesNutritionst()) );
    },
    child: Row(
      children: [
        Stack(
          alignment: Alignment.bottomRight,
          children: [
            CircleAvatar(

              radius: 28.0,

              child: ClipOval(

                child: Image(

                  image: AssetImage("assert/image/as.jpg",),

                  height: 90.0,

                  width: 90.0,

                  fit: BoxFit.cover,

                ),

              ),

            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(end: 5.0,bottom: 1.0),
              child: CircleAvatar(
                radius: 6.0,
                backgroundColor: Colors.green,
              ),
            ),
          ],
        ),
        SizedBox(width: 15.0,),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Ibrahim majed omar ",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.normal,
                  fontSize: 17.0,
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              SizedBox(height: 7.0,),
              Row(
                children: [
                  Expanded(child:
                  Text(
                    "My name is Ibrahim majed ",
                    style:
                    TextStyle(
                        color: Colors.black.withOpacity(.6),
                      fontStyle: FontStyle.normal,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  )),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Container(
                      height: 7.0,
                      width: 7.0,
                      decoration: BoxDecoration(
                        color: defultColor,
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                  Text("20:00  PM ")
                ],
              ),
            ],
          ),
        ),
        SizedBox(height: 15.0,),
      ],
    ),
  ) ;

}