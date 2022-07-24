import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Task1 extends StatefulWidget {
  const Task1({Key? key}) : super(key: key);

  @override
  State<Task1> createState() => _Task1State();
}

class _Task1State extends State<Task1> {
  var result = '';
  bool isResult = true;
  var varZero = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'My First Task From Module 2',
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(
          36,
        ),
        child: Column(
          children: [
            Text('Enter Number in TextFormField'),
            TextFormField(
              onChanged: (number) => printNumber(number),
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(
                    color: Colors.blue,
                    width: 2.5,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.cyan,
                    width: 2.5,
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(
                    color: Colors.green,
                    width: 2.5,
                  ),
                ),
              ),
            ),
            Text('Result = \n$result'),
            //isResult ? Text('Result = \n$result') : Text('Result = \n0'),
          ],
        ),
      ),
    );
  }

  printNumber(String number) {
    setState(() {
      result = number.split('').reversed.join('');
      // result = number;
    });
    if (result == '') {
      result = varZero.toString();
      isResult = false;
    }
  }
}
