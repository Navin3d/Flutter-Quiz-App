import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_sample/pages/Home.dart';
import 'package:provider_sample/model/Result.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => Result(),
      child: MaterialApp(
        home: Home(),
      ),
    );
  }
}
