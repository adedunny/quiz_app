import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:quiz2_app/data/data.dart';
import 'package:quiz2_app/model/questionModel.dart';

class QuizPlay extends StatefulWidget {
  @override
  _QuizPlayState createState() => _QuizPlayState();
}

class _QuizPlayState extends State<QuizPlay>
    with SingleTickerProviderStateMixin {
  int index = 0;
  double beginAnim = 0.0, endAnim = 1.0;
  Animation animation;
  AnimationController animationController;
  int correct = 0, incorrect = 0, notAttempted = 0, points = 0;

  List<QuestionModel> _question = new List<QuestionModel>();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _question = getQuestion();
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 12)
        )..addListener(() {
          setState((){
            
          });
        });
    animation =
        Tween(begin: beginAnim, end: endAnim).animate(animationController);
        startAnimation();
          animationController.addStatusListener((AnimationStatus status) {
            if(status == AnimationStatus.completed){
              setState(() {
               if(index < _question.length -1){
                  index++;
                resetAnim();
                startAnimation();
               }
              });
            }
          }
        );
  }
  startAnimation(){
    animationController.forward();
  }
  resetAnim(){
    animationController.reset();
  }
  stopAnim(){
    animationController.stop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 54),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text('${index + 1}/${_question.length}',
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.w500)),
                    SizedBox(width: 8),
                    Text(
                      'Questions',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w300),
                    ),
                    Spacer(),
                    Text('$points',
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.w500)),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      'Points',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w300),
                    )
                  ],
                ),
              ),
              SizedBox(height: 40),
              Center(
                child: Text(
                  '${_question[index].getQuestion() }?',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                  ),
                ),
              ),
              SizedBox(height: 20),
              LinearProgressIndicator(
                value: animation.value,
              ),
              CachedNetworkImage(imageUrl: _question[index].getImageUrl()),
              Spacer(),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                  children: [
                    Expanded(
                      child: InkWell(
                        onTap: () => _checkAnswer(),
                                              child: Container(
                            padding: EdgeInsets.symmetric(vertical: 12),
                            alignment: Alignment.center,
                            child: Center(
                                child: Text(
                              'True',
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500),
                            )),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(24),
                                color: Colors.blue),
                          ),
                      ),
                    ),
                    SizedBox(width: 20),
                    Expanded(
                      child: InkWell(
                        onTap: () => _checkAnswer1(),
                                              child: Container(
                        padding: EdgeInsets.symmetric(vertical: 12),
                        alignment: Alignment.center,
                        child: Center(
                            child: Text('False',
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500))),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(24),
                            color: Colors.red),
                          ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
   _checkAnswer(){
     if(_question[index].answer=='True'){
       setState(() {
          points =points+20;
          resetAnim();
          startAnimation();
          index++;
           

       });
      
             
           
     }
      
           else{
             setState(() {
                 points = points -5;
             resetAnim();
             startAnimation();
             index++;
             });
            
           }
     
    
   }

    _checkAnswer1(){
        if(_question[index].answer=='True'){
       setState(() {
          points =points+20;
          resetAnim();
          startAnimation();
          index++;
       });
         
        }
           else{
             setState(() {
                 points = points +20;
             resetAnim();
             startAnimation();
             index++;
             });
               
           }
             
     
      
   }
   
   
}
