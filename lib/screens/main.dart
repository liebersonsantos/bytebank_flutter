import 'package:bytebank/model/balance.dart';
import 'package:bytebank/model/tranfers.dart';
import 'package:bytebank/screens/byte_bank_app.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(builder: (context) => Balance(0)),
      ChangeNotifierProvider(builder: (context) => Transfers())
    ],
    child: ByteBankApp(),
  ));
  // runApp(ByteBankApp());
}
