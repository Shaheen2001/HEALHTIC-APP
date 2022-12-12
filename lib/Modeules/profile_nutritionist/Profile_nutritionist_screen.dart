
import 'package:flutter/material.dart';
import 'package:hea_apps/Modeules/Edit_Nutritionist_profile/Edit_Nutritionst_profile_screen.dart';
import 'package:hea_apps/Modeules/Management_profilr/Informa_profile/View_CV/CV.dart';
import 'package:hea_apps/Modeules/View_Rate_Nutritions/view_rate_nutritionist_screen.dart';
import 'package:hea_apps/Modeules/appointments_profile_nutritionst/Appoinyments_profile_nutritionst_screen.dart';
import 'package:hea_apps/Shared/Colors/Colors.dart';


class ProfileNutritionist extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        leading: Builder(builder: (context)=>IconButton(onPressed: (){Navigator.pop(context);},icon: Icon(Icons.arrow_back,color: defultColor),)),

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
                'D.r Ibrahim majed omar ',
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
                          Text(
                            'rating',
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
                  Expanded(
                    child: InkWell(
                      child: Column(
                        children: [
                          Text(
                            'Clinic',
                            style: Theme.of(context).textTheme.subtitle2,
                          ),
                          Text(
                            'Location',
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
                            'view cv ',
                            style: Theme.of(context).textTheme.caption!.copyWith(color:defultColor,fontSize: 15.0),
                          ),
                        ],
                      ),
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder:(context)=>ViewCV_Screen()));

                      },
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      child: Column(
                        children: [
                          Text(
                            'view rating',
                            style: Theme.of(context).textTheme.caption!.copyWith(color:defultColor,fontSize: 15.0),
                          ),
                        ],
                      ),
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder:(context)=>ViewRateNutritionist()));
                      },
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      child: Column(
                        children: [
                          Text(
                            'Appointments ',
                            style: Theme.of(context).textTheme.caption!.copyWith(color:defultColor,fontSize: 15.0),
                          ),
                        ],
                      ),
                      onTap: () {
                        OpenRatingDialog(context);
                      },
                    ),
                  ),

                ],
              ),
            ),
            SizedBox(height: 10.0,),
            Row(
              children: [
                Expanded(
                  child: OutlinedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>EditProfileNutritionst()));
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
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>EditProfileNutritionst()));
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

  OpenRatingDialog(context){

    return showDialog(context: context, builder:(context){
      return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Dialog(
          child: Appointments_profile_nutritions(),
        ),
      );

    });

  }



}


