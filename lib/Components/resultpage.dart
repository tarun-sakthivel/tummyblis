import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  Result({super.key, required this.resultSentence});
  final String resultSentence;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.greenAccent,
        ),
        height: 400,
        width: double.infinity,
        child: Center(
            child: Text(
          resultSentence,
          style: TextStyle(fontSize: 47, fontWeight: FontWeight.bold),
        )),
      ),
    );
  }
}
