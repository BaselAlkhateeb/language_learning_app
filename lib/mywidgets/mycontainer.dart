import 'dart:ui';

import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget {
  const MyContainer({
    super.key,
    required this.text,
    required this.onTap,
    this.widthRatio,
  });

final String text;
final double? widthRatio;
final VoidCallback onTap; 
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: Material(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(32),
          bottomRight: Radius.circular(32),
        ),
        elevation: 6,
        child: GestureDetector(
          onTap: onTap,
          child: Container(
            width: MediaQuery.sizeOf(context).width * (widthRatio??0.9),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.pink, Colors.deepPurple],
              ),
              
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(32),
                bottomRight: Radius.circular(32),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    text,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Icon(
                    Icons.arrow_circle_right_outlined,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
