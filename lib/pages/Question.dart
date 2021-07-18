import 'package:flutter/material.dart';
import './Result.dart';
import '../feedback_question/feedbackQuestions.dart';

class Question extends StatefulWidget {
  final int value;
  final int index;

  const Question({Key? key, required this.value, required this.index})
      : super(key: key);

  @override
  _QuestionState createState() => _QuestionState();
}

class _QuestionState extends State<Question> {
  double _currentSliderValue = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            // title: Text('Page 1'),
            // centerTitle: true,
            ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Center(
              child: Text(feebackQuestions[widget.index], style: TextStyle(fontSize: 20),),
            ),
            // Center(child: Text('${widget.value}')),
            Center(
              child: Slider(
                  value: _currentSliderValue,
                  min: 0,
                  max: 5,
                  divisions: 5,
                  label: _currentSliderValue.round().toString(),
                  onChanged: (double value) {
                    setState(() {
                      _currentSliderValue = value;
                    });
                  }),
            ),
            Center(
              child: ElevatedButton(
                  onPressed: () {
                    // Navigator.pushNamed(context, '/Question1');
                    if (widget.index == feebackQuestions.length-1) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Result(
                              value: widget.value + _currentSliderValue.round(),
                            ),
                          ));
                    } else {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Question(
                                value:
                                    widget.value + _currentSliderValue.round(),
                                index: widget.index + 1),
                          ));
                    }
                  },
                  child: Text('Submit')),
            )
          ],
        ));
  }
}
