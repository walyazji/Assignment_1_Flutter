import 'package:flutter/material.dart';

import 'FunctionBuild.dart';
import 'JerusalemData.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  Set<JerusalemData> data = {
    JerusalemData("الاسم", "القدس"),
    JerusalemData("المساحة", "125 كم"),
    JerusalemData("السكان", "358000 نسمة"),
    JerusalemData("الدولة", "فلسطين"),
    JerusalemData("اسم الطالب", "احمد هشام مهدي"),
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        centerTitle: true,
        title: const Text(
          'عاصمة فلسطين',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
        ),
      ),
      body: Column(
        children: [
          Image.asset("assets/img/jerusalem.png"),
          Center(
            child: Container(
              margin: const EdgeInsets.all(15),
              child: Column(
                children: [
                  const Text(
                    "مدينة القدس",
                    style: TextStyle(fontSize: 25),
                  ),
                  Column(
                    children: data.map((element) {
                      return FunctionBuild.buildString(element);
                    }).toList(),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
