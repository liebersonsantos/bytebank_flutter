import 'package:bytebank/screens/transfer/item_transfer.dart';
import 'package:bytebank/model/transfer.dart';
import 'package:bytebank/screens/transfer/transfer_form.dart';
import 'package:flutter/material.dart';

const _appBarTitle = 'Transferências';

class ColumnTransferList extends StatefulWidget {
  final List<Transfer> _list = List();

  @override
  State<StatefulWidget> createState() {
    return ColumnTransferListState();
  }
}

class ColumnTransferListState extends State<ColumnTransferList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(_appBarTitle),
        ),
        body: ListView.builder(
          itemCount: widget._list.length,
          itemBuilder: (context, indice) {
            final transfer = widget._list[indice];
            return ItemTransfer(transfer);
          },
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            Navigator.push(context,
                    MaterialPageRoute(builder: (context) => TransferForm()))
                .then((amountReceived) => update(amountReceived));
          },
        ));
  }

  void update(Transfer amountReceived) {
    if (amountReceived != null) {
      setState(() {
        widget._list.add(amountReceived);
      });
    }
  }
}
