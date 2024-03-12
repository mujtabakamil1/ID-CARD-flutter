


import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:assignment/backside.dart';

import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       debugShowCheckedModeBanner: false,
      title: 'Student Id Card',
     
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        title: Text('Student Id Card'),
      ),
      
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            height: 30,
          ),
          Center(
            child: CircleAvatar(
              backgroundImage: AssetImage("assets/my pic.jpg"),
              backgroundColor: Colors.transparent,
              radius: 80,
            ),
          ),
          Text(
            "STUDENT",
            style: TextStyle(fontSize: 25.0, height: 2),
          ),
          Text(
            "Software Engineering",
            style: TextStyle(fontSize: 17.0, height: 1),
          ),
          SizedBox(
            height: 40,
          ),
          Row(
            children: <Widget>[
              SizedBox(
                width: 25,
              ),
              Text("ID:", style: TextStyle(fontSize: 20.0, letterSpacing: 1)),
              SizedBox(
                width: 55,
              ),
              Text("CIIT/SP22-BSE-118/LHR",
                  style: TextStyle(fontSize: 21.0, letterSpacing: 1)),
            ],
          ),
          SizedBox(
            height: 25,
          ),
          Row(
            children: <Widget>[
              SizedBox(
                width: 15,
              ),
              Text("NAME :",
                  style: TextStyle(fontSize: 20.0, letterSpacing: 1)),
              SizedBox(
                width: 21,
              ),
              Text("Mujtaba Kamil Mahmood",
                  style: TextStyle(fontSize: 21.0, letterSpacing: 1)),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Center(
            child: CircleAvatar(
              backgroundImage: AssetImage("assets/logouni.jpeg"),
              radius: 60,
            ),

          ),
          SizedBox(
            height: 15,
          ),
          Row(
            children: <Widget>[
              SizedBox(
                width: 160,
              ),
              Text("CUI Lahore",style: TextStyle(fontWeight: FontWeight.bold)),

            ],
          ),
          SizedBox(
            height: 50,
          ),
          Center(
            child: ElevatedButton(
              
              onPressed: () {
                print("Butoon pressed");
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BackSideIdCard()),
                );
              },
              child: Text('Back side',
              style: TextStyle(
                fontSize: 20
              )
              ),
              
              
            ),
          ),
        ],
      ),
    );
  }
}

class BackSideIdCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Front Side'),
      ),
      body: BackIdcard(),
    );
  }
}

class BackIdcard extends StatelessWidget{
  Widget build(BuildContext context){
    return Column(
      children: [
        Container(
      
         color: const Color.fromARGB(255, 3, 41, 73),
          height: 335,
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              Center(
                child: Text(
                  'Validity',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                
              ),
               SizedBox(
                height: 5,
              ),
              Center(
               child:  Text(
                  'Feb 2022-Feb 2026',
                  style: TextStyle(
                    fontSize: 15.0,
                    color: Colors.white) 
                )
              ),
              SizedBox(
                height: 40,
              ),
              Center(
               child:  Text(
                  'Emergency',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    ), 
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Center(
               child:  Text(
                  '042-111-004-007',
                  style: TextStyle(
                    fontSize: 15.0,
                    color: Colors.white) 
                )
              ),
              SizedBox(
                height: 50,
              ),
              Center(
               child:  Text(
                  'www.cuilahore.edu.pk',
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white) 
                )
              ),
            ],
          ),

          ),
        Container(
          color: Colors.white,
          height: 355,
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 23,
              ),
              Center(
                child: Text(
                  '    This card is \nnon transferable',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold
                  )
                ),
              ),
              SizedBox(
                height: 23,
              ),
              Center(
                child: Text(
                  '          This card is property of \nCOMSATS UNIVERSITY ISLAMABAD\n                 Lahore, Campus',
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold
                  )
                  )
              ),
               SizedBox(
                height: 23,
              ),
              Center(
                child: Text(
                  'In case of loss report to\n          CUI,Lahore\n         Immediately.',
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold
                  )
                  )
              ),
               SizedBox(
                height: 21,
              ),
              Center(
                child: Text(
                  '     Defence Road\n Off Raiwand Road\n          Lahore',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold
                  )
                  )
              ),
              SizedBox(
                height: 8,
              ),
              Center(
                child:Text(
                  'SP22-BSE-118',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 21,
                  ),
                )
              )

            ],
          ),
        ),
      ],
    );
  }
}






























// void main() {
//   runApp(IdCard());
// }

// class IdCard extends StatelessWidget {
//   const IdCard({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData.dark(),
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text("Student Id Card"),
//           centerTitle: true,
//           backgroundColor: Color.fromARGB(255, 28, 87, 189),
//         ),
//         body: Column(
//           mainAxisAlignment: MainAxisAlignment.start,
//           children: <Widget>[
//             SizedBox(
//               height: 30,
//             ),
//             Center(
//                 // CircleAvatar(
//                 //   backgroundImage: AssetImage("assets/my pic.jpg"),
//                 //   backgroundColor: Colors.transparent,
//                 //   radius: 80,

//                 // )
//                 child: Container(
//               width:
//                   240, // adjust the width and height as per your requirements
//               height: 265,
//               // color:Colors.blueAccent,
//               decoration: BoxDecoration(
//                 shape: BoxShape.rectangle,
//                 image: DecorationImage(
//                   image: AssetImage("assets/my pic.jpg"),
//                   fit: BoxFit.cover,
//                 ),
//               ),
//             )),
//             Text(
//               "STUDENT",
//               style: TextStyle(fontSize: 25.0, height: 2),
//             ),
//             Text(
//               "Software Engineering",
//               style: TextStyle(fontSize: 17.0, height: 1),
//             ),
//             SizedBox(
//               height: 40,
//             ),
//             Row(
//               children: <Widget>[
//                 SizedBox(
//                   width: 25,
//                 ),
//                 Text("ID:", style: TextStyle(fontSize: 20.0, letterSpacing: 1)),
//                 SizedBox(
//                   width: 55,
//                 ),
//                 Text("CIIT/SP22-BSE-118/LHR",
//                     style: TextStyle(fontSize: 21.0, letterSpacing: 1)),
//               ],
//             ),
//             SizedBox(
//               height: 25,
//             ),
//             Row(
//               children: <Widget>[
//                 SizedBox(
//                   width: 15,
//                 ),
//                 Text("NAME :",
//                     style: TextStyle(fontSize: 20.0, letterSpacing: 1)),
//                 SizedBox(
//                   width: 21,
//                 ),
//                 Text("Mujtaba Kamil Mahmood",
//                     style: TextStyle(fontSize: 21.0, letterSpacing: 1)),
//               ],
//             ),
//             SizedBox(
//               height: 10,
//             ),
//             Column(
//               children: <Widget>[
//                 Center(
//                   child: CircleAvatar(
//                     backgroundImage: AssetImage("assets/logouni.jpeg"),
//                     radius: 50,
//                   ),
//                 )
//               ],
//             ),
//             SizedBox(
//               height: 10,
//             ),
            
//             Row(
//               children: <Widget>[
//                 SizedBox(
//                   width: 130,
//                 ),
//                 Text("CUI Lahore Campus"),
//               ],
//             ),
//             SizedBox(height: 20),
//              Center(
//               child: ElevatedButton(
//                 onPressed:   (){
//                   print("Butoon pressed");
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(builder: (context) =>BackSideIdCard()),
//                     );
//                 },
//                 child: Text('Back side'),
//               ),
//             )
           
//           ],
//         ),
//       ),
//     );
//   }
// }

