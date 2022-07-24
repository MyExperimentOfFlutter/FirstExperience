import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyTask4 extends StatefulWidget {
  const MyTask4({Key? key}) : super(key: key);

  @override
  State<MyTask4> createState() => _MyTask4State();
}

class _MyTask4State extends State<MyTask4> {
  Color color = Colors.blueGrey;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Task 4'),
      ),
      body: Container(
        color: color,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    color = Colors.blue;
                  });
                },
                child: Text('Blue'),
              ),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    color = Colors.green;
                  });
                },
                child: Text('Green'),
              ),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    color = Colors.red;
                  });
                },
                child: Text('Red'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
