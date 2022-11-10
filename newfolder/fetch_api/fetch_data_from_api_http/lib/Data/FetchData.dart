import 'dart:convert';

import 'package:fetch_data_from_api_http/Model/UserModel.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class FetchData extends StatefulWidget {
  const FetchData({Key? key}) : super(key: key);

  @override
  State<FetchData> createState() => _FetchDataState();
}

class _FetchDataState extends State<FetchData> {
  Future<List<User>> myNewFuture() async {
    final respone =
        await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'));

    if (respone.statusCode == 200) {
      List list = jsonDecode(respone.body);
      return list.map((e) => User.fromJson(e)).toList();
    } else {
      throw Exception('Unexpected Error Occured');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fetching of data through http'),
      ),
      body: FutureBuilder(
        future: myNewFuture(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            List<User> myUserData = snapshot.data!;
            return ListView.builder(
                itemCount: myUserData.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: Column(
                      children: [Text(myUserData[index].id.toString() ?? '')],
                    ),
                  );
                });
          }
          if (snapshot.hasError) {
            print(snapshot.error);
          }
          return CircularProgressIndicator();
        },
      ),
    );
  }
}
