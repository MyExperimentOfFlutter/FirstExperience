import 'package:flutter/material.dart';

class Taskten extends StatefulWidget {
  const Taskten({Key? key}) : super(key: key);

  @override
  State<Taskten> createState() => _TasktenState();
}

class _TasktenState extends State<Taskten> {
  double val1 = 1;
  double val2 = 1;
  double val3 = 1;
  bool _value = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Task 10'),
      ),
      body: Container(
        color: Color.fromARGB(
          100,
          val1.toInt(),
          val2.toInt(),
          val3.toInt(),
        ),
        child: Column(
          children: [
            Slider(
              min: 0,
              max: 255,
              divisions: 10,
              value: val1,
              activeColor: Colors.purple,
              inactiveColor: Colors.blue,
              onChanged: (value) {
                setState(() {
                  val1 = value;
                });
              },
            ),
            SizedBox(
              height: 20,
            ),
            Slider(
              min: 0,
              max: 255,
              divisions: 10,
              value: val2,
              activeColor: Colors.purple,
              inactiveColor: Colors.blue,
              onChanged: (value) {
                setState(() {
                  val2 = value;
                });
              },
            ),
            SizedBox(
              height: 20,
            ),
            Slider(
                min: 0,
                max: 255,
                divisions: 10,
                value: val3,
                activeColor: Colors.purple,
                inactiveColor: Colors.blue,
                label: val3.round().toString(),
                onChanged: (value) {
                  setState(() {
                    val3 = value;
                  });
                }),
            SizedBox(
              height: 34,
            ),
            Text(
              'slider 1 = ${val1.toInt()}\nslider 2 = ${val2.toInt()} \nslider 3 = ${val3.toInt()}',
              style: TextStyle(
                color: Colors.blue,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
