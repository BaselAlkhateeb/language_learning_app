
//import 'package:audioplayers/audioplayers.dart';

import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
import 'package:language_learning_app/myModels/numberModel.dart';


class MyNumberContainer extends StatelessWidget {
   const MyNumberContainer({
    required this.obj ,
    super.key,
  });
final Number obj;
  
Future<void> _playSound() async {
    final player = AudioPlayer(); // مؤقت
    await player.setAsset(obj.soundPath);
    player.play();

    // تأخير بسيط ثم الإغلاق
    Future.delayed(const Duration(seconds: 2), () {
      player.dispose();
    });
  }


  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
    
      color: Colors.purple,
      width: MediaQuery.sizeOf(context).width,
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: RadialGradient(
                colors: [Colors.pink, Colors.purple],
              ),
            ),
            child: Image.asset(obj.imagePath),
          ),
          VerticalDivider(color: Colors.white, thickness: 1),
         
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  obj.jpName,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                Text(
                  obj.enName,
                  style: TextStyle(color: Colors.white, fontSize: 13),
                ),
              ],
            ),
          ),
          Spacer(flex: 1),
          IconButton(
            onPressed: () {
_playSound();
            },
            icon: Icon(Icons.play_circle, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
