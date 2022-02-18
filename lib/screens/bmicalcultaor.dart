import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:ibmcalculator/components/custom_button.dart';
import 'package:ibmcalculator/components/custom_container.dart';
import 'package:ibmcalculator/constants.dart';
import 'result_page.dart';


class BmiCalculator extends StatefulWidget {
  BmiCalculator({Key? key}) : super(key: key);

  @override
  _BmiCalculatorState createState() => _BmiCalculatorState();
}

class _BmiCalculatorState extends State<BmiCalculator> {

  List<String> result = ["Under Weight" , "Normal" , "Over Weight"];
  List<String> message = ["You need to eat more" , "You have a good shape" , "You need to lose wight"];


  bool ismale = true;
  int age = 50;
  num weight = 100;
  num height = 120;
  num? bmi;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Center(child: Text("Bmi Calculator")),
        backgroundColor: Colors.black45,
      ),
      body: Column(
        children: [
          Expanded(
              child: Row(
            children: [
              Expanded(
                  child: InkWell(
                onTap: () {
                  setState(() {});
                  ismale = true;
                },
                child: CustomContainer(
                  containercolor: ismale ? Colors.pink : Colors.grey,
                  containerchild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.male,
                        size: 50,
                        color: Colors.white,
                      ),
                      Text(
                        "MAle",
                        style: TextStyle(fontSize: 30),
                      )
                    ],
                  ),
                ),
              )),
              Expanded(
                  child: InkWell(
                onTap: () {
                  setState(() {});
                  ismale = false;
                },
                child: CustomContainer(
                    containercolor: !ismale ? Colors.pink : Colors.grey,
                    containerchild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.female,
                            size: 50,
                            color: Colors.white,
                          ),
                          Text(
                            "Female",
                            style: TextStyle(fontSize: 30),
                          )
                        ])),
              )),
            ],
          )),
          Expanded(child: CustomContainer(
            containerchild: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              SizedBox(width: double.infinity,),
              Text("Height"),
              Text("${height} ",style: numbertextstyle,),
 Slider(
value: height.toDouble(),
 min: 100,
 max: 220,
 thumbColor: Colors.pink,
 activeColor: Colors.pink



 , onChanged: (newvalue)
 {
setState(() {
  height=newvalue.toInt();
});


 }




 ),


            ],),

          )),
          Expanded(
              child: Row(
            children: [
              Expanded(child: CustomContainer(
                containerchild: Column(

                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                  Text("Weight"),
                  Text("${weight}",style: numbertextstyle,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    ElevatedButton(onPressed: (){
                      setState(() {
                        weight-- ;
                      });
                    }, child: Icon(Icons.remove)),
                    SizedBox(width: 20,),
                    ElevatedButton(onPressed: (){
                      setState(() {
                        weight++;
                      });
                    }, child: Icon(Icons.add)),
                  ],),


                ],),


              )),
              Expanded(child: CustomContainer(
                containerchild: Column(

                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    Text("Age"),
                    Text(age.toString(),style: numbertextstyle,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(onPressed: (){setState(() {

                        });
                          age--;
                        }, child: Icon(Icons.remove)),
                        SizedBox(width: 20,),
                        ElevatedButton(onPressed: (){setState(() {

                        });
                          age ++;
                        }, child: Icon(Icons.add)),
                      ],),


                  ],),
              )),
            ],
          )),
          CutomButton( text: "Calculate Bmi",whenpressed:  () {

         int index = Calculate();
         Navigator.push(context, MaterialPageRoute(builder: (context)=>ResultPage(result: result[index], Bmi: bmi!.toStringAsFixed(1).toString(), messageresult: message[index])));





          }),
        ],
      ),
    );
  }


  int Calculate ()
  {

    height = height/100;
     bmi = weight / (height*height);
    if(bmi! < 18.5)
      {
        return 0;
      }
else if ( bmi! >= 18.5 && bmi! <= 24.9)
  {
    return 1;

  }
else
  {
    return 2;
  }
  }


}
