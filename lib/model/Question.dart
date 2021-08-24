import 'package:provider_sample/model/Option.dart';

class Question {
  final String text = "";
  final List<Option> options = [];
  final String solution = "";
  late Option selectedOption;

  // late int questionIndex = 0;
  // var questions = [
  //   "Who is the SUPER STAR",
  //   "Who is GOD of Indian Cinema",
  //   "which country is winner of 1ooM men's in Tokyo Olympics",
  //   "My this app is made of",
  //   "Do i like Flutter"
  // ];

  // String getQN(int questionIndex) {
  //   String qnToReturn = questions[questionIndex];
  //   questionIndex++;
  //   notifyListeners();
  //   return qnToReturn;
  // }
}
