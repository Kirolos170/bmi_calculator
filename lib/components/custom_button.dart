import 'package:flutter/material.dart';

class CutomButton extends StatelessWidget {
  String? text;
  VoidCallback whenpressed;

  CutomButton({ required this.text,required this.whenpressed});

  @override
  Widget build(BuildContext context) {
    return



       InkWell(
         onTap: whenpressed,
         child: Container(
          height: 100,
          child: Center(
              child: Text(
            text!,
            style: TextStyle(fontSize: 25, color: Colors.white),
          )),
          color: Colors.pink,
      ),
       );

  }
}
