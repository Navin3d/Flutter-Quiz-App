import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_sample/model/Result.dart';
import 'package:provider_sample/pages/QnTwo.dart';

class QnOne extends StatefulWidget {
  @override
  _QnOneState createState() => _QnOneState();
}

class _QnOneState extends State<QnOne> {
  ListTile eachTile(String choise, Result value, String option, bool crt) =>
      ListTile(
        title: Text(option),
        leading: CircleAvatar(
          child: Text(choise),
        ),
        onTap: () {
          value.add(1, crt);
        },
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("QN No 1"),
      ),
      body: Consumer<Result>(
        builder: (context, value, child) {
          return ListView(
            children: <Widget>[
              SizedBox(
                height: 60,
                child: Text("Who is The SuperStar : "),
              ),
              eachTile("A", value, "Rajni", true),
              eachTile("B", value, "Vijay", false),
              eachTile("C", value, "Kamal", false),
              eachTile("D", value, "Ajith", false),
              ElevatedButton(
                onPressed: () => Navigator.pop(context),
                child: Text("<<< Go Back"),
              ),
              ElevatedButton(
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => QnTwo(),
                  ),
                ),
                child: Text("Next >>>"),
              )
            ],
          );
        },
      ),
    );
  }
}
