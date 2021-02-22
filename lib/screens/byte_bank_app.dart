import 'package:bytebank/screens/dashboard/dashboard.dart';
import 'package:bytebank/screens/transfer/column_transfer_list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ByteBankApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.green[900],
        accentColor: Colors.blueAccent[700],
        buttonTheme: ButtonThemeData(
          buttonColor: Colors.blueAccent[700],
          textTheme: ButtonTextTheme.primary
        )
      ),
      // home: ColumnTransferList()
      home: Dashboard()
    );
  }
}
