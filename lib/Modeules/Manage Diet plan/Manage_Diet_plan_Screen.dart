import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:hea_apps/Shared/Colors/Colors.dart';


class Manage_diet_plans extends StatelessWidget {
  // var DataCell = TextEditingController();


  @override
  Widget build(BuildContext context) {
    // main axis alignment : start
    // cross axis alignment : center
    return Scaffold(
      appBar: AppBar(
        leading: Builder(builder: (context)=>IconButton(onPressed: (){Navigator.pop(context);},icon: Icon(Icons.arrow_back,color: defultColor,),)),
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Text("Manage diet plan", style: TextStyle(color: Colors.teal),),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(IconlyBroken.send, color: Colors.teal,)
          ),

        ],
      ),
      body: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          physics: BouncingScrollPhysics(),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            physics: BouncingScrollPhysics(),
            child: Column(

              children: [
                DataTable(
                    columns: [

                      DataColumn(
                          label: Text('FOOD',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w800,
                                color: Colors.teal
                            ),
                          )


                      ),
                      DataColumn(
                          label: Text('SER-SIZE',
                            style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w800,
                                color: Colors.teal
                            ),)
                      ),
                      DataColumn(
                          label: Text('KCAL',
                            style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w800,
                                color: Colors.teal
                            ),)
                      ),
                      DataColumn(
                          label: Text('',
                            style: TextStyle(
                                fontSize: 2,
                                fontWeight: FontWeight.w800,
                                color: Colors.teal
                            ),
                          )


                      ),
                    ],
                    rows: [
                      DataRow(cells: [
                        DataCell(

                            Text(
                              'MILK',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.teal
                              ),
                            )
                        ),
                        DataCell(
                            Text(
                              'ONE CUP',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.teal
                              ),
                            )
                        ),
                        DataCell(
                            Text(
                              '160',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.teal
                              ),
                            )
                        ),
                        DataCell(
                            IconButton(onPressed: (){},
                              icon: Icon(Icons.add),
                            )
                        ),
                      ]
                      ),
                      DataRow(cells: [
                        DataCell(
                            Text(
                              'BANANA',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.teal
                              ),
                            )
                        ),
                        DataCell(
                            Text(
                              'ONE MD',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.teal
                              ),
                            )
                        ),
                        DataCell(
                            Text(
                              '100',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.teal
                              ),
                            )
                        ),
                        DataCell(
                            IconButton(onPressed: (){},
                              icon: Icon(Icons.add),)
                        ),
                      ]),
                      DataRow(cells: [
                        DataCell(
                            Text(
                              'MANGO',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.teal
                              ),
                            )
                        ),
                        DataCell(
                            Text(
                              '4 SLICES',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.teal
                              ),
                            )
                        ),
                        DataCell(
                            Text(
                              '90',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.teal
                              ),
                            )
                        ),
                        DataCell(
                            IconButton(onPressed: (){},
                              icon: Icon(Icons.add),)
                        ),
                      ]),
                      DataRow(cells: [
                        DataCell(
                            Text(
                              'MEAT',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.teal
                              ),
                            )
                        ),
                        DataCell(
                            Text(
                              '100g',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.teal
                              ),
                            )
                        ),
                        DataCell(
                            Text(
                              '143',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.teal
                              ),
                            )
                        ),
                        DataCell(
                            IconButton(onPressed: (){},
                              icon: Icon(Icons.add),)
                        ),
                      ]),
                      DataRow(cells: [
                        DataCell(
                            Text(
                              'CHICKEN',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.teal
                              ),
                            )
                        ),
                        DataCell(
                            Text(
                              '100g',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.teal
                              ),
                            )
                        ),
                        DataCell(
                            Text(
                              '239',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.teal
                              ),
                            )
                        ),
                        DataCell(
                            IconButton(onPressed: (){},
                              icon: Icon(Icons.add),)
                        ),
                      ]),
                      DataRow(cells: [
                        DataCell(
                            Text(
                              'RICE',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.teal
                              ),
                            )
                        ),
                        DataCell(
                            Text(
                              '100g',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.teal
                              ),
                            )
                        ),
                        DataCell(
                            Text(
                              '130',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.teal
                              ),
                            )
                        ),
                        DataCell(
                            IconButton(onPressed: (){},
                              icon: Icon(Icons.add),)
                        ),
                      ]),
                      DataRow(cells: [
                        DataCell(
                            Text(
                              'Bread',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.teal
                              ),
                            )
                        ),
                        DataCell(
                            Text(
                              '100g',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.teal
                              ),
                            )
                        ),
                        DataCell(
                            Text(
                              '265',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.teal
                              ),
                            )
                        ),
                        DataCell(
                            IconButton(onPressed: (){},
                              icon: Icon(Icons.add),)
                        ),
                      ]),
                      DataRow(cells: [
                        DataCell(
                            Text(
                              'EGG',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.teal
                              ),
                            )
                        ),
                        DataCell(
                            Text(
                              '100g',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.teal
                              ),
                            )
                        ),
                        DataCell(
                            Text(
                              '155',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.teal
                              ),
                            )
                        ),
                        DataCell(
                            IconButton(onPressed: (){},
                              icon: Icon(Icons.add),)
                        ),
                      ]),
                      DataRow(cells: [
                        DataCell(
                            Text(
                              'APPLE',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.teal
                              ),

                            )
                        ),
                        DataCell(
                            Text(
                              '100g',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.teal
                              ),
                            )
                        ),
                        DataCell(
                            Text(
                              '52',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.teal
                              ),
                            )
                        ),
                        DataCell(
                            IconButton(onPressed: (){},
                              icon: Icon(Icons.add),)
                        ),
                      ]),
                      DataRow(cells: [
                        DataCell(
                            Text(
                              'AVOCDO',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.teal
                              ),
                            )
                        ),
                        DataCell(
                            Text(
                              '100g',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.teal
                              ),
                            )
                        ),
                        DataCell(
                            Text(
                              '160',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.teal
                              ),
                            )
                        ),
                        DataCell(
                            IconButton(onPressed: (){},
                              icon: Icon(Icons.add),)
                        ),
                      ]),
                      DataRow(cells: [
                        DataCell(
                            Text(
                              'DATE',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.teal
                              ),
                            )
                        ),
                        DataCell(
                            Text(
                              '100g',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.teal
                              ),
                            )
                        ),
                        DataCell(
                            Text(
                              '282',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.teal
                              ),
                            )
                        ),
                        DataCell(
                            IconButton(onPressed: (){},
                              icon: Icon(Icons.add),)
                        ),
                      ]),
                      DataRow(cells: [
                        DataCell(
                            Text(
                              'SALMON',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.teal
                              ),
                            )
                        ),
                        DataCell(
                            Text(
                              '100g',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.teal
                              ),
                            )
                        ),
                        DataCell(
                            Text(
                              '206',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.teal
                              ),
                            )
                        ),
                        DataCell(
                            IconButton(onPressed: (){},
                              icon: Icon(Icons.add),)
                        ),
                      ]),
                      DataRow(cells: [
                        DataCell(
                            Text(
                              'HOUMOS',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.teal
                              ),
                            )
                        ),
                        DataCell(
                            Text(
                              '100g',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.teal
                              ),
                            )
                        ),
                        DataCell(
                            Text(
                              '306',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.teal
                              ),
                            )
                        ),
                        DataCell(
                            IconButton(onPressed: (){},
                              icon: Icon(Icons.add),)
                        ),
                      ]),
                      DataRow(cells: [
                        DataCell(
                            Text(
                              'DARK CH',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.teal
                              ),
                            )
                        ),
                        DataCell(
                            Text(
                              '100g',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.teal
                              ),
                            )
                        ),
                        DataCell(
                            Text(
                              '580',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.teal
                              ),
                            )
                        ),
                        DataCell(
                            IconButton(onPressed: (){},
                              icon: Icon(Icons.add),)
                        ),
                      ]),
                      DataRow(cells: [
                        DataCell(
                            Text(
                              'STEAK',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.teal
                              ),
                            )
                        ),
                        DataCell(
                            Text(
                              '100g',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.teal
                              ),
                            )
                        ),
                        DataCell(
                            Text(
                              '210',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.teal
                              ),
                            )
                        ),
                        DataCell(
                            IconButton(onPressed: (){},
                              icon: Icon(Icons.add),)
                        ),
                      ]),
                      DataRow(cells: [
                        DataCell(
                            Text(
                              'MONDS',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.teal
                              ),
                            )
                        ),
                        DataCell(
                            Text(
                              '100g',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.teal
                              ),
                            )
                        ),
                        DataCell(
                            Text(
                              '590',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.teal
                              ),
                            )
                        ),
                        DataCell(
                            IconButton(onPressed: (){},
                              icon: Icon(Icons.add),)
                        ),
                      ]),
                      DataRow(cells: [
                        DataCell(
                            Text(
                              'CHEESE',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.teal
                              ),
                            )
                        ),
                        DataCell(
                            Text(
                              '100g',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.teal
                              ),
                            )
                        ),
                        DataCell(
                            Text(
                              '371',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.teal
                              ),
                            )
                        ),
                        DataCell(
                            IconButton(onPressed: (){},
                              icon: Icon(Icons.add),)
                        ),
                      ]),
                      DataRow(cells: [
                        DataCell(
                            Text(
                              'ORANGE',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.teal
                              ),
                            )
                        ),
                        DataCell(
                            Text(
                              '100g',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.teal
                              ),
                            )
                        ),
                        DataCell(
                            Text(
                              '38',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.teal
                              ),
                            )
                        ),
                        DataCell(
                            IconButton(onPressed: (){},
                              icon: Icon(Icons.add),)
                        ),
                      ]),
                      DataRow(cells: [
                        DataCell(
                            Text(
                              'CANDY',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.teal
                              ),
                            )
                        ),
                        DataCell(
                            Text(
                              '100g',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.teal
                              ),
                            )
                        ),
                        DataCell(
                            Text(
                              '396',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.teal
                              ),
                            )
                        ),
                        DataCell(
                            IconButton(onPressed: (){},
                              icon: Icon(Icons.add),)
                        ),
                      ]),
                      DataRow(cells: [
                        DataCell(
                            Text(
                              'TOMATO',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.teal
                              ),
                            )
                        ),
                        DataCell(
                            Text(
                              '100g',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.teal
                              ),
                            )
                        ),
                        DataCell(
                            Text(
                              '19',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.teal
                              ),
                            )
                        ),
                        DataCell(
                            IconButton(onPressed: (){},
                              icon: Icon(Icons.add),)
                        ),
                      ]),
                    ])
              ],
            ),
          ),

        ),
      ),
    );
  }
}
