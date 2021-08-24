import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_sample/model/Result.dart';
import 'package:provider_sample/pages/QnOne.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Padding(
        padding: EdgeInsets.all(50),
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => QnOne(),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.all(50),
                child: Text("Take Quiz"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
