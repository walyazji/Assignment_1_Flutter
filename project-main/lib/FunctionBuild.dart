import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'JerusalemData.dart';

class FunctionBuild{
  static Widget buildString(JerusalemData data) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      padding: const EdgeInsets.symmetric(vertical: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: const Color(0xffc6c1c4),
      ),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(5),
            margin: const EdgeInsets.fromLTRB(7, 0, 10, 0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.white,
            ),
            alignment: Alignment.centerLeft,
            width: 220,

            child: Center(child: Text(data.value, style: const TextStyle(fontSize: 25))),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.white,
            ),
            alignment: Alignment.centerRight,
            padding: const EdgeInsets.all(5),
            margin: const EdgeInsets.fromLTRB(7, 0, 2, 0),
            width: 110,
            child: Center(child: Text(data.label, style: const TextStyle(fontSize: 25))),
          )
        ],
      ),
    );
  }

}