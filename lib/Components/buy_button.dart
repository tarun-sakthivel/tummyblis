import 'package:flutter/material.dart';

class buy_button extends StatefulWidget {
  const buy_button({super.key});

  @override
  State<buy_button> createState() => _buy_buttonState();
}

class _buy_buttonState extends State<buy_button> {
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
