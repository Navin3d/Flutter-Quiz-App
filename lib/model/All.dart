import 'package:flutter/material.dart';
import 'package:provider_sample/model/Question.dart';

class All extends ChangeNotifier {
  final List<Question> _questions = [];

  List<Question> get questions => _questions;

  add(Question ques) {
    _questions.add(ques);
    notifyListeners();
  }

  remove(Question ques) {
    _questions.removeWhere((element) => element == ques);
    notifyListeners();
  }
}
