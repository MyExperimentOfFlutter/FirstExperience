import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyTaskEight extends StatefulWidget {
  const MyTaskEight({Key? key}) : super(key: key);

  @override
  State<MyTaskEight> createState() => _MyTaskEightState();
}

class _MyTaskEightState extends State<MyTaskEight> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Task 8'),
      ),
      body: Container(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // Container(
                //   decoration: BoxDecoration(
                //       borderRadius: BorderRadius.circular(20),
                //       color: Colors.blue),
                //   width: 130,
                //   height: 130,
                // ),
                Image.asset(
                  'assets/images/smily.png',
                  width: 130.0,
                  height: 130.0,
                  fit: BoxFit.cover,
                ),
                SizedBox(
                  width: 15,
                ),
                // Container(
                //   decoration: BoxDecoration(
                //       borderRadius: BorderRadius.circular(20),
                //       color: Colors.blue),
                //   width: 130,
                //   height: 130,
                // ),
                Image.asset(
                  'assets/images/smily.png',
                  width: 130.0,
                  height: 130.0,
                  fit: BoxFit.cover,
                ),
              ],
            ),
            SizedBox(
              height: 36,
            ),
            Container(
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'TextField',
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 36,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // Container(
                //   decoration: BoxDecoration(
                //       borderRadius: BorderRadius.circular(20),
                //       color: Colors.blue),
                //   width: 130,
                //   height: 130,
                // ),
                Image.asset(
                  'assets/images/smily.png',
                  width: 130.0,
                  height: 130.0,
                  fit: BoxFit.cover,
                ),
                SizedBox(
                  width: 15,
                ),
                // Container(
                //   decoration: BoxDecoration(
                //       borderRadius: BorderRadius.circular(20),
                //       color: Colors.blue),
                //   width: 130,
                //   height: 130,
                // ),
                Image.asset(
                  'assets/images/smily.png',
                  width: 130.0,
                  height: 130.0,
                  fit: BoxFit.cover,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
