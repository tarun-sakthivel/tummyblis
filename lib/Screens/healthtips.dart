import 'package:flutter/material.dart';
import 'package:tummyblis/Components/health_calculator.dart';

import 'package:tummyblis/Components/resultpage.dart';

class Healthtips extends StatefulWidget {
  const Healthtips({super.key});

  @override
  State<Healthtips> createState() => _HealthtipsState();
}

class _HealthtipsState extends State<Healthtips> {
  double water = 0.0;
  int fruits = 0;
  String breakfast = '';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromRGBO(241, 235, 219, 1),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          child: Stack(
            children: [
              Image(
                image: AssetImage("lib/Images/background.png"),
                fit: BoxFit.fitHeight,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8, right: 8),
                    child: Column(
                      children: [
                        Text(
                          'Food Health for \n       the day ',
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.w800),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        Container(
                          width: double.infinity,
                          height: 150,
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 2, 129, 188)
                                  .withOpacity(0.8),
                              borderRadius: BorderRadius.circular(25)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 15, top: 0, right: 15),
                                child: Center(
                                  child: Text(
                                    'Water',
                                    style: TextStyle(fontSize: 27),
                                  ),
                                ),
                              ),
                              SizedBox(height: 5),
                              Center(
                                  child: Text(' $water L ',
                                      style: TextStyle(
                                          fontSize: 37,
                                          fontWeight: FontWeight.bold))),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        water = water - 0.25;
                                        //print(kilo);
                                      });
                                    },
                                    child: Icon(Icons.remove_circle_outline,
                                        size: 30),
                                  ),
                                  SizedBox(width: 5),
                                  Image.asset(
                                    'lib/Images/water.png',
                                    width: 40,
                                    height: 40,
                                  ),
                                  SizedBox(width: 5),
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        water = water + 0.25;
                                        //print(kilo);
                                      });
                                    },
                                    child: Icon(Icons.add_circle_outline,
                                        size: 30),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          width: double.infinity,
                          height: 150,
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 255, 80, 80)
                                  .withOpacity(0.8),
                              borderRadius: BorderRadius.circular(25)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 15, top: 0, right: 15),
                                child: Center(
                                  child: Text(
                                    'Fruits',
                                    style: TextStyle(fontSize: 27),
                                  ),
                                ),
                              ),
                              SizedBox(height: 5),
                              Center(
                                  child: Text(' $fruits fruits  ',
                                      style: TextStyle(
                                          fontSize: 30,
                                          fontWeight: FontWeight.bold))),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        fruits = fruits - 1;
                                        //print(kilo);
                                      });
                                    },
                                    child: Icon(Icons.remove_circle_outline,
                                        size: 30),
                                  ),
                                  SizedBox(width: 5),
                                  Image.asset(
                                    'lib/Images/Apple.png',
                                    width: 40,
                                    height: 40,
                                  ),
                                  SizedBox(width: 5),
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        fruits = fruits + 1;
                                        //print(kilo);
                                      });
                                    },
                                    child: Icon(Icons.add_circle_outline,
                                        size: 30),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 255, 190, 94)
                                  .withOpacity(0.8),
                              borderRadius: BorderRadius.circular(25)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 15, top: 0, right: 15),
                                child: Center(
                                  child: Text(
                                    'Breakfast',
                                    style: TextStyle(fontSize: 27),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(20),
                                child: TextField(
                                  decoration: InputDecoration(
                                      hintText: 'Kcal of Breakfast',
                                      prefixIcon: Icon(Icons.filter_frames),
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10))),
                                  onChanged: (value) {
                                    breakfast = value;
                                  },
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 244, 215, 0)
                                  .withOpacity(0.8),
                              borderRadius: BorderRadius.circular(25)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 15, top: 0, right: 15),
                                child: Center(
                                  child: Text(
                                    'Lunch',
                                    style: TextStyle(fontSize: 27),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(20),
                                child: TextField(
                                  decoration: InputDecoration(
                                      hintText: 'Kcal of Lunch',
                                      prefixIcon: Icon(Icons.filter_frames),
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10))),
                                  onChanged: (value) {
                                    breakfast = value;
                                  },
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 20, 196, 255)
                                  .withOpacity(0.8),
                              borderRadius: BorderRadius.circular(25)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 15, top: 0, right: 15),
                                child: Center(
                                  child: Text(
                                    'Dinner',
                                    style: TextStyle(fontSize: 27),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(20),
                                child: TextField(
                                  decoration: InputDecoration(
                                      hintText: 'Kcal of Dinner',
                                      prefixIcon: Icon(Icons.filter_frames),
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10))),
                                  onChanged: (value) {
                                    breakfast = value;
                                  },
                                ),
                              )
                            ],
                          ),
                        ),
                        TextButton(
                            onPressed: () {
                              calculator cal = calculator(fruits, water);
                              showModalBottomSheet<void>(
                                shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(10),
                                      topRight: Radius.circular(10)),
                                ),
                                context: context,
                                builder: (BuildContext context) {
                                  return Result(
                                    resultSentence: cal.result(),
                                  );
                                },
                              );
                            },
                            child: Container(
                                width: 100,
                                height: 40,
                                decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 0, 255, 115)
                                        .withOpacity(0.8),
                                    borderRadius: BorderRadius.circular(10)),
                                child: Center(child: Text(' Evaluate '))))
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
