import 'package:carousel_slider/carousel_slider.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:tummyblis/Components/bottom_navigator.dart';
import 'package:tummyblis/Components/productdisp.dart';
import 'package:tummyblis/Screens/categorydisp.dart';

class vendor_fruits extends StatefulWidget {
  const vendor_fruits({super.key});

  @override
  State<vendor_fruits> createState() => _vendor_fruitsState();
}

class _vendor_fruitsState extends State<vendor_fruits> {
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
                  padding: const EdgeInsets.fromLTRB(8, 40, 10, 10),
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
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Discover our  \n fresh fruits',
                        style: TextStyle(
                            fontSize: 37, fontWeight: FontWeight.w600),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    //Place to add the search bar ------------------------------------------------------------------
                  ],
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          flex: 55,
                          child: Productdisp(
                            image1: 0,
                            i: 0,
                            color1:
                                Color.fromARGB(255, 247, 49, 4).withOpacity(1),
                            color2: Colors.black.withOpacity(1),
                          ),
                        ),
                        Expanded(
                          flex: 55,
                          child: Productdisp(
                            image1: 7,
                            i: 7,
                            color1:
                                Color.fromARGB(255, 255, 170, 0).withOpacity(1),
                            color2: Colors.black.withOpacity(1),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          flex: 55,
                          child: Productdisp(
                            image1: 5,
                            i: 5,
                            color1:
                                Color.fromARGB(255, 254, 242, 0).withOpacity(1),
                            color2: Colors.black.withOpacity(1),
                          ),
                        ),
                        Expanded(
                            flex: 55,
                            child: Productdisp(
                              image1: 4,
                              i: 4,
                              color1: Color.fromARGB(255, 119, 255, 0)
                                  .withOpacity(1),
                              color2: Colors.black.withOpacity(1),
                            )),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          flex: 55,
                          child: Productdisp(
                            i: 6,
                            image1: 6,
                            color1:
                                Color.fromARGB(255, 255, 200, 0).withOpacity(1),
                            color2: Colors.black.withOpacity(1),
                          ),
                        ),
                        Expanded(
                          flex: 55,
                          child: Productdisp(
                            image1: 8,
                            i: 8,
                            color1:
                                Color.fromARGB(255, 119, 255, 0).withOpacity(1),
                            color2: Colors.black.withOpacity(1),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          flex: 55,
                          child: Productdisp(
                            image1: 1,
                            color1:
                                Color.fromARGB(255, 251, 255, 0).withOpacity(1),
                            color2: Colors.black.withOpacity(1),
                            i: 1,
                          ),
                        ),
                        Expanded(
                          flex: 55,
                          child: Productdisp(
                            image1: 2,
                            i: 2,
                            color1:
                                Color.fromARGB(255, 180, 4, 255).withOpacity(1),
                            color2: Colors.black.withOpacity(1),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          flex: 55,
                          child: Productdisp(
                            image1: 3,
                            i: 3,
                            color1:
                                Color.fromARGB(255, 119, 255, 0).withOpacity(1),
                            color2: Colors.black.withOpacity(1),
                          ),
                        ),
                        Expanded(
                          flex: 55,
                          child: Productdisp(
                            image1: 7,
                            i: 7,
                            color1:
                                Color.fromARGB(255, 255, 166, 0).withOpacity(1),
                            color2: Colors.black.withOpacity(1),
                          ),
                        ),
                      ],
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
