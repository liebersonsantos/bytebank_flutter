import 'package:bytebank/model/transfer.dart';
import 'package:flutter/material.dart';

class Transfers extends ChangeNotifier{
  final List<Transfer> _transfers = [];

  List<Transfer> get transfers => _transfers;

  addTransferList(Transfer transfer){
    transfers.add(transfer);
    notifyListeners()
  }
}