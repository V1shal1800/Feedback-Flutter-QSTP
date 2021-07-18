import 'package:flutter/material.dart';
import './Question.dart';

class Home extends StatelessWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
        title: Text('Feedback Application'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Center(
            child: ElevatedButton(
              onPressed: () {
                // Navigator.pushNamed(context, '/Question1');
                Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Question(value: 0,index: 0),
                ));
              }, 
              child: Text('Click to give your feedback') 
            ),
          )
        ],
      )
    );
  }
}