import 'package:flutter/material.dart';
class CustomContainer extends StatelessWidget {
   CustomContainer({  this.containerchild , this.containercolor = Colors.grey});
Widget? containerchild;
Color? containercolor ;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(

        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
       color:containercolor ,
        ),

  child:  containerchild ,




      )
    );
  }
}
