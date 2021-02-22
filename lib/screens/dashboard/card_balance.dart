import 'package:bytebank/model/balance.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CardBalance extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: EdgeInsets.all(20.0),
        child: Consumer<Balance>(
          builder: (context, value, child){
            return Text(
              value.toString(),
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            );
          },
        )

      ),
    );
  }
}
