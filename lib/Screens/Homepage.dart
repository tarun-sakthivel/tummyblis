import 'package:flutter/material.dart';
import 'package:tummyblis/Components/bottom_navigator.dart';
import 'package:tummyblis/Screens/Homescreen.dart';
import 'package:tummyblis/Screens/LoginPage.dart';
import 'package:tummyblis/Screens/healthtips.dart';
import 'package:tummyblis/Screens/vegetablescreen.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int currentindex = 0;
  List<Widget> body = const [
    Icon(Icons.home),
    Icon(Icons.shopping_cart),
    Icon(Icons.storefront),
    Icon(Icons.person)
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Login()));
                }, //this is the routeer space for the logout
                icon: Icon(Icons.logout))
          ],
          backgroundColor: Color(0xFFF1EBDB),
        ),
        backgroundColor: Color(0xFFF1EBDB),
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(8),
              child: Row(
                children: [
                  Text(
                    'Hi Welcome , \nName...',
                    style: TextStyle(fontSize: 35, fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    width: 70,
                  ),
                  CircleAvatar(
                    backgroundColor: Color(0xFFFFDE86),
                    radius: 43,
                  )
                ],
              ),
            ),
            HomePageWidget(
              color: Color(0xFFBFD8FF),
              string: 'lib/Images/VegetablesButton.png',
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Vegetablescreen()));
              },
            ),
            HomePageWidget(
              color: Color(0xFFF9C8C8),
              string: 'lib/Images/FruitsButton.png',
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Homescreen()));
              },
            ),
            HomePageWidget(
              color: Color(0xFFE0BEFB),
              string: 'lib/Images/HealthTips.png',
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Healthtips()));
              }, //this is the place used to reoute to the health tips page
            ),
          ],
        ),
        bottomNavigationBar: navigator_bar(),
      ),
    );
  }
}

class HomePageWidget extends StatelessWidget {
  const HomePageWidget(
      {super.key,
      required this.color,
      required this.string,
      required this.onTap});
  final String string;
  final Color color;
  final Function() onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 13, right: 13, top: 7, bottom: 7),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          height: 150,
          width: double.infinity,
          decoration: BoxDecoration(
              color: color, borderRadius: BorderRadius.circular(10)),
          child: Image.asset(
            string,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
