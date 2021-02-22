import 'package:bytebank/components/editor.dart';
import 'package:bytebank/model/balance.dart';
import 'package:bytebank/model/tranfers.dart';
import 'package:bytebank/model/transfer.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

const _appBarTitle = 'Criando Transferência';
const _labelAccountNumber = 'Número da conta';
const _hintAccountNumber = '0000';
const _labelValue = 'Valor';
const _hintValue = '0.00';
const _confirm = 'Confirmar';

class TransferForm extends StatelessWidget {
  final TextEditingController _controllerAccountNumber =
      TextEditingController();
  final TextEditingController _controllerValue = TextEditingController();

  int accountNumber;
  double value;

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(title: Text(_appBarTitle)),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Editor(
                  controller: _controllerAccountNumber,
                  label: _labelAccountNumber,
                  hint: _hintAccountNumber),
              Editor(
                  controller: _controllerValue,
                  label: _labelValue,
                  hint: _hintValue,
                  icon: Icons.monetization_on),
              RaisedButton(
                  child: Text(_confirm),
                  onPressed: () => _createTransfer(context)),
            ],
          ),
        ),
      );

  void _createTransfer(BuildContext context) {
    accountNumber = int.tryParse(_controllerAccountNumber.text);
    value = double.tryParse(_controllerValue.text);

    if (_validateTransfer(context, accountNumber, value)) {
      final newTransfer = Transfer(value, accountNumber);
      _updateState(context, newTransfer, value);
      Navigator.pop(context);
    }
  }

  _validateTransfer(context, accountNumber, value) {
    final _filledFields = accountNumber != null && value != null;
    final _enoughBalance = value <= Provider.of<Balance>(context, listen: false).value;

    return _filledFields && _enoughBalance;
  }

  _updateState(context, newTransfer, value){
    Provider.of<Transfers>(context, listen: false).addTransferList(newTransfer);
    Provider.of<Balance>(context, listen: false).subtractValue(value);
  }
}
