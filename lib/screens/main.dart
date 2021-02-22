
import 'package:bytebank/model/balance.dart';
import 'package:bytebank/screens/byte_bank_app.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
    builder: (context) => Balance(10),
    child: ByteBankApp(),
  ));
  // runApp(ByteBankApp());
}
