import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Task2 extends StatefulWidget {
  const Task2({Key? key}) : super(key: key);

  @override
  State<Task2> createState() => _Task2State();
}

class _Task2State extends State<Task2> {
  int result = 0;
  var i = 0;
  var res = '';
  List<int> resultList = [];
  TextEditingController number1 = TextEditingController();
  TextEditingController number2 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'My Second Task from Module 2',
        ),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(36),
          child: Column(
            children: [
              Text(
                'Enter two numbers to print range between',
              ),
              TextFormField(
                controller: number1,
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
              SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: number2,
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
              /*             ElevatedButton(
                onPressed: () {} printNumbersBetweenTwo(number1, number2),
                //onPressed: () {},
                child: Text('Print Range'),
              ),
              */
              ElevatedButton(
                onPressed: (() {
                  setState(() {
                    printNumbersBetweenTwo(number1, number2);
                  });
                }),
                child: Text('Range'),
              ),
              Expanded(
                child: ListView.builder(
                    itemCount: resultList.length,
                    itemBuilder: ((context, index) {
                      return ListTile(
                        title: Text(
                          '$resultList',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 24,
                          ),
                        ),
                      );
                    })),
              ),
              //  ),
            ],
          ),
        ),
      ),
    );
  }

  int printNumbersBetweenTwo(number1, number2) {
    //int num1 = int.parse(number1.text.toString());
    // int num2 = int.parse(number2.text.toString());
resultList = [];
    setState(() {
      int num1 = int.parse(number1.text.toString());
      int num2 = int.parse(number2.text.toString());
      
      for (i = num1; i <= num2; i++) {
        //print('$i');
        result = i;
        // print('$result');
        // return result.toString();
        print('$result');
        // return result;
        resultList.add(i);
      }
    });
    return result;
  }
}
