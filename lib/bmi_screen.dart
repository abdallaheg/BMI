
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_application_4/bmi_result_screen.dart';

class BmiScreen extends StatefulWidget{
  @override
 _BmiScreenState createState() => _BmiScreenState();
 

}
class _BmiScreenState extends State<BmiScreen>{
  bool isMale =true;
  double height=120.0;
  int wieght =40;
  int age =20;
  @override
  Widget build(BuildContext context) {
   return Scaffold(
    appBar: AppBar(
      title: Text(
        'BMI Calculator',
      ),
    ),
    body: Column(
      children: [
        Expanded(
          child:Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              children: [
                Expanded(
                  child:GestureDetector(
                    onTap: (){
                      setState(() {
                        isMale=true;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color:isMale ?Colors.blue : Colors.grey[400],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image(
                            image: AssetImage('assets/images/male.png'),
                          ),
                          SizedBox(
                            height: 5.0,
                          ),
                          Text(
                            'MALE',
                            style: TextStyle(
                              fontSize: 25.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 20.0,
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: (){
                      setState(() {
                        isMale=false;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color:!isMale?Colors.blue : Colors.grey[400],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image(
                            image: AssetImage('assets/images/female.png'),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'FEMALE',
                            style: TextStyle(
                              fontSize: 25.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child:Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Colors.grey[400],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'HEIGHT',
                    style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    mainAxisAlignment: MainAxisAlignment.center,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                    Text(
                    '${height.round()}',
                    style: TextStyle(
                      fontSize: 40.0,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                    SizedBox(
                      width: 5.0,
                    ),
                    Text(
                    'CM',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                    ],
                  ),
                  Slider(value: height,
                  max: 220.0, 
                  min: 80.0,            
                  onChanged:(value){
                    setState(() {
                      height =value;
                    });
                   
                  } ,
                  ),
                ],
                
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.grey[400],
                        ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'WEIGHT',
                          style: TextStyle(
                            fontSize: 25.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          '${wieght}',
                          style: TextStyle(
                            fontSize: 40.0,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                       Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FloatingActionButton(
                          onPressed: (){
                            setState(() {
                              wieght--;
                            });
                          },
                          heroTag: 'wieght-',
                          mini: true,
                          child: Icon(
                            Icons.remove,
                          ),
                          ),
                          FloatingActionButton(
                          onPressed: (){
                            setState(() {
                              wieght++;
                            });
                          },
                          heroTag: 'wieght+',
                          mini: true,
                          child: Icon(
                            Icons.add,
                          ),
                          ),
                          ],
                       ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 20.0,
                ),
                Expanded(
                  child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.grey[400],
                        ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'AGE',
                          style: TextStyle(
                            fontSize: 25.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          '${age}',
                          style: TextStyle(
                            fontSize: 40.0,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                       Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FloatingActionButton(
                          onPressed: (){
                            setState(() {
                              age--;
                            });
                          },
                          heroTag: 'age-',
                          mini: true,
                          child: Icon(
                            Icons.remove,
                          ),
                          ),
                          FloatingActionButton(
                          onPressed: (){
                            setState(() {
                              age++;
                            });
                          },
                          heroTag: 'age+',
                          mini: true,
                          child: Icon(
                            Icons.add,
                          ),
                          ),
                          ],
                       ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Container(
          width: double.infinity,
          color: Colors.blue,
          child: MaterialButton(
            
            onPressed:(){
              double result = wieght / pow(height /100 ,2);
              print(result.round());
              Navigator.push(context, 
              MaterialPageRoute(
                builder: (context)=>BMIResultScreen(
                  age: age,
                  isMale: isMale,
                  result: result.round(),
                ),
              ),
              );
            },
            height: 50.0,
           child: Text(
            'CALCULATE',
            style: TextStyle(
              color: Colors.white,
            ),
           ),
           ),
        ),
        
      ],

    ),
   
   
   );
  }

}