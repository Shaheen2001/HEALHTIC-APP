
import 'package:flutter/material.dart';
import 'package:hea_apps/Shared/Colors/Colors.dart';

class ViewCV_Screen extends StatelessWidget {
  const ViewCV_Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Center(
            child: Column(
              children: [
                Image(image: AssetImage("assert/image/cv.png"),),
                SizedBox(
                  height: 15.0,
                ),
                Align(
                  alignment: AlignmentDirectional.centerStart,
                  child: Container(
                    width: 100.0,
                    child: TextButton(
                      onPressed: (){
                        Navigator.pop(context);
                      },
                      child: Row(
                        children: [
                          Icon(Icons.arrow_back ,color: defultColor,),
                          SizedBox(width: 5.0,),
                          Text(
                            "back",
                            style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.w400,
                              color: defultColor,
                            ),
                          ),

                        ],
                      ),

                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
