import 'package:flutter/material.dart';

class Kilo extends StatefulWidget {
  const Kilo({super.key});

  @override
  State<Kilo> createState() => _KiloState();
}

class _KiloState extends State<Kilo> {
  double kilo = 1.0;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: 200,
      child: Row(
        children: <Widget>[
          GestureDetector(
            onTap: () {
              setState(() {
                kilo = kilo - 0.5;
                //print(kilo);
              });
            },
            child: Icon(Icons.remove_circle_outline, size: 20),
          ),
          SizedBox(width: 5),
          Container(
            height: 20,
            width: 60,
            child: Text(
              "$kilo Kgs",
              style: TextStyle(fontSize: 17),
            ),
          ),
          SizedBox(width: 5),
          GestureDetector(
            onTap: () {
              setState(() {
                kilo = kilo + 0.5;
                //print(kilo);
              });
            },
            child: Icon(Icons.add_circle_outline, size: 20),
          )
        ],
      ),
    );
  }
}
