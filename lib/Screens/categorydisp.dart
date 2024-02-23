import 'package:flutter/material.dart';
import 'package:tummyblis/Components/productdisp.dart';
import 'package:tummyblis/Screens/Homescreen.dart';

class Categorydisp extends StatefulWidget {
  int i_j = 7;
  int image_j = 7;
  String tag = '';
  Categorydisp({required this.tag, super.key});

  @override
  State<Categorydisp> createState() => _CategorydispState();
}

class _CategorydispState extends State<Categorydisp> {
  String tag = '';
  List<Map<String, dynamic>> tags = [];
  int i_j = 0;
  int image_j = 0;
  final List<String> tages = [
    "apples", //0
    "Banana", //1
    "grapes", //2
    "guava", //3
    "kiwi", //4
    "mango ", //5
    "orange", //6
    "orange1", //7
    "peach", //8
    "pomogranete" //9
  ];

  @override
  void initState() {
    super.initState();
    tag = widget.tag;
    i_j = widget.i_j;
    Initializer(tag);

    // Set initial state based on the value of 'i'
  }

  void Initializer(tag) {
    if (tag == 'Banana') {
      //shoe
      setState(() {
        i_j = 1;
        image_j = 1;
      });
    } else if (tag == 'apples') {
      //watches
      setState(() {
        i_j = 0;
        image_j = 0;
      });
    } else if (tag == 'grapes') {
      //speaker
      setState(() {
        i_j = 2;
        image_j = 2;
      });
    } else if (tag == 'guava') {
      //shoe1
      setState(() {
        i_j = 3;
        image_j = 3;
      });
    } else if (tag == 'kiwi') {
      //sneaker
      setState(() {
        i_j = 5;
        image_j = 5;
      });
    } else if (tag == 'mango') {
      //glases
      setState(() {
        i_j = 6;
        image_j = 6;
      });
    } else if (tag == 'orange') {
      //trolly
      setState(() {
        i_j = 7;
        image_j = 7;
      });
    } else if (tag == 'orange1') {
      //headphone
      setState(() {
        i_j = 8;
        image_j = 8;
      });
    } else {
      print(
          '------------------------er in the entry condition-----------------------');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: Text(
              tag, //This will display the name of the category
              style: const TextStyle(
                  fontSize: 42,
                  color: Colors.black,
                  fontWeight: FontWeight.w500),
            ),
          ),
          body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                        flex: 55,
                        child: Productdisp(
                          i: i_j,
                          image1: image_j,
                          color1:
                              Color.fromARGB(255, 119, 255, 0).withOpacity(1),
                          color2: Colors.black.withOpacity(1),
                        )),
                    Expanded(
                        flex: 55,
                        child: Productdisp(
                          i: i_j,
                          image1: image_j,
                          color1:
                              Color.fromARGB(255, 119, 255, 0).withOpacity(1),
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
                          i: i_j,
                          image1: image_j,
                          color1:
                              Color.fromARGB(255, 119, 255, 0).withOpacity(1),
                          color2: Colors.black.withOpacity(1),
                        )),
                    Expanded(
                        flex: 55,
                        child: Productdisp(
                          i: i_j,
                          image1: image_j,
                          color1:
                              Color.fromARGB(255, 119, 255, 0).withOpacity(1),
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
                          i: i_j,
                          image1: image_j,
                          color1:
                              Color.fromARGB(255, 119, 255, 0).withOpacity(1),
                          color2: Colors.black.withOpacity(1),
                        )),
                    Expanded(
                        flex: 55,
                        child: Productdisp(
                          i: i_j,
                          image1: image_j,
                          color1:
                              Color.fromARGB(255, 119, 255, 0).withOpacity(1),
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
                          i: i_j,
                          image1: image_j,
                          color1:
                              Color.fromARGB(255, 119, 255, 0).withOpacity(1),
                          color2: Colors.black.withOpacity(1),
                        )),
                    Expanded(
                        flex: 55,
                        child: Productdisp(
                          i: i_j,
                          image1: image_j,
                          color1:
                              Color.fromARGB(255, 119, 255, 0).withOpacity(1),
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
                          i: i_j,
                          image1: image_j,
                          color1:
                              Color.fromARGB(255, 119, 255, 0).withOpacity(1),
                          color2: Colors.black.withOpacity(1),
                        )),
                    Expanded(
                        flex: 55,
                        child: Productdisp(
                          i: i_j,
                          image1: image_j,
                          color1:
                              Color.fromARGB(255, 119, 255, 0).withOpacity(1),
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
                          i: i_j,
                          image1: image_j,
                          color1:
                              Color.fromARGB(255, 119, 255, 0).withOpacity(1),
                          color2: Colors.black.withOpacity(1),
                        )),
                    Expanded(
                        flex: 55,
                        child: Productdisp(
                          i: i_j,
                          image1: image_j,
                          color1:
                              Color.fromARGB(255, 119, 255, 0).withOpacity(1),
                          color2: Colors.black.withOpacity(1),
                        )),
                  ],
                ),
                Center(
                  child: IconButton(
                    icon: const Icon(
                      Icons.category,
                      size: 38,
                    ),
                    onPressed: () {
                      Navigator.pop(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Homescreen()));
                    },
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
