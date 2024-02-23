import 'package:flutter/material.dart';

class buy_button extends StatefulWidget {
  String text1 = "";
  buy_button({required this.text1, super.key});

  @override
  State<buy_button> createState() => _buy_buttonState();
}

class _buy_buttonState extends State<buy_button> {
  String text1 = "";
  @override
  void initState() {
    super.initState();
    text1 = widget.text1;
    // Set initial state based on the value of 'i'
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            minimumSize: Size(200, 50),
            maximumSize: Size(300, 50),
            backgroundColor: Color.fromRGBO(57, 185, 62, 1)),
        onPressed: () {},
        child: Center(
          child: Text(
            'BUY NOW',
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        ));
  }
}
