import 'package:carousel_slider/carousel_slider.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:tummyblis/Components/bottom_navigator.dart';
import 'package:tummyblis/Components/productdisp.dart';
import 'package:tummyblis/Components/search_bar.dart';
import 'package:tummyblis/Screens/categorydisp.dart';
import 'package:tummyblis/Components/vegedisp.dart';

class Vegetablescreen extends StatefulWidget {
  const Vegetablescreen({super.key});

  @override
  State<Vegetablescreen> createState() => _VegetablescreenState();
}

class _VegetablescreenState extends State<Vegetablescreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          //end of app bar
          backgroundColor: Color.fromRGBO(241, 235, 219, 1),
          body: SingleChildScrollView(
            //whole screen scrolling
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 30, 10, 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: const Icon(
                            Icons.navigate_before,
                            size: 42,
                            color: Colors.black,
                          )),
                    ],
                  ),
                ),
                const Row(
                  children: [
                    subtitle(title: 'Discover our \n fresh Vegetables'),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    //search bar -----------------------------------------------------------------------------------
                  ],
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(children: [
                    vegedisp(
                      image1: 4,
                      i: 4,
                      color1: Color.fromARGB(255, 119, 255, 0).withOpacity(0.4),
                    ),
                    vegedisp(
                      image1: 0,
                      i: 0,
                      color1: Color.fromARGB(255, 247, 49, 4).withOpacity(1),
                    ),
                    vegedisp(
                      image1: 7,
                      i: 7,
                      color1: Color.fromARGB(255, 255, 170, 0).withOpacity(1),
                    ),
                    vegedisp(
                      image1: 5,
                      i: 5,
                      color1: Color.fromARGB(255, 254, 242, 0).withOpacity(1),
                    ),
                    vegedisp(
                      image1: 4,
                      i: 4,
                      color1: Color.fromARGB(255, 119, 255, 0).withOpacity(1),
                    ),
                    vegedisp(
                      i: 6,
                      image1: 6,
                      color1: Color.fromARGB(255, 255, 200, 0).withOpacity(1),
                    ),
                    vegedisp(
                      image1: 8,
                      i: 8,
                      color1: Color.fromARGB(255, 119, 255, 0).withOpacity(1),
                    ),
                  ]),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(children: [
                    vegedisp(
                      image1: 1,
                      color1: Color.fromARGB(255, 251, 255, 0).withOpacity(1),
                      i: 1,
                    ),
                    vegedisp(
                      image1: 5,
                      i: 5,
                      color1: Color.fromARGB(255, 255, 255, 0).withOpacity(1),
                    ),
                    vegedisp(
                      image1: 2,
                      i: 2,
                      color1: Color.fromARGB(255, 180, 4, 255).withOpacity(1),
                    ),
                    vegedisp(
                      image1: 0,
                      i: 0,
                      color1: Color.fromARGB(255, 247, 49, 4).withOpacity(1),
                    ),
                    vegedisp(
                      image1: 4,
                      i: 4,
                      color1: Color.fromARGB(255, 119, 255, 0).withOpacity(1),
                    ),
                    vegedisp(
                      image1: 5,
                      i: 5,
                      color1: Color.fromARGB(255, 255, 247, 0).withOpacity(1),
                    ),
                    vegedisp(
                      image1: 6,
                      i: 6,
                      color1: Color.fromARGB(255, 255, 200, 0).withOpacity(1),
                    ),
                  ]),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(children: [
                    vegedisp(
                      image1: 8,
                      i: 8,
                      color1: Color.fromARGB(255, 119, 255, 0).withOpacity(1),
                    ),
                    vegedisp(
                      image1: 7,
                      i: 7,
                      color1: Color.fromARGB(255, 255, 213, 0).withOpacity(1),
                    ),
                    vegedisp(
                      image1: 8,
                      i: 8,
                      color1: Color.fromARGB(255, 119, 255, 0).withOpacity(1),
                    ),
                    vegedisp(
                      image1: 4,
                      i: 4,
                      color1: Color.fromARGB(255, 119, 255, 0).withOpacity(1),
                    ),
                    vegedisp(
                      image1: 3,
                      i: 3,
                      color1: Color.fromARGB(255, 119, 255, 0).withOpacity(1),
                    ),
                    vegedisp(
                      image1: 2,
                      i: 2,
                      color1: Color.fromARGB(255, 180, 4, 255).withOpacity(1),
                    ),
                    vegedisp(
                      image1: 1,
                      i: 1,
                      color1: Color.fromARGB(255, 255, 255, 0).withOpacity(1),
                    ),
                  ]),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(children: [
                    vegedisp(
                      image1: 0,
                      i: 0,
                      color1: Color.fromARGB(255, 247, 49, 4).withOpacity(1),
                    ),
                    vegedisp(
                      image1: 3,
                      i: 3,
                      color1: Color.fromARGB(255, 119, 255, 0).withOpacity(1),
                    ),
                    vegedisp(
                      image1: 2,
                      i: 2,
                      color1: Color.fromARGB(255, 180, 4, 255).withOpacity(1),
                    ),
                    vegedisp(
                      image1: 5,
                      i: 5,
                      color1: Color.fromARGB(255, 255, 247, 0).withOpacity(1),
                    ),
                    vegedisp(
                      image1: 6,
                      i: 6,
                      color1: Color.fromARGB(255, 255, 179, 0).withOpacity(1),
                    ),
                    vegedisp(
                      image1: 7,
                      i: 7,
                      color1: Color.fromARGB(255, 255, 166, 0).withOpacity(1),
                    ),
                    vegedisp(
                      image1: 3,
                      i: 3,
                      color1: Color.fromARGB(255, 119, 255, 0).withOpacity(1),
                    ),
                  ]),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(children: [
                    Productdisp(
                      image1: 6,
                      i: 6,
                      color1: Color.fromARGB(255, 255, 196, 0).withOpacity(1),
                      color2: Colors.black.withOpacity(1),
                    ),
                    Productdisp(
                      image1: 3,
                      i: 3,
                      color1: Color.fromARGB(255, 119, 255, 0).withOpacity(1),
                      color2: Colors.black.withOpacity(1),
                    ),
                    Productdisp(
                      image1: 5,
                      i: 5,
                      color1: Color.fromARGB(255, 255, 247, 0).withOpacity(1),
                      color2: Colors.black.withOpacity(1),
                    ),
                    Productdisp(
                      image1: 7,
                      i: 7,
                      color1: Color.fromARGB(255, 255, 191, 0).withOpacity(1),
                      color2: Colors.black.withOpacity(1),
                    ),
                    Productdisp(
                      image1: 8,
                      i: 8,
                      color1: Color.fromARGB(255, 119, 255, 0).withOpacity(1),
                      color2: Colors.black.withOpacity(1),
                    ),
                    Productdisp(
                      image1: 6,
                      i: 6,
                      color1: Color.fromARGB(255, 255, 132, 0).withOpacity(1),
                      color2: Colors.black.withOpacity(1),
                    ),
                    Productdisp(
                      image1: 0,
                      i: 0,
                      color1: Color.fromARGB(255, 247, 49, 4).withOpacity(1),
                      color2: Colors.black.withOpacity(1),
                    ),
                  ]),
                ),
              ],
            ),
          ),
          bottomNavigationBar: navigator_bar()),
    );
  }
}

class subtitle extends StatelessWidget {
  final String title;
  const subtitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 10, 10, 10),
      child: Text(
        title,
        style: const TextStyle(
            fontSize: 35, color: Colors.black, fontWeight: FontWeight.w400),
      ),
    );
  }
}

@override
void Search(String tag, context) {
  final List<String> tages = [
    "apples",
    "Banana",
    "grapes",
    "guava",
    "kiwi",
    "mango ",
    "orange",
    "orange1",
    "peach",
    "pomogranete"
  ];
  final List<String> routes = [''];
  for (int t = 0; t < (tages.length); t++) {
    print('is same');
    if (tag == tages[t]) {
      print('is same1');

      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => Categorydisp(
                    tag: tag,
                  )));
    } else {
      print('ELSE PART');
    }
  }
}
