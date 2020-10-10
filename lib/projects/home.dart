import 'package:flutter/material.dart';
import 'package:quiz2_app/projects/quiz_play.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
            backgroundColor: Colors.white,
            body: Center(
              child: InkWell(
                onTap: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(
                          builder: (context) => QuizPlay(),
                  ));
                  
                },
                              child: Container(
                                padding: EdgeInsets.symmetric(vertical:12, horizontal:54),
                  decoration: BoxDecoration(
                    color:Colors.blue,
                    borderRadius: BorderRadius.circular(24),
                  ),
                  child: Text('Start Quiz Now', style: TextStyle(
                    color:Colors.white,
                    fontSize: 17
                  ),),
                ),
              ),
            )      
    );
  }
}