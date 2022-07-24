import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyTaskSeven extends StatefulWidget {
  const MyTaskSeven({Key? key}) : super(key: key);

  @override
  State<MyTaskSeven> createState() => _MyTaskSevenState();
}

class _MyTaskSevenState extends State<MyTaskSeven> {
  bool c_chk = false;
  bool value = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Task 7'),
      ),
      body: Container(
        child: Column(
          children: [
            TextField(
              enabled: value,
              decoration: InputDecoration(
                hintText: 'please enter value',
              ),
            ),
            SizedBox(
              height: 34,
            ),
            Checkbox(
              value: c_chk,
              onChanged: (myvalue) {
                setState(() {
                  if (c_chk) {
                    c_chk = false;
                    value = false;
                  } else {
                    c_chk = true;
                    value = true;
                  }
                });
              },
            ),
            Text('Enabled/Disabled Text Field'),
          ],
        ),
      ),
    );
  }
}
