
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hea_apps/Icons/icons.dart';
import 'package:hea_apps/Layout/Cuibt_Layout_health_pation/cubit.dart';
import 'package:hea_apps/Layout/Cuibt_Layout_health_pation/states_pation.dart';
import 'package:hea_apps/Modeules/Creat_new_post/Creat_new_post_screen.dart';
import 'package:hea_apps/Modeules/NavBar_Specialized/NavBar_Speizled.dart';
import 'package:hea_apps/Shared/Colors/Colors.dart';


class healthLayout_Specialized extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) =>LayoutHealthPationCubit(),
      child: BlocConsumer<LayoutHealthPationCubit,LayoutHealthPationState>(
        listener: (BuildContext context, state) {  },
        builder: (BuildContext context, Object? state) {
          var cubit=LayoutHealthPationCubit.get(context).ImageProfil;
          var CubitE=LayoutHealthPationCubit.get(context);
          return  Scaffold(
            //كيف اغير لونها
            drawer:NavBar_Specialized() ,
            //backgroundColor: Colors.teal.shade200,
            appBar: AppBar(
              leading: Builder(builder: (context)=>IconButton(onPressed: (){Scaffold.of(context).openDrawer();},icon: Icon(Icons.menu,color: defultColor,),)),
              backgroundColor: Colors.white,
              elevation: 0.0,
              title:  Text("Home Specialized",style: TextStyle(color: defultColor, fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w600,),),
              actions: [
               /* IconButton(
                    onPressed: (){},
                    icon:Icon(IconlyBroken.search,color: defultColor,)
                ),
                IconButton(
                    onPressed: (){},
                    icon:Icon(Icons.dark_mode,color: defultColor,)
                ),*/
              ],
            ),
            body: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: double.infinity,
                      child: Card(
                        clipBehavior:Clip.antiAliasWithSaveLayer ,
                        //margin: EdgeInsets.all(8.0),
                        elevation: 8.0,
                        child:   Column(
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  child: Row(
                                    children: [
                                      CircleAvatar(
                                        radius: 30.0,
                                        backgroundImage: NetworkImage("https://img.freepik.com/free-vector/illustration-user-avatar-icon_53876-5907.jpg?w=740&t=st=1666537051~exp=1666537651~hmac=e6535f48409fec3e96d8f2ed0985f5ea33611d5b1d2151dab1f92faf06435526"),
                                      ),
                                      SizedBox(width: 5.0,),
                                      Expanded(
                                          child: InkWell(
                                              onTap: (){
                                            Navigator.push(context, MaterialPageRoute(builder: (context)=>CreatNewPost()));
                                              },
                                              child:
                                              Text("Create post",
                                                style: Theme.of(context).textTheme.caption!.copyWith(color: Colors.grey,fontSize: 14.0),))),
                                    ],
                                  ),
                                ),
                                // Spacer(),

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
                            Row(
                              children: [
                              /*  Expanded(
                                  child: InkWell(
                                    onTap: ()=> CubitE.getImageProfile(),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Icon(IconlyBroken.image,size: 20.0,color: Colors.grey,),
                                        SizedBox(width: 5.0,),
                                        Text("Image",style: Theme.of(context).textTheme.caption!.copyWith(fontSize:16.0 ),),
                                      ],
                                    ),
                                  ),
                                ),*/
                                Expanded(
                                  child: InkWell(
                                    onTap: ()=>null,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Icon(IconlyBroken.send,size: 20.0,color: Colors.grey,),
                                        SizedBox(width: 5.0,),
                                        Text("Post",style: Theme.of(context).textTheme.caption!.copyWith(fontSize:16.0 ),),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),


                          ],
                        ),
                      ),
                    ),
                  ),
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

        },

      ),
    );
  }
}





