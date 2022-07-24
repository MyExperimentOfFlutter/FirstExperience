import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyTask5 extends StatefulWidget {
  const MyTask5({Key? key}) : super(key: key);

  @override
  State<MyTask5> createState() => _MyTask5State();
}

class _MyTask5State extends State<MyTask5> {
  double myFontSize = 45;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Task 5'),
      ),
      body: Container(
        child: Column(
          children: [
            Text(
              'I AM FONT',
              style: TextStyle(color: Colors.cyan, fontSize: myFontSize),
            ),
            SizedBox(
              height: 124,
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          myFontSize = myFontSize + 1;
                        });
                      },
                      child: Text('Increse'),
                    ),
                  ),
                  SizedBox(
                    width: 18,
                  ),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          myFontSize = myFontSize - 1;
                        });
                      },
                      child: Text('Decrese'),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
