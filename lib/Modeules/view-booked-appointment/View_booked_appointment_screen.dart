import 'package:flutter/material.dart';
import 'package:hea_apps/Shared/Colors/Colors.dart';


class view_booked_appoiemnts extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.0,
          leading: Builder(builder: (context)=>IconButton(onPressed: (){Navigator.pop(context);},icon: Icon(Icons.arrow_back,color: defultColor,),)),
          title: const Text(
            " view Book appointment",
            style: TextStyle(
              color:Colors.teal,
            ),
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.search,
                )),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.dark_mode,
                )),
          ],
        ),
        body: Padding(
            padding: const EdgeInsetsDirectional.all(7.0),
            child: Container(
                child: SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 15.0,
                        ),
                        const Text(
                          'Good Mording Dr.ABD',
                          style:
                          TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 8.0,
                        ),
                        const Padding(
                          padding: EdgeInsetsDirectional.only(start: 8.0),
                          child: Text(
                            'you have 7 pation booked',
                            style: TextStyle(
                                fontSize: 16.0, fontWeight: FontWeight.w300,
                              color: Colors.teal,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 15.0,
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(vertical: 10.0),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 22.0),
                            child: Row(
                              children: [
                                //today
                                CircleAvatar(
                                    radius: 30.0,
                                    backgroundColor: Colors.green[100],
                                    child: MaterialButton(
                                      child: const Text('Sun'),
                                      onPressed: () {},
                                    )),
                                const SizedBox(
                                  width: 10.0,
                                ),
                                CircleAvatar(
                                    radius: 30.0,
                                    backgroundColor: Colors.green[100],
                                    child: MaterialButton(
                                      child: const Text('Mun'),
                                      onPressed: () {},
                                    )),
                                const SizedBox(
                                  width: 10.0,
                                ),
                                CircleAvatar(
                                    radius: 30.0,
                                    backgroundColor: Colors.teal,
                                    child: MaterialButton(
                                      child: const Text('Tus'),
                                      onPressed: () {},
                                    )),
                                const SizedBox(
                                  width: 10.0,
                                ),
                                CircleAvatar(
                                    radius: 30.0,
                                    backgroundColor: Colors.green[100],
                                    child: MaterialButton(
                                      child: const Text('Wed'),
                                      onPressed: () {},
                                    )),
                                const SizedBox(
                                  width: 10.0,
                                ),
                                CircleAvatar(
                                    radius: 30.0,
                                    backgroundColor: Colors.green[100],
                                    child: MaterialButton(
                                      child: const Text('Fri'),
                                      onPressed: () {},
                                    )),
                                const SizedBox(
                                  width: 10.0,
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 25.0,
                        ),
                        const Text('Reservations',style: TextStyle(
                            fontSize: 20.0
                            ,fontWeight: FontWeight.bold),),
                        const SizedBox(
                          height: 25.0,
                        ),
                        Container(
                          padding: const EdgeInsetsDirectional.all(10.0),
                          decoration:BoxDecoration(
                            borderRadius: BorderRadius.circular(30.0),
                            color: Colors.teal,
                          ) ,

                          child: SingleChildScrollView(
                            child: Column(
                              children: [
                                Container(
                                  padding: const EdgeInsetsDirectional.all(3.0),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20.0),
                                    color: Colors.teal[400],
                                  ),

                                  child: Row(
                                    children: [
                                      const CircleAvatar(

                                        radius: 36.0,
                                        backgroundImage: (NetworkImage(
                                            'https://www.dmarge.com/wp-content/uploads/2021/01/dwayne-the-rock--480x320.jpg')),
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          const Text(
                                            'Abdarahman shaheen',
                                            style: TextStyle(
                                                fontSize: 16.0, fontWeight: FontWeight.bold),
                                          ),
                                          const SizedBox(
                                            height: 7.0,
                                          ),
                                          const Text(
                                            'Time : 12-4 pm',
                                            style: TextStyle(fontSize: 15.0),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(
                                        width: 20,
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                          borderRadius: const BorderRadius.all(Radius.circular(20.0)),
                                          color: Colors.green[100],
                                        ),
                                        child: Container(
                                          width: 50,
                                          height: 50,
                                          child: MaterialButton(
                                            onPressed: () {},
                                            child:
                                            const Image(image: AssetImage('assert/image/accept.png')),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(width: 10.0),
                                      Container(
                                        decoration: BoxDecoration(
                                          borderRadius: const BorderRadius.all(Radius.circular(20.0)),
                                          color: Colors.green[100],
                                        ),
                                        child: Container(
                                          width: 50,
                                          height: 50,
                                          child: MaterialButton(
                                            onPressed: () {},
                                            child:
                                            const Image(image: AssetImage('assert/image/reject.png')),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  height: 20.0,
                                ),
                                Container(
                                  padding: const EdgeInsetsDirectional.all(3.0),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20.0),
                                    color: Colors.teal[400],),

                                  child: Row(
                                    children: [
                                      const CircleAvatar(
                                        radius: 36.0,
                                        backgroundImage: (NetworkImage(
                                            'https://www.dmarge.com/wp-content/uploads/2021/01/dwayne-the-rock--480x320.jpg')),
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          const Text(
                                            'Ahmed samer',
                                            style: TextStyle(
                                                fontSize: 16.0, fontWeight: FontWeight.bold),
                                          ),
                                          const SizedBox(
                                            height: 7.0,
                                          ),
                                          const Text(
                                            'Time : 2-4 pm',
                                            style: TextStyle(fontSize: 15.0),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(
                                        width: 20,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 56.0),
                                        child: Container(
                                          child: Row(
                                            children: [
                                              Container(
                                                decoration: BoxDecoration(
                                                  borderRadius: const BorderRadius.all(Radius.circular(20.0)),
                                                  color: Colors.green[100],
                                                ),
                                                child: Container(
                                                  width: 50,
                                                  height: 50,
                                                  child: MaterialButton(
                                                    onPressed: () {},
                                                    child:
                                                    const Image(image: AssetImage('assert/image/accept.png')),
                                                  ),
                                                ),
                                              ),
                                              const SizedBox(width: 10.0),
                                              Container(
                                                decoration: BoxDecoration(
                                                  borderRadius: const BorderRadius.all(Radius.circular(20.0)),
                                                  color: Colors.green[100],
                                                ),
                                                child: Container(
                                                  width: 50,
                                                  height: 50,
                                                  child: MaterialButton(
                                                    onPressed: () {},
                                                    child:
                                                    const Image(image: AssetImage('assert/image/reject.png')),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  height: 20.0,
                                ),
                                Container(
                                  padding: const EdgeInsetsDirectional.all(3.0),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20.0),
                                    color: Colors.teal[400],),
                                  child: Row(
                                    children: [
                                      const CircleAvatar(
                                        radius: 36.0,
                                        backgroundImage: (NetworkImage(
                                            'https://www.dmarge.com/wp-content/uploads/2021/01/dwayne-the-rock--480x320.jpg')),
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          const Text(
                                            'Ahmed samer',
                                            style: TextStyle(
                                                fontSize: 16.0, fontWeight: FontWeight.bold),
                                          ),
                                          const SizedBox(
                                            height: 7.0,
                                          ),
                                          const Text(
                                            'Time : 5-7 pm',
                                            style: TextStyle(fontSize: 15.0),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(
                                        width: 20,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 56.0),
                                        child: Row(
                                          children: [
                                            Container(
                                              decoration: BoxDecoration(
                                                borderRadius: const BorderRadius.all(Radius.circular(20.0)),
                                                color: Colors.green[100],
                                              ),
                                              child: Container(
                                                width: 50,
                                                height: 50,
                                                child: MaterialButton(
                                                  onPressed: () {},
                                                  child:
                                                  const Image(image: AssetImage('assert/image/accept.png')),
                                                ),
                                              ),
                                            ),
                                            const SizedBox(width: 10.0),
                                            Container(
                                              decoration: BoxDecoration(
                                                borderRadius: const BorderRadius.all(Radius.circular(20.0)),
                                                color: Colors.green[100],
                                              ),
                                              child: Container(
                                                width: 50,
                                                height: 50,
                                                child: MaterialButton(
                                                  onPressed: () {},
                                                  child:
                                                  const Image(image: AssetImage('assert/image/reject.png')),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  height: 20.0,
                                ),
                                Container(
                                  padding: const EdgeInsetsDirectional.all(3.0),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20.0),
                                    color: Colors.teal[400],),
                                  child: Row(
                                    children: [
                                      const CircleAvatar(
                                        radius: 36.0,
                                        backgroundImage: (NetworkImage(
                                            'https://www.dmarge.com/wp-content/uploads/2021/01/dwayne-the-rock--480x320.jpg')),
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          const Text(
                                            'Ahmed samer',
                                            style: TextStyle(
                                                fontSize: 16.0, fontWeight: FontWeight.bold),
                                          ),
                                          const SizedBox(
                                            height: 7.0,
                                          ),
                                          const Text(
                                            'Time : 7-8 pm',
                                            style: TextStyle(fontSize: 15.0),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(
                                        width: 20,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 56.0),
                                        child: Row(
                                          children: [
                                            Container(
                                              decoration: BoxDecoration(
                                                borderRadius: const BorderRadius.all(Radius.circular(20.0)),
                                                color: Colors.green[100],
                                              ),
                                              child: Container(
                                                width: 50,
                                                height: 50,
                                                child: MaterialButton(
                                                  onPressed: () {},
                                                  child:
                                                  const Image(image: AssetImage('assert/image/accept.png')),
                                                ),
                                              ),
                                            ),
                                            const SizedBox(width: 10.0),
                                            Container(
                                              decoration: BoxDecoration(
                                                borderRadius: const BorderRadius.all(Radius.circular(20.0)),
                                                color: Colors.green[100],
                                              ),
                                              child: Container(
                                                width: 50,
                                                height: 50,
                                                child: MaterialButton(
                                                  onPressed: () {},
                                                  child:
                                                  const Image(image: AssetImage('assert/image/reject.png')),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  height: 20.0,
                                ),
                                Container(
                                  padding: const EdgeInsetsDirectional.all(3.0),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20.0),
                                    color: Colors.teal[400],),
                                  child: Row(
                                    children: [
                                      const CircleAvatar(
                                        radius: 36.0,
                                        backgroundImage: (NetworkImage(
                                            'https://www.dmarge.com/wp-content/uploads/2021/01/dwayne-the-rock--480x320.jpg')),
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          const Text(
                                            'Ahmed samer',
                                            style: TextStyle(
                                                fontSize: 16.0, fontWeight: FontWeight.bold),
                                          ),
                                          const SizedBox(
                                            height: 7.0,
                                          ),
                                          const Text(
                                            'Time : 5-7 pm',
                                            style: TextStyle(fontSize: 15.0),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(
                                        width: 20,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 56.0),
                                        child: Row(
                                          children: [
                                            Container(
                                              decoration: BoxDecoration(
                                                borderRadius: const BorderRadius.all(Radius.circular(20.0)),
                                                color: Colors.green[100],
                                              ),
                                              child: Container(
                                                width: 50,
                                                height: 50,
                                                child: MaterialButton(
                                                  onPressed: () {},
                                                  child:
                                                  const Image(image: AssetImage('assert/image/accept.png')),
                                                ),
                                              ),
                                            ),
                                            const SizedBox(width: 10.0),
                                            Container(
                                              decoration: BoxDecoration(
                                                borderRadius: const BorderRadius.all(Radius.circular(20.0)),
                                                color: Colors.green[100],
                                              ),
                                              child: Container(
                                                width: 50,
                                                height: 50,
                                                child: MaterialButton(
                                                  onPressed: () {},
                                                  child:
                                                  const Image(image: AssetImage('assert/image/reject.png')),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  height: 20.0,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ]),
                ))));
  }
}