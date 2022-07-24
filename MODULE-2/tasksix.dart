import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyTaskSix extends StatefulWidget {
  const MyTaskSix({Key? key}) : super(key: key);

  @override
  State<MyTaskSix> createState() => _MyTaskSixState();
}

class _MyTaskSixState extends State<MyTaskSix> {
  TextEditingController ItemCount = TextEditingController();
  var count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'self doing task 6',
          ),
        ),
        body: Container(
          child: Column(
            children: [
              TextField(
                controller: ItemCount,
                decoration: InputDecoration(
                  hintText: 'please enter number',
                ),
              ),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    count = int.parse(ItemCount.text.toString());
                  });
                },
                child: Text('submit'),
              ),
              SizedBox(
                height: 30,
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: count,
                  itemBuilder: ((context, index) {
                    return ListTile(
                      title: TextField(
                        decoration: InputDecoration(hintText: '${index + 1}'),
                      ),
                    );
                  }),
                ),
              ),
            ],
          ),
        ));
  }
}
