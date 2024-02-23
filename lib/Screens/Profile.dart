import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF1EBDB),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 30,
            ),
            Text(
              "About",
              style: TextStyle(fontSize: 35, fontWeight: FontWeight.w600),
            ),
            SizedBox(height: 15),
            CircleAvatar(
              radius: 85,
              backgroundImage: AssetImage('lib/Images/profile.png'),
            ),
            SizedBox(height: 15),
            Text(
              'Name: Tarun',
              style: TextStyle(fontSize: 25),
            ),
            SizedBox(height: 5),
            Text(
              'Email: tarunscbe@gmail.com',
              style: TextStyle(fontSize: 25),
            ),
            SizedBox(height: 175),
            Text(
              'Contact Us',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
            ),
            Text('care@tummybliss.org.in', style: TextStyle(fontSize: 20)),
            Text('+91 9865321475', style: TextStyle(fontSize: 20)),
            SizedBox(
              height: 20,
            ),
            Text(
                'With lots of Love and Food\n \t\t\t\t\t\t\t\t\t\t\tTummyBliss',
                style: TextStyle(fontSize: 20)),
            SizedBox(
              height: 5,
            ),
            Icon(
              Icons.favorite_rounded,
              color: Colors.red,
              size: 35,
            )
          ],
        ),
      ),
    );
  }
}
 


//ABOUT PAGE