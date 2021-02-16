import 'package:bytebank/ItemTransfer.dart';
import 'package:bytebank/Transfer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ColumnTransferList extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(
        title: Text("teste"),
      ),
      body: Column(
        children: [
          ItemTransfer(Transfer(100.0, 1000)),
          ItemTransfer(Transfer(200.0, 1001)),
          ItemTransfer(Transfer(300.0, 1002)),
          ItemTransfer(Transfer(400.0, 1003))
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
      ));
}
