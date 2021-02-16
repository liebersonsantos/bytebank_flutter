import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'TransferForm.dart';

class ByteBankApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: TransferForm()
      ),
    );
  }
}
