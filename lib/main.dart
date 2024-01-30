import 'package:flutter/material.dart';

void main() {
  runApp(pointsCounter());
}

class pointsCounter extends StatefulWidget {
  @override
  State<pointsCounter> createState() => _pointsCounterState();
}

class _pointsCounterState extends State<pointsCounter> {
  int teamApoints=0;

  int teamBpoints=0;

  // void addpoint(){
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: Scaffold(
        // to make APPBAR
        appBar: AppBar(
        // leading:
        //  IconButton(
        //   icon: Icon(Icons.search),
        //   onPressed: () {
        //   },
        //   ),
        
          backgroundColor:const Color.fromARGB(255, 78, 51, 124),
          title:const Center(
              child: Text(
            "points counter",
            style: TextStyle(
             fontSize: 28,
             fontWeight: FontWeight.bold,
             ),
          )
          ),
          
        ),

        body: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
           const SizedBox(
              height: 35,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                //اول عمود
                Column(
                  children: [
                    const Text(
                      "team A",
                      style: TextStyle(
                        fontSize: 38,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                   Text(
                      '$teamApoints',
                      style: TextStyle(
                        fontSize: 160,                   
                      ),
                    ),

                    //to make botton

                    ElevatedButton(
                      //الزرار بياخد الاللون والشكل عن طريق دي
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 95, 73, 135),
                        minimumSize: const Size(150, 50),
                      ),

                      onPressed: (){
                        
                        setState((){
                        teamApoints++;
                        });

                        print(teamApoints);
                      },
                      child: Text(
                        "ADD 1 point",
                        style: TextStyle(
                          fontSize: 20,
                          color: Color(0xFF000000),
                        ),
                      ),
                    ),

                    //to make space between bottuns

                    SizedBox(
                      height: 16,
                    ),

                    // Spacer(
                    //   flex: 1,
                    // ),

                    //second button
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 95, 73, 135),
                        minimumSize: Size(150, 50),
                      ),
                      onPressed: () {
                        setState((){
                        teamApoints+=2;
                        });

                        print(teamApoints);
                      },
                      
                      child: Text(
                        "ADD 2 point",
                        style: TextStyle(
                          fontSize: 20,
                          color: Color(0xFF000000),
                        ),
                      ),
                    ),

                    SizedBox(
                      height: 16,
                    ),

                    //  Spacer(
                    //   flex: 1,
                    // ),

                    //third button
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 95, 73, 135),
                        minimumSize: Size(150, 50),
                      ),
                      onPressed: () {
                        setState((){
                        teamApoints+=3;
                        });

                        print(teamApoints);
                      },
                      child: Text(
                        "ADD 3 point",
                        style: TextStyle(
                          fontSize: 20,
                          color: Color(0xFF000000),
                        ),
                      ),
                    ),
                 
                    // Spacer(
                    //   flex: 17,
                    // ),
                  ],
                ),

                //to make a line vertical
                //sizedbox لو شيلتها هيتشال الخط
              const  SizedBox(
                  height: 390,
                  child: VerticalDivider(
                    color: Color.fromARGB(126, 0, 0, 0),
                    thickness: 2,
                  ),
                ),

               
                Column(
                  children: [
                   const Text(
                      "team B",
                      style: TextStyle(
                        fontSize: 38,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    Text(
                      "$teamBpoints",
                      style: TextStyle(
                        fontSize: 160,
                      ),
                    ),

                    //to make botton
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor:const Color.fromARGB(255, 95, 73, 135),
                        
                        //fixedSize: Size(95, 40),

                        minimumSize:const Size(150, 50),
                      ),
                      onPressed: () {
                        setState((){
                        teamBpoints++;
                        });

                        print(teamBpoints);
                      },
                      child:const Text(
                        "ADD 1 point",
                        style: TextStyle(
                          fontSize: 20,
                          color: Color(0xFF000000),
                        ),
                      ),
                    ),

                    //to make space between bottuns
                   const SizedBox(
                      height: 16,
                    ),
                    // Spacer(
                    //   flex: 1,
                    // ),

                    //دي بردو بتعمل مسافه بين الحاجه بس بتبقي مسافه ثابته باختلاف طول الشاشه او حجم الفون
                    // SizedBox(
                    //   height: 16,
                    // ),

                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 95, 73, 135),
                        minimumSize:const Size(150, 50),
                      ),
                      onPressed: () {
                        setState((){
                        teamBpoints+=2;
                        });

                        print(teamBpoints);
                      },
                      child: const Text(
                        "ADD 2 point",
                        style: TextStyle(
                          fontSize: 20,
                          color: Color(0xFF000000),
                        ),
                      ),
                    ),

                   const SizedBox(
                      height: 16,
                    ),

                    // Spacer(
                    //   flex: 1,
                    // ),

                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor:const Color.fromARGB(255, 95, 73, 135),
                        minimumSize: const Size(150, 50),
                      ),
                      onPressed: () {
                        setState((){
                        teamBpoints+=3;
                        });

                        print(teamBpoints);
                      },
                      child:const Text(
                        "ADD 3 point",
                        style: TextStyle(
                          fontSize: 20,
                          color: Color(0xFF000000),
                        ),
                      ),
                    ),
                  
                    // const Spacer(
                    //   flex: 17,
                    // ),

                  ], 
                ),
              ],
            ),

            //const Spacer(),

            const SizedBox(
              height: 60,
            ),

            //the reset button
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 95, 73, 135),
                
                minimumSize: const Size(150, 50),
              ),
              onPressed: () {
                setState(() {
                  teamApoints=0;
                  teamBpoints=0;
                });
              },
              child: const Text(
                "reset",
                style: TextStyle(
                  fontSize: 30,
                  color: Color(0xFF000000),
                ),
              ),
            ),

           const Spacer(),
          ],
        ),
      ),
    );
  }
}
