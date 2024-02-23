import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:tummyblis/Components/buy_button.dart';
import 'package:tummyblis/Components/quantity_adder.dart';
import 'package:tummyblis/Screens/Homescreen.dart';
import 'package:tummyblis/Screens/cartpage.dart';

class Productdisp1 extends StatefulWidget {
  Color color1;
  int i = 0;
  int image1 = 0;
  Productdisp1(
      {required this.i, required this.image1, required this.color1, super.key});

  @override
  State<Productdisp1> createState() => _Productdisp1State();
}

class _Productdisp1State extends State<Productdisp1> {
  Color color1 = Color.fromARGB(255, 119, 255, 0).withOpacity(1);
  int image1 = 0;
  int i = 0;
  @override
  void initState() {
    super.initState();
    image1 = widget.image1;
    color1 = widget.color1;
    i = widget.i; // Set initial state based on the value of 'i'
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
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: color1,
        body: Padding(
          padding: const EdgeInsets.fromLTRB(1, 20, 1, 6),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.pop(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Homescreen()));
                      },
                      icon: Icon(
                        Icons.navigate_before,
                        size: 55,
                      )),
                  IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CartPage(
                                      cartItems: [
                                        CartItem(
                                            imageaddr:
                                                "lib/Images/fruits/apple.png",
                                            name: "apple",
                                            description: "Apple",
                                            price: 75.0),
                                        CartItem(
                                            imageaddr:
                                                "lib/Images/fruits/mango.png",
                                            name: "mango",
                                            description: "mango",
                                            price: 82.0)
                                      ],
                                    )));
                      },
                      icon: Icon(
                        Icons.shopping_cart,
                        size: 48,
                      ))
                ],
              ),
              SizedBox(height: 10),
              Expanded(flex: 3, child: Image(image: AssetImage(asset[image1]))),
              Expanded(
                flex: 4,
                child: Container(
                  height: 416,
                  width: 420,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(35),
                          topRight: Radius.circular(35)),
                      color: Color.fromRGBO(241, 235, 219, 1)),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          wordings[i],
                          style: TextStyle(
                              fontSize: 25,
                              color: Colors.black,
                              fontWeight: FontWeight.w500),
                        ), //Name
                        Text(
                          'DESCRIPTION',
                          style: TextStyle(
                              fontSize: 10,
                              color: Colors.black,
                              fontWeight: FontWeight.w400),
                        ), //type of fruit
                        //This space is for the star ratting...
                        Text(
                          'Mango (Mangifera indica) is a tropical fruit that belongs to the family Anacardiaceae. It is one of the most popular and widely cultivated fruits in the world.',
                          style: TextStyle(color: Colors.black, fontSize: 15),
                        ), //Description about the product
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              price[i],
                              style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black),
                            ),
                            Kilo()
                          ], //here we are going to add the price and the quantity
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Center(
                            child: buy_button(
                          text1: "BUY NOW",
                        ))
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
