import 'package:flutter/material.dart';
import '../feedback_question/ResultMessages.dart';

class Result extends StatefulWidget {
  final int value;
  const Result({Key? key, required this.value}) : super(key: key);

  @override
  _ResultState createState() => _ResultState();
}

class _ResultState extends State<Result> {
  @override
  Widget build(BuildContext context) {
    String message = '';
    Color color = Colors.black;
    if (widget.value <= 10) {
      message = ResultMessages[0];
      color = Colors.red;
    } else if (widget.value <= 20) {
      message = ResultMessages[1];
      color = Colors.yellow;
    } else if (widget.value <= 30) {
      message = ResultMessages[2];
      color = Colors.green;
    }
    return Scaffold(
        appBar: AppBar(
          title: Text('Thank you for your time!'),
          centerTitle: true,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Center(child: Text(message, style: TextStyle(color: color, fontSize: 30))),
          ],
        ));
  }
}
