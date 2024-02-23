import 'package:flutter/material.dart';
import 'package:tummyblis/Screens/Productpage.dart';
import 'package:tummyblis/Screens/product_disp1.dart';

class vegedisp extends StatefulWidget {
  Color color1;
  int i = 0;
  int image1 = 0;
  vegedisp(
      {required this.i, required this.image1, required this.color1, super.key});

  @override
  State<vegedisp> createState() => _vegedispState();
}

class _vegedispState extends State<vegedisp> {
  Color color1 = Color.fromARGB(255, 119, 255, 0).withOpacity(1);
  int image1 = 0;
  int i = 0;
  @override
  void initState() {
    super.initState();
    image1 = widget.image1;
    i = widget.i;
    color1 = widget.color1; // Set initial state based on the value of 'i'
  }

  bool pressed = false;
  final List<String> price = [
    "\₹75/-",
    "\₹65/-",
    "\₹45/-",
    "\₹86/-",
    "\₹71/-",
    "\₹35/-",
    "\₹33/-",
    "\₹54/-",
    "\₹82/-"
  ];
  final List<String> asset = [
    "lib/Images/vegetables/brocoli.png",
    "lib/Images/vegetables/cabbage.png",
    "lib/Images/vegetables/cauliflaur.png",
    "lib/Images/vegetables/corn.png",
    "lib/Images/vegetables/cucumber.png",
    "lib/Images/vegetables/ladiesfinger.png",
    "lib/Images/vegetables/onion.png",
    "lib/Images/vegetables/potato.png",
    "lib/Images/vegetables/spinach.png",
    "lib/Images/vegetables/tomato.png",
  ];
  final List<String> wordings = [
    "brocoli",
    "cabbage",
    "cauliflaur",
    "corn",
    "cucumber",
    "ladiesfinger ",
    "onion",
    "potato",
    "spinach",
    "tomato"
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 20, 10, 10),
      child: TextButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (content) => Productdisp1(
                        color1: color1,
                        i: i,
                        image1: image1,
                      )));
        }, //for rounting to the page of the respective product page
        child: Container(
          height: 260,
          width: 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Colors.transparent,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Expanded(
                    flex: 35,
                    child: Container(
                      height: 170,
                      width: 140,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              colors: [color1, Colors.black.withOpacity(1)],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight),
                          borderRadius: BorderRadius.circular(13)),
                    ),
                  ),
                  Expanded(
                      flex: 65,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                            height: 170,
                            width: 250,
                            child: Image(image: AssetImage(asset[image1]))),
                      ))
                ],
              ),
              Row(
                children: [
                  Expanded(
                    flex: 60,
                    child: Text(
                      price[i],
                      style: const TextStyle(
                          fontSize: 28,
                          color: Colors.black,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  Expanded(
                    flex: 40,
                    child: IconButton(
                      onPressed: () {
                        setState(() {
                          pressed = !pressed; // Toggle the value on each press
                        });
                      },
                      icon: Icon(
                        pressed
                            ? Icons.favorite_rounded
                            : Icons.favorite_outline_sharp,
                      ),
                      color: Colors.pink,
                      iconSize: 28,
                    ),
                  )
                ],
              ),
              Expanded(
                flex: 100,
                child: Text(
                  wordings[i],
                  style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      color: Colors.black),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
