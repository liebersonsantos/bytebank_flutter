import 'package:bytebank/components/editor.dart';
import 'package:bytebank/model/balance.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

const _appBarTitle = 'Receber Depósito';
const _labelValue = 'Valor';
const _hintValue = '0.00';
const _buttonConfirmText = 'Confirmar';

class DepositForm extends StatelessWidget {
  final TextEditingController _controllerValue = TextEditingController();

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text(_appBarTitle),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Editor(
                controller: _controllerValue,
                label: _labelValue,
                hint: _hintValue,
                icon: Icons.monetization_on,
              ),
              RaisedButton(
                  child: Text(_buttonConfirmText),
                  onPressed: () {
                    _createDeposit(context);
                  }),
            ],
          ),
        ),
      );

  void _createDeposit(context) {
    final double value = double.tryParse(_controllerValue.text);
    final isValid = _validateDeposit(value);

    if(isValid){
      _updateState(context, value);
      Navigator.pop(context);
    }
  }

  _validateDeposit(value) {
    final _valueField = value != null;
    return _valueField;
  }

  _updateState(context, value){
    Provider.of<Balance>(context, listen: false).addValue(value);
  }

}
