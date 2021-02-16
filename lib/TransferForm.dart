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
           
            Padding(
              padding: const EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 8.0),
              child: TextField(
                controller: _controllerValue,
                style: TextStyle(fontSize: 24),
                decoration: InputDecoration(
                  icon: Icon(Icons.monetization_on),
                  labelText: 'Valor',
                  hintText: '0.0',
                ),
                keyboardType: TextInputType.number,
              ),
            ),
            RaisedButton(
                child: Text('Confirmar'),
                onPressed: () {
                  accountNumber = int.tryParse(_controllerAccountNumber.text);
                  value = double.tryParse(_controllerValue.text);

                  if(accountNumber != null && value != null){
                    final transfer = Transfer(value, accountNumber);
                    debugPrint('$transfer');
                  }
                })
          ],
        ));
  }
}
