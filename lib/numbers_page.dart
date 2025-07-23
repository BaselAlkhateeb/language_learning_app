import 'package:flutter/material.dart';
import 'package:language_learning_app/myModels/itemModel.dart';
import 'package:language_learning_app/myModels/numberModel.dart';
import 'package:language_learning_app/mywidgets/my_number_container.dart';

class NumbersPage extends StatelessWidget {
  const NumbersPage({super.key});

  final List<Number> myNumbers = const [
    Number(
      imagePath: 'assets/images/numbers/number_one.png',
      enName: 'one',
      jpName: 'ichi',
      soundPath: 'assets/sounds/numbers/number_one_sound.mp3',
    ),
    Number(
      imagePath: 'assets/images/numbers/number_two.png',
      enName: 'two',
      jpName: 'Ni',
      soundPath: 'assets/sounds/numbers/number_two_sound.mp3',
    ),
    Number(
      imagePath: 'assets/images/numbers/number_three.png',
      enName: 'three',
      jpName: 'San',
      soundPath: 'assets/sounds/numbers/number_three_sound.mp3',
    ),
    Number(
      imagePath: 'assets/images/numbers/number_four.png',
      enName: 'four',
      jpName: 'Shi',
      soundPath: 'assets/sounds/numbers/number_four_sound.mp3',
    ),
    Number(
      imagePath: 'assets/images/numbers/number_five.png',
      enName: 'five',
      jpName: 'Go',
      soundPath: 'assets/sounds/numbers/number_five_sound.mp3',
    ),
    Number(
      imagePath: 'assets/images/numbers/number_six.png',
      enName: 'six',
      jpName: 'Roku',
      soundPath: 'assets/sounds/numbers/number_six_sound.mp3',
    ),
    Number(
      imagePath: 'assets/images/numbers/number_seven.png',
      enName: 'seven',
      jpName: 'Sebun',
      soundPath: 'assets/sounds/numbers/number_seven_sound.mp3',
    ),
    Number(
      imagePath: 'assets/images/numbers/number_eight.png',
      enName: 'eight',
      jpName: 'hachi',
      soundPath: 'assets/sounds/numbers/number_eight_sound.mp3',
    ),
    Number(
      imagePath: 'assets/images/numbers/number_nine.png',
      enName: 'nine',
      jpName: 'Kyu',
      soundPath: 'assets/sounds/numbers/number_nine_sound.mp3',
    ),
    Number(
      imagePath: 'assets/images/numbers/number_ten.png',
      enName: 'ten',
      jpName: 'Ju',
      soundPath: 'assets/sounds/numbers/number_ten_sound.mp3',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back, color: Colors.white),
        ),
        backgroundColor: Colors.deepPurple,
        title: Text(
          'Numbers',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView.builder(
        itemCount: myNumbers.length,
        itemBuilder: (context, index) {
          return MyNumberContainer(obj: myNumbers[index],
           color: index.isEven? Colors.purple.shade600: Colors.purple.shade300
           );
        },
      ),
    );
  }
}
