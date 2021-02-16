import 'package:bytebank/Editor.dart';
import 'package:bytebank/Transfer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TransferForm extends StatelessWidget {
  final TextEditingController _controllerAccountNumber = TextEditingController();
  final TextEditingController _controllerValue = TextEditingController();

  int accountNumber;
  double value;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Criando Tranferência')),
        body: Column(
          children: [
            Editor(controller: _controllerAccountNumber, label: 'Número da conta', hint: '0000'),
            Editor(controller: _controllerValue, label: 'Valor', hint: '0.0', icon: Icons.monetization_on),
            RaisedButton(
                child: Text('Confirmar'),
                onPressed: () => _createTransfer())
          ],
        ));
  }

  void _createTransfer() {
     accountNumber = int.tryParse(_controllerAccountNumber.text);
    value = double.tryParse(_controllerValue.text);

    if(accountNumber != null && value != null){
      final transfer = Transfer(value, accountNumber);
    }
  }
}
