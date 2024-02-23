import 'package:flutter/material.dart';
import 'package:tummyblis/Screens/Homepage.dart';
import 'package:tummyblis/Screens/Profile.dart';
import 'package:tummyblis/Screens/cartpage.dart';
import 'package:tummyblis/Screens/healthtips.dart';

int currentindex = 0;

class navigator_bar extends StatefulWidget {
  const navigator_bar({super.key});

  @override
  State<navigator_bar> createState() => _navigator_barState();
}

class _navigator_barState extends State<navigator_bar> {
  List<Widget> body = const [
    Icon(Icons.home),
    Icon(Icons.shopping_cart),
    Icon(Icons.storefront),
    Icon(Icons.person)
  ];
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentindex,
      onTap: (int newIndex) {
        setState(() {
          currentindex = newIndex;
        });
      },
      backgroundColor: Colors.black,
      fixedColor: Colors.green,
      items: [
        BottomNavigationBarItem(
            activeIcon: IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Homepage()));
              },
              icon: Icon(
                Icons.home,
                color: Colors.black,
              ),
            ),
            icon: Icon(
              Icons.home,
              color: Colors.black,
            ),
            label: 'Home'),
        BottomNavigationBarItem(
            activeIcon: IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => CartPage(
                              cartItems: [
                                CartItem(
                                    imageaddr: "lib/Images/fruits/apple.png",
                                    name: "apple",
                                    description: "Apple",
                                    price: 75.0),
                                CartItem(
                                    imageaddr: "lib/Images/fruits/mango.png",
                                    name: "mango",
                                    description: "mango",
                                    price: 82.0)
                              ],
                            )));
              },
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.black,
              ),
            ),
            icon: Icon(
              Icons.shopping_cart,
              color: Colors.black,
            ),
            label: 'Shop'),
        BottomNavigationBarItem(
            activeIcon: IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Healthtips()));
              },
              icon: Icon(
                Icons.storefront,
                color: Colors.black,
              ),
            ),
            icon: Icon(
              Icons.storefront,
              color: Colors.black,
            ),
            label: 'Tips'),
        BottomNavigationBarItem(
            activeIcon: IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => (Profile())));
              },
              icon: Icon(
                Icons.person,
                color: Colors.black,
              ),
            ),
            icon: Icon(
              Icons.person,
              color: Colors.black,
            ),
            label: 'Profile')
      ],
    );
  }
}
