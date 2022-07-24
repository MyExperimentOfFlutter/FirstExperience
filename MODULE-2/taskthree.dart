import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyRadioWidget extends StatefulWidget {
  const MyRadioWidget({Key? key}) : super(key: key);

  @override
  State<MyRadioWidget> createState() => _MyRadioWidgetState();
}

enum Operation { addition, substraction, multiplication, division }

class _MyRadioWidgetState extends State<MyRadioWidget> {
  Operation myOperation = Operation.addition;
  var result = 0;
  TextEditingController number1 = TextEditingController();
  TextEditingController number2 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Radio Task'),
      ),
      body: Container(
        child: Column(
          children: [
            TextField(
              controller: number1,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: 'please enter 1st number',
              ),
            ),
            TextField(
              controller: number2,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: 'please enter 2nd number',
              ),
            ),
            ListTile(
              title: Text('Addition'),
              leading: Radio(
                groupValue: myOperation,
                onChanged: (Operation? tech) {
                  setState(() {
                    myOperation = tech!;
                    var num1 = int.parse(number1.text.toString());
                    var num2 = int.parse(number2.text.toString());
                    result = num1 + num2;
                  });
                },
                value: Operation.addition,
              ),
            ),
            ListTile(
              title: Text('Substraction'),
              leading: Radio(
                groupValue: myOperation,
                onChanged: (Operation? tech) {
                  setState(() {
                    myOperation = tech!;
                    var num1 = int.parse(number1.text.toString());
                    var num2 = int.parse(number2.text.toString());
                    result = num1 - num2;
                  });
                },
                value: Operation.substraction,
              ),
            ),
            ListTile(
              title: Text('Multiplication'),
              leading: Radio(
                value: Operation.multiplication,
                groupValue: myOperation,
                onChanged: (Operation? tech) {
                  setState(() {
                    myOperation = tech!;
                    var num1 = int.parse(number1.text.toString());
                    var num2 = int.parse(number2.text.toString());
                    result = num1 * num2;
                  });
                },
              ),
            ),
            ListTile(
              title: Text('Division'),
              leading: Radio(
                value: Operation.division,
                groupValue: myOperation,
                onChanged: (Operation? tech) {
                  setState(() {
                    myOperation = tech!;
                    var num1 = int.parse(number1.text.toString());
                    var num2 = int.parse(number2.text.toString());
                    result = num1 ~/ num2;
                  });
                },
              ),
            ),
            Text('Result = $result'),
          ],
        ),
      ),
    );
  }
}
