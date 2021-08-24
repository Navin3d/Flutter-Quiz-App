import 'package:flutter/material.dart';
import 'package:provider_sample/pages/ResultPage.dart';

class QnFour extends StatefulWidget {
  @override
  _QnFourState createState() => _QnFourState();
}

class _QnFourState extends State<QnFour> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Qn No 4"),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ResultPage(),
                ),
              ),
              child: Text("Finish..."),
            ),
            ElevatedButton(
              onPressed: () => Navigator.pop(context),
              child: Text("<<< Go Back"),
            ),
          ],
        ),
      ),
    );
  }
}
