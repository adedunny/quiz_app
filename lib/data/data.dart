
import 'package:quiz2_app/model/questionModel.dart';

List<QuestionModel> getQuestion(){

       List<QuestionModel> question = new List<QuestionModel>();
       QuestionModel questionModel = new QuestionModel();

       //first question
       questionModel.setQuestion('A baby has more bones than an adult');
       questionModel.setAnswer('False');
       questionModel.setImageUrl('https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fstatic.onecms.io%2Fwp-content%2Fuploads%2Fsites%2F38%2F2015%2F06%2F12223208%2Fshutterstock_88040917.jpg&q=85');
       question.add(questionModel);
       questionModel  = new QuestionModel();

       //second question
        questionModel.setQuestion('A Shark can blink its eye');
       questionModel.setAnswer('True');
       questionModel.setImageUrl('https://static01.nyt.com/images/2020/08/12/multimedia/00xp-shark/merlin_102239914_6de5d563-4aaa-44d7-bdb0-2a263e515181-superJumbo.jpg');
       question.add(questionModel);
        questionModel  = new QuestionModel();


         //third question
        questionModel.setQuestion('The U.S dollars are made from fiber');
       questionModel.setAnswer('False');
       questionModel.setImageUrl('https://images.livemint.com/img/2020/03/23/600x338/usdollarnew2-kRGD--621x414@LiveMint_1584935842548.jpg');
       question.add(questionModel);
        questionModel  = new QuestionModel();

         //fourth question
        questionModel.setQuestion('Sandwich is named after a person');
       questionModel.setAnswer('True');
       questionModel.setImageUrl('https://images.immediate.co.uk/production/volatile/sites/30/2020/08/egg-cress-club-sandwich_0-43a103c.jpg?quality=90&resize=768,574');
       question.add(questionModel);
       questionModel  = new QuestionModel();

          //fifith question
        questionModel.setQuestion('Tiger can mate with other big cats');
       questionModel.setAnswer('True');
       questionModel.setImageUrl('https://www.ranthamborenationalpark.com/blog/wp-content/uploads/2018/03/Tigers-largest-amongst-other-wild-cats.jpg');
       question.add(questionModel);
       questionModel = new QuestionModel();

       //sixth question
         questionModel.setQuestion('An Ostrich has the largest eyes eyes in the world');
       questionModel.setAnswer('False');
       questionModel.setImageUrl('https://www.farm4trade.com/wp-content/uploads/2019/07/Ostrich-farming-a-high-profitable-business-Farm4Trade-1600x750.jpg');
       question.add(questionModel);
       questionModel = new QuestionModel();


       //seventh question
        questionModel.setQuestion('Some 16 billion emails are send daily');
       questionModel.setAnswer('False');
       questionModel.setImageUrl('https://q3p9g6n2.rocketcdn.me/wp-content/ml-loads/2015/12/email_ss_1920-800x452.png');
       question.add(questionModel);
       questionModel = new QuestionModel();
           
           //eight question
            questionModel.setQuestion('Gorilla\'s blood type is all B');
       questionModel.setAnswer('True');
       questionModel.setImageUrl('https://images.theconversation.com/files/246210/original/file-20181119-76137-1c4570v.jpg?ixlib=rb-1.1.0&q=45&auto=format&w=1356&h=668&fit=crop');
       question.add(questionModel);

       return question;


}