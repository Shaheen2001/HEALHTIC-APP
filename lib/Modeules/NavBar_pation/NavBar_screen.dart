
import 'package:flutter/material.dart';
import 'package:hea_apps/Icons/icons.dart';
import 'package:hea_apps/Modeules/Book_appointment/Nutritionist_list/Nutritionist_list_screen.dart';
import 'package:hea_apps/Modeules/Chat_pation/Chat_patient_screen.dart';
import 'package:hea_apps/Modeules/Edit_profile_patien/Edit_Profile_patien_screen.dart';
import 'package:hea_apps/Modeules/Manage_patient_bynutritionist/Manage_nutritionist_screen.dart';
import 'package:hea_apps/Modeules/Manage_picture_patien/Manage_picture_patien_screen.dart';
import 'package:hea_apps/Modeules/Profile_patient/Profile_patient_screen.dart';
import 'package:hea_apps/Modeules/Setting_patien/Setting_patien_screen.dart';
import 'package:hea_apps/Modeules/Track_adiet_plan/Track_adiet_plan_screen.dart';
import 'package:hea_apps/Modeules/View%20diet%20plan/View_diet_plan_screen.dart';
import 'package:hea_apps/Modeules/online_payment/Nutritionist_pay/Nutritionist_pay_screen.dart';
import 'package:hea_apps/Shared/Colors/Colors.dart';

class NavBarPation extends StatelessWidget {

  List<ListTile>a=[];

  @override
  Widget build(BuildContext context) {
    return Container(
     // color: Colors.black,
      child: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
                accountName: Text("Imani Majed"),
                accountEmail: Text("Imani21@gmail.com"),
                currentAccountPicture: CircleAvatar(
                child: ClipOval(
                  child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTIjBSz-d0hcb98xSwwKHR-766HqSPUce2LlA&usqp=CAU",width: 90,height: 90,fit: BoxFit.cover,),
                ),

                ),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assert/image/Wood-3-1024x576.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            ),
            ListTile(
              leading: Icon(Icons.manage_accounts_outlined,color:defultColor,),
              title: Text("Manage Nutritionist",style: TextStyle(color: defultColor ,),),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Manage_Nutritionist_by_patient_screen()));
              },
            ),
            ListTile(
              leading: Icon(IconlyBroken.chat,color: defultColor,),
              title: Text("Chat with patient ",style: TextStyle(color: defultColor,)),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder:(context)=>Chat_patient_screen()));
              },
            ),
            ListTile(
              leading: Icon(IconlyBroken.camera,color: defultColor,),
              title: Text("Manage picture",style: TextStyle(color: defultColor,)),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Manage_picturePatien()));
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(IconlyBroken.calendar,color: defultColor,),
              title: Text("Book appointment",style: TextStyle(color: defultColor,)),
              onTap: (){
                Navigator.push(context,MaterialPageRoute(builder: (context)=>Nutritionist_list_you()));
              },
            ),
            ListTile(
              leading: Icon(IconlyBroken.bookmark,color: defultColor,),
              title: Text("Track diet plan",style: TextStyle(color: defultColor,)),
              onTap: (){
                Navigator.push(context,MaterialPageRoute(builder: (context)=>View_diet_plan()));
              },
            ),
            ListTile(
              leading: Icon(Icons.track_changes,color: defultColor,),
              title: Text("View diet plan",style: TextStyle(color: defultColor,)),
              onTap: (){
                Navigator.push(context,MaterialPageRoute(builder: (context)=>Track_diet_plan()));
              },
            ),
            Divider(color: Colors.grey,),
            ListTile(
              leading: Icon(IconlyBroken.profile,color: defultColor,),
              title: Text("Profile",style: TextStyle(color: defultColor,)),
              onTap: (){
                Navigator.push(context,MaterialPageRoute(builder: (context)=>ProfilePatient()));
              },
            ),
            ListTile(
              leading: Icon(IconlyBroken.editSquare ,color:defultColor),
              title: Text("Edit profile",style: TextStyle(color: defultColor)),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder:(context)=>EditProfilePatien()));
              },
            ),
            ListTile(
              leading: Icon(Icons.payment_outlined,color: defultColor),
              title: Text("online payment",style: TextStyle(color: defultColor)),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder:(context)=>Nutritionist_pay_screen()));
              },
            ),
            ListTile(
              leading: Icon(IconlyBroken.setting,color: defultColor),
              title: Text("Setting",style: TextStyle(color: defultColor)),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder:(context)=>SettingPatien()));
              },
            ),
            ListTile(
              leading: Icon(Icons.exit_to_app,color: defultColor),
              title: Text("Exit",style: TextStyle(color: defultColor)),
              onTap: ()=>null,
            ),



          ],
        ),
      ),
    );
  }
}
