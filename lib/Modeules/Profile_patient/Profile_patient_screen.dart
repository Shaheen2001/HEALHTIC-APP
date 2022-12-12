
import 'package:flutter/material.dart';
import 'package:hea_apps/Modeules/Edit_profile_patien/Edit_Profile_patien_screen.dart';
import 'package:hea_apps/Shared/Colors/Colors.dart';

class  ProfilePatient extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        leading: Builder(builder: (context)=>IconButton(onPressed: (){Navigator.pop(context);},icon: Icon(Icons.arrow_back,color: defultColor),)),
        title: Text("Profile ",style: TextStyle(color: defultColor,fontStyle: FontStyle.italic),),
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      body:  Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
            Align(
              alignment: AlignmentDirectional.center,
              child: Text(
                'Ibrahim majed omar ',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            SizedBox(height: 7.0,),
            Align(
              alignment: AlignmentDirectional.center,
              child: Text(
                '079605503',
                style: Theme.of(context).textTheme.caption!.copyWith(color: Colors.grey[600],fontSize: 15.0),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 20.0,
              ),
              child: Row(
                children: [
                  Expanded(
                    child: InkWell(
                      child: Column(
                        children: [
                          Text(
                            '30',
                            style: Theme.of(context).textTheme.subtitle2,
                          ),
                          Text(
                            'Age',
                            style: Theme.of(context).textTheme.caption!.copyWith(color:defultColor,fontSize: 15.0),
                          ),
                        ],
                      ),
                      onTap: () {},
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      child: Column(
                        children: [
                          Text(
                            '265',
                            style: Theme.of(context).textTheme.subtitle2,
                          ),
                          Text(
                            'weight',
                            style: Theme.of(context).textTheme.caption!.copyWith(color:defultColor,fontSize: 15.0),
                          ),
                        ],
                      ),
                      onTap: () {},
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      child: Column(
                        children: [
                          Text(
                            '140',
                            style: Theme.of(context).textTheme.subtitle2,
                          ),
                          Text(
                            'height',
                            style: Theme.of(context).textTheme.caption!.copyWith(color:defultColor,fontSize: 15.0),
                          ),
                        ],
                      ),
                      onTap: () {},
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      child: Column(
                        children: [
                          Text(
                            'Male',
                            style: Theme.of(context).textTheme.subtitle2,
                          ),
                          Text(
                            'ganter',
                            style: Theme.of(context).textTheme.caption!.copyWith(color:defultColor,fontSize: 15.0),
                          ),
                        ],
                      ),
                      onTap: () {},
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10.0,),
            Container(
              width: 240,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("diseases",style: TextStyle(color: defultColor,fontSize: 15.0),),
                  SizedBox(height: 7.0,),
                  Text("Pressure, diabetes, obesity, low blood pressure and anemia sadads",
                    style: TextStyle(color: Colors.grey[600],fontSize: 15.0),),
                ],
              ),
            ),
            SizedBox(height: 10.0,),
            Row(
              children: [
                Expanded(
                  child: OutlinedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>EditProfilePatien()));
                    },
                    child: Text(
                      'Edit profile',
                      style: TextStyle(
                        color: defultColor,
                      ),
                    ),
                  ),
                ),
                OutlinedButton(

                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>EditProfilePatien()));
                  },
                  child:Icon(Icons.edit,color: defultColor.withOpacity(0.8),size: 28.0,),
                ),


              ],
            ),
          ],
        ),
      ),
    );


}
}


