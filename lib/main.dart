// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'quwstion.dart';
void main() => runApp(Quizzler());

class Quizzler extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
             child: QuizPage(),
          ),
        ),
      ),
    );
  }
}

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
 List <Icon>scorekeeper=[];
 List<Question> questionBank =[
Question(t:'You can lead a cow down stairs but not up stairs.',a: false ),
Question(t:'Approximately one quarter of human bones are in the feet.',a: true ),
Question(t:'A slug\'s blood is green.',a: true )

 ];

 int questionnumber =0;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 5,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                questionBank[questionnumber].questiontext,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: FlatButton(
              // غيري الفلات بتتن بال TextButton
              textColor: Colors.white, // https://www.youtube.com/watch?v=9YF8o1gRbyw   دا الفيديو راح يساعدك
              color:
                  Colors.green, // ازا في اي صعوبه او شي مو مفهوم اتواصلي معايا
              child: Text(
                'True',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
              onPressed: () {
                bool correctanswer = questionBank[questionnumber].questionanswer;
                if(correctanswer==true)
                print("user got it right!");
                else
                print("user got it wrong");
                setState(() {
                  questionnumber++;
                });
                
                print(questionnumber);
                //The user picked true.
              },
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: FlatButton(
              color: Colors.red,
              child: Text(
                'False',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                bool correctanswer = questionBank[questionnumber].questionanswer;
                if(correctanswer==false)
                print("user got it right!");
                else
                print("user got it wrong");
               setState(() {
                  questionnumber++;
                });
                print(questionnumber);
                //The user picked false.
              },
            ),
          ),
        ),
        Row(
          children:scorekeeper,
          
        )
        //TODO: Add a Row here as your score keeper
      ],
    );
  }
}

/*
question1: 'You can lead a cow down stairs but not up stairs.', false,
question2: 'Approximately one quarter of human bones are in the feet.', true,
question3: 'A slug\'s blood is green.', true,
*/
