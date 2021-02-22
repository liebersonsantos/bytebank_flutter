import 'package:bytebank/model/balance.dart';
import 'package:bytebank/screens/dashboard/card_balance.dart';
import 'package:bytebank/screens/deposit/deposit_form.dart';
import 'package:bytebank/screens/transfer/transfer_form.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('ByteBank')),
        body: ListView(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: (CardBalance()),
            ),
            ButtonBar(
              alignment: MainAxisAlignment.center,
              children: [
                RaisedButton(
                  child: Text('Receber Depósito'),
                  color: Colors.green,
                  onPressed: () {
                    // balance.subtractValue(10);
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return DepositForm();
                    }));
                  },
                ),
                RaisedButton(
                    color: Colors.green,
                    child: Text('Nova Transferência'),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) {
                          return TransferForm();
                        }),
                      );
                    })
              ],
            )
          ],
        ));
  }
}
