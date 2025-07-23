import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:language_learning_app/myModels/family_member_model.dart';
import 'package:language_learning_app/mywidgets/my_number_container.dart';

class FamilyMembersPage extends StatelessWidget {
   FamilyMembersPage({super.key});
final List<FamilyMember> myFamilyMember = [

    const FamilyMember(
      imagePath: 'assets/images/family_members/family_father.png',
      enName: 'father',
      jpName: 'Chichioya',
      soundPath: 'assets/sounds/family_members/father.wav'

    ),
        const FamilyMember(
      imagePath: 'assets/images/family_members/family_mother.png',
      enName: 'mother',
      jpName: 'Hahaoya',
      soundPath: 'assets/sounds/family_members/mother.wav'

    ),
    const FamilyMember(
      imagePath: 'assets/images/family_members/family_grandfather.png',
      enName: 'grandfather',
      jpName: 'ojiisan',
      soundPath: 'assets/sounds/family_members/grand father.wav'

    ),
    const FamilyMember(
      imagePath: 'assets/images/family_members/family_grandmother.png',
      enName: 'grandmother',
      jpName: 'Sobo',
      soundPath: 'assets/sounds/family_members/grand mother.wav'

    ),

    const FamilyMember(
      imagePath: 'assets/images/family_members/family_son.png',
      enName: 'son',
      jpName: 'musuko',
      soundPath: 'assets/sounds/family_members/son.wav'

    ),
        const FamilyMember(
      imagePath: 'assets/images/family_members/family_daughter.png',
      enName: 'daughter',
      jpName: 'Musume',
      soundPath: 'assets/sounds/family_members/daughter.wav'
    ),
    const FamilyMember(
      imagePath: 'assets/images/family_members/family_older_brother.png',
      enName: 'older brother',
      jpName: 'o niisan',
      soundPath: 'assets/sounds/family_members/older bother.wav'

    ),

    const FamilyMember(
      imagePath: 'assets/images/family_members/family_older_sister.png',
      enName: 'older sister',
      jpName: 'Ane',
      soundPath: 'assets/sounds/family_members/older sister.wav'

    ),
    const FamilyMember(
      imagePath: 'assets/images/family_members/family_younger_brother.png',
      enName: 'younger brother',
      jpName: 'otouto',
      soundPath: 'assets/sounds/family_members/younger brohter.wav'

    ),
    FamilyMember(
      imagePath: 'assets/images/family_members/family_younger_sister.png',
      enName: 'younger sister',
      jpName: 'imoto',
      soundPath: 'assets/sounds/family_members/younger sister.wav'

    ),
  ];

  @override
  Widget build(BuildContext context) {
    return  AnnotatedRegion<SystemUiOverlayStyle>(
value: SystemUiOverlayStyle(systemNavigationBarColor: Colors.pink),
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back, color: Colors.white),
          ),
          backgroundColor: Colors.pink,
          title: Text(
            'Family Members',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
        body: ListView.builder(
          itemCount: myFamilyMember.length,
          itemBuilder: (context, index) {
            return MyNumberContainer(obj: myFamilyMember[index] , 
            //color: Colors.green,
             color: index.isEven? Colors.pink.shade600: Colors.pink.shade300
            
            );
          },
        ),
      ),
    );
  }
}