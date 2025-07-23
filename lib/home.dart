import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:language_learning_app/colors_page.dart';
import 'package:language_learning_app/family_members_page.dart';
import 'package:language_learning_app/mywidgets/mycontainer.dart';
import 'package:language_learning_app/numbers_page.dart';
import 'package:language_learning_app/phrases_page.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(systemNavigationBarColor: Colors.deepPurple),
      child: Scaffold(
        
        appBar: AppBar(
          
          title: Text(
            'Toku',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          backgroundColor: Colors.deepPurple,
        ),
      
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MyContainer(
              text: 'Numbers',
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return NumbersPage();
                }));
              },
            ),
            MyContainer(
              text: 'Family Members',
              widthRatio: 0.85,
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return FamilyMembersPage();
                }));
              },
            ),
            MyContainer(
              text: 'Colors',
              widthRatio: 0.8,
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return ColorsPage();
                }));
              },
            ),
            MyContainer(
              text: 'Phrases',
              widthRatio: 0.75,
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return PhrasesPage();
                }));
              },
            ),
          ],
        ),
      ),
    );
  }
}
