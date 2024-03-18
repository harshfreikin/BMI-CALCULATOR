import 'package:flutter/material.dart';
import 'constants.dart';

class BottomButton extends StatelessWidget {

  BottomButton({required this.onTap,required this.buttonTitle});


  final String buttonTitle;
  final onTap;

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(
            buttonTitle,
            style: TextStyle(
              fontSize: 25.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            color: Colors.pink),
        margin: EdgeInsets.only(
            top: 10.0, bottom: 10.0, left: 10.0, right: 10.0),
        padding: EdgeInsets.only(bottom: 20.0,top: 20.0),
        width: double.infinity,
        height: kBottomCantainerHeight,
      ),
    );
  }
}