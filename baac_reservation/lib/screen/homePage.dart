
// import 'package:baac_reservation/screen/login.dart';
import 'package:baac_reservation/api/user_controller.dart';
import 'package:baac_reservation/screen/calendarPage.dart';
import 'package:baac_reservation/screen/myReservation.dart';
import 'package:baac_reservation/widgets/customButton.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(

      ),
       body: Center(
         child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,

          children: <Widget>[

            //Book a Room
            new GestureDetector(
              onTap: (){
                // print('Next page');
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CalendarPage()),
                );
              },

              child: CustomButton(
                title: 'Book a room',
              ),
            ),

            //My Reservation
            new GestureDetector(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyReservation()),
                );
              },

              child: CustomButton(
                title: 'My reservation',
              ),              
            ),

            //Sign in meeting
            new GestureDetector(
              onTap: (){
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => CalendarPage()),
                // );
              },

              child: CustomButton(
                title: 'Sign in meeting'
              ),
            ),

            new GestureDetector(
              onTap: (){
                UserController.logout(context);
              },

              child: CustomButton(
                title: 'Logout'
              ),
            ),

            
            //  buildButton(),
          ],

         ),
       ),
    );
  }
}

// Container buildButton(){
//   return Container(
//     child: Card(
//       child: InkWell(
//         splashColor: Colors.lightGreenAccent,
//         onTap: (){
//           print('Card tapped');
//         },
//         child: Container(
//           width: 325,
//           height: 50,
//           color: Colors.grey[300],

//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             mainAxisSize: MainAxisSize.max,

//           ),
//         ),
//       ),
//     ),
//   );
// }