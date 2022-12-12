

import 'package:flutter/material.dart';
import 'package:hea_apps/Icons/icons.dart';
import 'package:hea_apps/Shared/Colors/Colors.dart';

class CreatNewPost extends StatelessWidget {

  var textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        leading: Builder(builder: (context)=>IconButton(onPressed: (){Navigator.pop(context);},icon: Icon(Icons.arrow_back,color: defultColor),)),
        title: Text("CreatPost ",style: TextStyle(color: defultColor,fontStyle: FontStyle.italic),),
        backgroundColor: Colors.white,
        elevation: 0.0,
        actions: [
          TextButton(
              onPressed: (){},
              child: Text(
                  "Post",
                style: TextStyle(color: defultColor,fontSize: 16.0,),
              ),
              ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            SizedBox(height: 10.0,),
            Row(
              children: [
                CircleAvatar(
                  radius: 25.0,
                  backgroundImage: NetworkImage(
                    'https://image.freepik.com/free-photo/skeptical-woman-has-unsure-questioned-expression-points-fingers-sideways_273609-40770.jpg',
                  ),
                ),
                SizedBox(
                  width: 15.0,
                ),
                Expanded(
                  child: Text(
                    'Abdullah Mansour',
                    style: TextStyle(
                      height: 1.4,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            Expanded(
              child: TextFormField(
               // maxLines: 6,
                controller: textController,
                decoration: InputDecoration(
                  hintText: 'what is on your mind ...',
                  border: InputBorder.none,

                ),
              ),
            ),
            Stack(
              alignment: AlignmentDirectional.topEnd,
              children: [
                Container(
                  height: 140.0,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4.0,),
                    image: DecorationImage(
                      image: NetworkImage(
                        'https://image.freepik.com/free-photo/skeptical-woman-has-unsure-questioned-expression-points-fingers-sideways_273609-40770.jpg',
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                IconButton(

                  icon: CircleAvatar(
                    backgroundColor: defultColor,
                    radius: 20.0,
                    child: Icon(
                      Icons.close,
                      size: 16.0,
                      color: Colors.white,
                    ),
                  ),
                  onPressed: () {

                  },
                ),
              ],
            ),
            SizedBox(
              height: 10.0,
            ),
            Row(
              children: [
                Expanded(
                  child: TextButton(
                    onPressed: () {

                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          IconlyBroken.image,
                          color:defultColor ,
                        ),
                        SizedBox(
                          width: 5.0,
                        ),
                        Text(
                          'add photo',
                          style: TextStyle(
                            color: defultColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      '# tags',
                      style: TextStyle(
                        color: defultColor,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

