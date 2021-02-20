import 'package:bytebank/model/transfer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemTransfer extends StatelessWidget {

  final Transfer _transfer;

  ItemTransfer(this._transfer);

  @override
  Widget build(BuildContext context) => Card(
      child: ListTile(
        leading: Icon(Icons.monetization_on),
        title: Text(_transfer.value.toString()),
        subtitle: Text(_transfer.account.toString()),
      )
  );

}