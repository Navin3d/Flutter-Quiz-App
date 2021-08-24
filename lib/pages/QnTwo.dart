import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_sample/model/Result.dart';
import 'package:provider_sample/pages/QnThree.dart';

class QnTwo extends StatefulWidget {
  @override
  _QnTwoState createState() => _QnTwoState();
}

class _QnTwoState extends State<QnTwo> {
  ListTile eachTile(String option, String qn, value) {
    return ListTile(
      title: Text(qn),
      leading: CircleAvatar(
        child: Text(option),
      ),
      selectedTileColor: Colors.green[300],
      onTap: () {
        value;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Qn No 2"),
      ),
      body: Padding(
        padding: EdgeInsets.all(50),
        child: Consumer<Result>(
          builder: (context, value, child) {
            return ListView(
              children: <Widget>[
                SizedBox(
                  height: 60,
                  child: Text("Who is the PM of Afganistan : "),
                ),
                eachTile("A", "Dr Mohammad Ashraf Ghani", value.add(2, true)),
                eachTile("B", "Nakkul", value.add(2, false)),
                eachTile("C", "Hishore", value.add(2, false)),
                eachTile("D", "Navin", value.add(2, false)),
                ElevatedButton(
                  onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => QnThree(),
                    ),
                  ),
                  child: Text("NEXT >>>"),
                ),
                ElevatedButton(
                  onPressed: () => Navigator.pop(context),
                  child: Text("<<< Go Back"),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
