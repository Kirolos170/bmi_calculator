import 'package:flutter/material.dart';
import 'package:ibmcalculator/components/custom_button.dart';
import 'package:ibmcalculator/components/custom_container.dart';
import 'package:ibmcalculator/constants.dart';
class ResultPage extends StatelessWidget {

  String result;
  String Bmi;
  String messageresult;


  ResultPage({required this.result,required this.Bmi,required this.messageresult});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
        title: Center(child: Text("Bmi Calculator")),
    backgroundColor: Colors.black45,
        ),
body:
 Column(
  children: [
    Text("You Result",style: numbertextstyle,),
    Expanded(child: CustomContainer(
      containerchild: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
        Center(child: Text("${result}" , style: TextStyle(fontSize: 30,color: Colors.green,fontWeight: FontWeight.w600),)),
        SizedBox(height: 20,),
        Center(child: Text("${Bmi}",style: numbertextstyle,)),
          SizedBox(height: 20,),
        Center(child: Text("${messageresult}"))

      ],),
    )),
    CutomButton(text: "Recalculate",whenpressed: (){

      Navigator.pop(context);

    }),
  ],
),
         );
  }
}
