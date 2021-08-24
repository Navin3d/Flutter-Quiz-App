import 'package:flutter/material.dart';

class Result with ChangeNotifier {
  final Map<int, bool> _results = {};

  Map<int, bool> get results => _results;

  add(int index, bool res) {
    _results.addAll({index: res});
    print(_results);
    notifyListeners();
  }
}
