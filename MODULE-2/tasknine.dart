import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyTaskNine extends StatefulWidget {
  const MyTaskNine({Key? key}) : super(key: key);

  @override
  State<MyTaskNine> createState() => _MyTaskNineState();
}

enum RadioColor { Red, Green, blue }

class _MyTaskNineState extends State<MyTaskNine> {
  RadioColor myRadio = RadioColor.Green;
  Color color = Colors.green;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Task 9'),
      ),
      body: Container(
        color: color,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Radio(
                value: RadioColor.Red,
                groupValue: myRadio,
                onChanged: (RadioColor? techColor) {
                  setState(() {
                    //color = Colors.red;
                    myRadio = techColor!;
                    color = Colors.red;
                  });
                },
              ),
              Text('Red'),
              Radio(
                value: RadioColor.Green,
                groupValue: myRadio,
                onChanged: (RadioColor? techColor) {
                  setState(() {
                    myRadio = techColor!;
                    color = Colors.green;
                  });
                },
              ),
              Text('Green'),
              Radio(
                value: RadioColor.blue,
                groupValue: myRadio,
                onChanged: (RadioColor? techColor) {
                  setState(() {
                    myRadio = techColor!;
                    color = Colors.blue;
                  });
                },
              ),
              Text('Blue'),
            ],
          ),
        ),
      ),
    );
  }
}