Widget buliderItems(context)=> Card(
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

                  ],
                ),
                Text("junyuu 21, 2020 at  11:00 pm  ",style: TextStyle(color: Colors.grey,fontSize: 13.0),),
              ],
            ),
            Spacer(),
            IconButton(
              onPressed: (){},
              icon: Icon(Icons.more_horiz_outlined,size: 18.0,),
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
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 5.0),
          child: Container(
            width: double.infinity,
            child: Wrap(
              children: [
                Container(
                  height: 20.0,
                  child: MaterialButton(
                      minWidth: 1.0,
                      padding: EdgeInsets.zero,
                      onPressed:(){},
                      child:Text(
                        "#Point",
                        style: Theme.of(context).textTheme.caption!.copyWith(color: Colors.blue),
                      )  ),
                ),
                Container(
                  height: 20.0,
                  child: MaterialButton(
                      minWidth: 1.0,
                      padding: EdgeInsets.zero,
                      onPressed:(){},
                      child:Text(
                        "#Point",
                        style: Theme.of(context).textTheme.caption!.copyWith(color: Colors.blue),
                      )  ),
                ),
                Container(
                  height: 20.0,
                  child: MaterialButton(
                      minWidth: 1.0,
                      padding: EdgeInsets.zero,
                      onPressed:(){},
                      child:Text(
                        "#Point",
                        style: Theme.of(context).textTheme.caption!.copyWith(color: Colors.blue),
                      )  ),
                ),
                Container(
                  height: 20.0,
                  child: MaterialButton(
                      minWidth: 1.0,
                      padding: EdgeInsets.zero,
                      onPressed:(){},
                      child:Text(
                        "#Point",
                        style: Theme.of(context).textTheme.caption!.copyWith(color: Colors.blue),
                      )  ),
                ),
                Container(
                  height: 20.0,
                  child: MaterialButton(
                      minWidth: 1.0,
                      padding: EdgeInsets.zero,
                      onPressed:(){},
                      child:Text(
                        "#Point",
                        style: Theme.of(context).textTheme.caption!.copyWith(color: Colors.blue),
                      )  ),
                ),
                Container(
                  height: 20.0,
                  child: MaterialButton(
                      minWidth: 1.0,
                      padding: EdgeInsets.zero,
                      onPressed:(){},
                      child:Text(
                        "#Point",
                        style: Theme.of(context).textTheme.caption!.copyWith(color: Colors.blue),
                      )  ),
                ),
                Container(
                  height: 20.0,
                  child: MaterialButton(
                      minWidth: 1.0,
                      padding: EdgeInsets.zero,
                      onPressed:(){},
                      child:Text(
                        "#Point",
                        style: Theme.of(context).textTheme.caption!.copyWith(color: Colors.blue),
                      )  ),
                ),
                Container(
                  height: 20.0,
                  child: MaterialButton(
                      minWidth: 1.0,
                      padding: EdgeInsets.zero,
                      onPressed:(){},
                      child:Text(
                        "#Point",
                        style: Theme.of(context).textTheme.caption!.copyWith(color: Colors.blue),
                      )  ),
                ),
                Container(
                  height: 20.0,
                  child: MaterialButton(
                      minWidth: 1.0,
                      padding: EdgeInsets.zero,
                      onPressed:(){},
                      child:Text(
                        "#Point",
                        style: Theme.of(context).textTheme.caption!.copyWith(color: Colors.blue),
                      )  ),
                ),
                Container(
                  height: 20.0,
                  child: MaterialButton(
                      minWidth: 1.0,
                      padding: EdgeInsets.zero,
                      onPressed:(){},
                      child:Text(
                        "#Point",
                        style: Theme.of(context).textTheme.caption!.copyWith(color: Colors.blue),
                      )  ),
                ),
                Container(
                  height: 20.0,
                  child: MaterialButton(
                      minWidth: 1.0,
                      padding: EdgeInsets.zero,
                      onPressed:(){},
                      child:Text(
                        "#Point",
                        style: Theme.of(context).textTheme.caption!.copyWith(color: Colors.blue),
                      )  ),
                ),

              ],
            ),
          ),
        ),
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
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          child: Row(
            children: [
              InkWell(
                onTap: ()=>null,
                child: Row(
                  children: [
                    Icon(IconlyBroken.heart,color: Colors.grey,size: 20.0,),
                    SizedBox(width: 5.0,),
                    Text("120"),
                  ],
                ),
              ),
              Spacer(),
              InkWell(
                onTap: ()=>null,
                child: Row(
                  children: [
                    Icon(IconlyBroken.chat,color: Colors.grey,size: 20.0,),
                    SizedBox(width: 5.0,),
                    Text("120 comment",style: Theme.of(context).textTheme.caption!.copyWith(fontSize: 14.0),),
                  ],
                ),
              ),
            ],
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
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 30.0,
                    backgroundImage: NetworkImage("https://img.freepik.com/free-vector/illustration-user-avatar-icon_53876-5907.jpg?w=740&t=st=1666537051~exp=1666537651~hmac=e6535f48409fec3e96d8f2ed0985f5ea33611d5b1d2151dab1f92faf06435526"),
                  ),
                  SizedBox(width: 5.0,),
                  Expanded(child: InkWell(onTap: (){},child: Text("writte communt",style: Theme.of(context).textTheme.caption!.copyWith(color: Colors.grey,fontSize: 14.0),))),
                ],
              ),
            ),
            // Spacer(),
            InkWell(
              onTap: ()=>null,
              child: Row(
                children: [
                  Icon(IconlyBroken.heart,size: 20.0,color: Colors.grey,),
                  SizedBox(width: 5.0,),
                  Text("Like",style: Theme.of(context).textTheme.caption!.copyWith(fontSize:16.0 ),),
                ],
              ),
            )
          ],
        ),
      ],
    ),
  ),
);
