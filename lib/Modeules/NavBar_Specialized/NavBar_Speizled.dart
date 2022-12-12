import 'package:flutter/material.dart';
import 'package:hea_apps/Icons/icons.dart';
import 'package:hea_apps/Modeules/Accept_patient_by_Nutritionst/Accept_patient_by_Nutritions_screen.dart';
import 'package:hea_apps/Modeules/Chat_Nutritionst/Chat_Nutritionst_screen.dart';
import 'package:hea_apps/Modeules/Do_not_disturb/Do_not_disturb_screen.dart';
import 'package:hea_apps/Modeules/Edit_Nutritionist_profile/Edit_Nutritionst_profile_screen.dart';
import 'package:hea_apps/Modeules/Manage%20Diet%20plan/Patients%20_who_pay/Patients_who_pay_Screen.dart';
import 'package:hea_apps/Modeules/Manage_patient_bynutritionist/Manage_nutritionist_screen.dart';
import 'package:hea_apps/Modeules/Manage_picture_Nutritionist_by_patient/Manage_picture_Nutritionist_by_patien_screen.dart';
import 'package:hea_apps/Modeules/Setting_nutritionist/Setting_nutritioist_screen.dart';
import 'package:hea_apps/Modeules/profile_nutritionist/Profile_nutritionist_screen.dart';
import 'package:hea_apps/Modeules/view-booked-appointment/View_booked_appointment_screen.dart';
import 'package:hea_apps/Shared/Colors/Colors.dart';


class NavBar_Specialized extends StatelessWidget {

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
              accountName: Text("Omar majed"),
              accountEmail: Text("Ibarhim@gimal.com"),
              currentAccountPicture: CircleAvatar(
                child: ClipOval(
                  child: Image.asset("assert/image/as.jpg",width: 90,height: 90,fit: BoxFit.cover,),
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
              leading: Icon(Icons.person_add_alt_1_outlined,color:defultColor,),
              title: Text("patient requests",style: TextStyle(color: defultColor ,),),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Accept_Patient()));
              },
            ),
            ListTile(
              leading: Icon(Icons.manage_accounts_outlined,color: defultColor,),
              title: Text("manage patient",style: TextStyle(color: defultColor,)),
              onTap: ()=>{
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Manage_Nutritionist_by_patient_screen()))
              },
            ),
            ListTile(
              leading: Icon(IconlyBroken.chat,color: defultColor,),
              title: Text("Chat with patient",style: TextStyle(color: defultColor,)),
              onTap: ()=>{
                Navigator.push(context, MaterialPageRoute(builder: (context)=>MessChatNutritions()))
              },

            ),
            ListTile(
              leading: Icon(IconlyBroken.camera,color: defultColor,),
              title: Text("A picture of the patient",style: TextStyle(color: defultColor,)),
              onTap: ()=>{
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Manage_picture()))
              },

            ),
            Divider(),
            ListTile(
              leading: Icon(IconlyBroken.bookmark,color: defultColor,),
              title: Text("View book appointment",style: TextStyle(color: defultColor,)),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>view_booked_appoiemnts()));
              },
            ),
            ListTile(
              leading: Icon(IconlyBroken.calendar,color: defultColor,),
              title: Text("Manage diet plan",style: TextStyle(color: defultColor,)),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Patients_who_pay_Screen()));
              },
            ),
            Divider(color: Colors.grey,),
            ListTile(
              leading: Icon(IconlyBroken.profile ,color:defultColor),
              title: Text("profile",style: TextStyle(color: defultColor)),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder:(context)=>ProfileNutritionist()));
              },
            ),
            ListTile(
              leading: Icon(IconlyBroken.editSquare,color: defultColor),
              title: Text("Edit profile",style: TextStyle(color: defultColor)),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder:(context)=>EditProfileNutritionst()));
              },
            ),
            ListTile(
              leading: Icon(Icons.notifications_off_outlined,color: defultColor),
              title: Text("Do not disturb",style: TextStyle(color: defultColor)),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>multiSwitch()));
              },
            ),
            ListTile(
              leading: Icon(IconlyBroken.setting,color: defultColor),
              title: Text("Setting",style: TextStyle(color: defultColor)),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>SettingNutritionst()));
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
