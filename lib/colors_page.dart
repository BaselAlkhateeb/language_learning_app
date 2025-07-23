import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:language_learning_app/myModels/family_member_model.dart';
import 'package:language_learning_app/myModels/color_model.dart';

import 'package:language_learning_app/mywidgets/my_number_container.dart';

class ColorsPage extends StatelessWidget {
  const ColorsPage({super.key});
final List<Color> myColor = const [

    Color(
      imagePath: 'assets/images/colors/color_black.png',
      enName: 'black',
      jpName: 'Kuro',
      soundPath: 'assets/sounds/colors/black.wav'

    ),
        Color(
      imagePath: 'assets/images/colors/color_brown.png',
      enName: 'brown',
      jpName: 'Chairo',
      soundPath: 'assets/sounds/colors/brown.wav'

    ),
    Color(
      imagePath: 'assets/images/colors/color_dusty_yellow.png',
      enName: 'dusty yellow',
      jpName: 'Hokori ppoi kiiro',
      soundPath: 'assets/sounds/colors/dusty yellow.wav'

    ),
        Color(
      imagePath: 'assets/images/colors/color_gray.png',
      enName: 'gray',
      jpName: 'Gurē',
      soundPath: 'assets/sounds/colors/gray.wav'

    ),
        Color(
      imagePath: 'assets/images/colors/color_white.png',
      enName: 'white',
      jpName: 'Shiro',
      soundPath: 'assets/sounds/colors/white.wav'

    ),
        Color(
      imagePath: 'assets/images/colors/color_green.png',
      enName: 'green',
      jpName: 'Midori',
      soundPath: 'assets/sounds/colors/green.wav'

    ),
        Color(
      imagePath: 'assets/images/colors/color_red.png',
      enName: 'red',
      jpName: 'Aka',
      soundPath: 'assets/sounds/colors/red.wav'

    ),
        Color(
      imagePath: 'assets/images/colors/yellow.png',
      enName: 'yellow',
      jpName: 'Kiiro',
      soundPath: 'assets/sounds/colors/yellow.wav'

    ),
  ];

  @override
  Widget build(BuildContext context) {
    return  AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(systemNavigationBarColor: Colors.green),
      child: Scaffold(
        backgroundColor: Colors.green,
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back, color: Colors.white),
          ),
          backgroundColor: Colors.green,
          title: Text(
            'Colors',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
        body: ListView.builder(
          itemCount: myColor.length,
          itemBuilder: (context, index) {
            return MyNumberContainer(obj: myColor[index] , 
            //color: Colors.green,
             color: index.isEven? Colors.green.shade600: Colors.green.shade300
            
            );
          },
        ),
      ),
    );
  }
}