import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:language_learning_app/myModels/phrases_model.dart';
import 'package:language_learning_app/mywidgets/my_number_container.dart';

class PhrasesPage extends StatelessWidget {
   PhrasesPage({super.key});
final List<Phrase> myPhrase = [

    const Phrase(
    
      enName: 'are you coming?',
      jpName: 'Kimasu ka?',
      soundPath: 'assets/sounds/phrases/are_you_coming.wav'

    ),
    const Phrase(
    
      enName: 'don\'t forget to subscribe ',
      jpName: 'Kōdoku o o wasurenaku',
      soundPath: 'assets/sounds/phrases/dont_forget_to_subscribe.wav'

    ),    const Phrase(
    
      enName: 'How are you feeling?',
      jpName: 'Go kibun wa ikagadesu ka?',
      soundPath: 'assets/sounds/phrases/how_are_you_feeling.wav'

    ),    const Phrase(
    
      enName: 'I love anime',
      jpName: 'Anime ga daisukidesu',
      soundPath: 'assets/sounds/phrases/i_love_anime.wav'

    ),    const Phrase(
    
      enName: 'I live programming',
      jpName: 'Puroguramingu o shinagara\n ikite imasu',
      soundPath: 'assets/sounds/phrases/i_love_programming.wav'

    ),    const Phrase(
    
      enName: 'What is your name?',
      jpName: 'Anata no namae wa nanidesu ka?',
      soundPath: 'assets/sounds/phrases/what_is_your_name.wav'

    ),    const Phrase(
    
      enName: 'Where are you going ?',
      jpName: 'Doko ni iku no?',
      soundPath: 'assets/sounds/phrases/where_are_you_going.wav'

    ),
    const Phrase(
    
      enName: 'yes , I am coming',
      jpName: 'Hai, ikimasu',
      soundPath: 'assets/sounds/phrases/yes_im_coming.wav'

    ),
  ];

  @override
  Widget build(BuildContext context) {
    return  AnnotatedRegion<SystemUiOverlayStyle>(
value: SystemUiOverlayStyle(systemNavigationBarColor: Colors.blue),
      child: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back, color: Colors.white),
          ),
          backgroundColor: Colors.blue,
          title: Text(
            'Phrases',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
        body: ListView.builder(
          itemCount: myPhrase.length,
          itemBuilder: (context, index) {
            return MyNumberContainer(obj: myPhrase[index] , 
            //color: Colors.green,
             color: index.isEven? Colors.blue.shade600: Colors.blue.shade300
            
            );
          },
        ),
      ),
    );
  }
}