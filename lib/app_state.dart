import 'package:flutter/material.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  List<dynamic> _contractorList = [];
  List<dynamic> get contractorList => _contractorList;
  set contractorList(List<dynamic> value) {
    _contractorList = value;
  }

  void addToContractorList(dynamic value) {
    contractorList.add(value);
  }

  void removeFromContractorList(dynamic value) {
    contractorList.remove(value);
  }

  void removeAtIndexFromContractorList(int index) {
    contractorList.removeAt(index);
  }

  void updateContractorListAtIndex(
    int index,
    dynamic Function(dynamic) updateFn,
  ) {
    contractorList[index] = updateFn(_contractorList[index]);
  }

  void insertAtIndexInContractorList(int index, dynamic value) {
    contractorList.insert(index, value);
  }
}
