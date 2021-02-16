import 'package:flutter/material.dart';

class Editor extends StatelessWidget {



  @override
  Widget build(BuildContext context) =>  Padding(
    padding: const EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 8.0),
    child: TextField(
      controller: _controllerAccountNumber,
      style: TextStyle(fontSize: 24),
      decoration: InputDecoration(
        labelText: 'Número da conta',
        hintText: '0000',
      ),
      keyboardType: TextInputType.number,
    ),
  );
}
