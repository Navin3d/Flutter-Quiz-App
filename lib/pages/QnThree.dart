import 'package:flutter/material.dart';
import 'package:provider_sample/pages/QnFour.dart';

class QnThree extends StatefulWidget {
  @override
  _QnThreeState createState() => _QnThreeState();
}

class _QnThreeState extends State<QnThree> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Qn No 3"),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => QnFour(),
                ),
              ),
              child: Text("NEXT >>>"),
            ),
            ElevatedButton(
              onPressed: () => Navigator.pop(context),
              child: Text("<<< Back"),
            )
          ],
        ),
      ),
    );
  }
}
