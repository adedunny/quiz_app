class QuestionModel{

  String questions;
  String answer;
  String imageUrl;
  QuestionModel({this.questions, this.answer, this.imageUrl});

  void setQuestion(String getQuestion){
        questions = getQuestion;
  }
  void setAnswer(String getAnswer){
       answer = getAnswer;
  }

  void setImageUrl(String getImageUrl){
          imageUrl = getImageUrl;
  }

  String getQuestion(){
    return questions;
  }
   String getAnswer(){
    return getAnswer();
  }
   String getImageUrl(){
    return imageUrl;
  }
}