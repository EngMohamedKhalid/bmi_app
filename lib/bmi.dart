// ignore_for_file: unused_local_variable

import 'dart:math';

import 'package:bmi_app/bmi_result.dart';
import 'package:flutter/material.dart';

class BmiCalculator extends StatefulWidget {
  const BmiCalculator({super.key});

  @override
  State<BmiCalculator> createState() => _BmiCalculatorState();
}

class _BmiCalculatorState extends State<BmiCalculator> {
  bool isMale = true;
  double height = 120.0;
  int age = 20;
  int weight = 69;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Bmi Calculator",
        style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: Colors.white
        ),
        ),
        backgroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        isMale= !isMale;
                      });
                    },
                    child: Container(
                      width: 200,
                      height: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                         color: isMale==true?Colors.blue:Colors.grey,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children:const [
                         Icon(Icons.male,
                         color: Colors.white,
                        size: 100,
                        ),
                        Text("Male",
                        style: TextStyle(
                         color: Colors.white,
                          fontSize: 40,
                          fontWeight:FontWeight.bold
                        )
                        )
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 20,),
                 Expanded(
                   child: InkWell(
                    onTap: () {
                      setState(() {
                        isMale = !isMale;
                      });
                    },
                     child: Container(
                       decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: isMale==true?Colors.grey:Colors.blue,
                      ),
                      width: 200,
                      height: 200,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children:const [
                         Icon(Icons.female,
                         color: Colors.white,
                        size: 100,
                        ),
                        Text("Female",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                          fontWeight:FontWeight.bold
                        )
                        )
                        ],
                      ),
                   
                     ),
                   ),
                 ),
                 ],
            ),
           const SizedBox(height: 10,),
            Container(
              width: 400,
              height: 200,
               decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(20)
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                 const Text("Hight",
                 style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold
                 ),
                 ),
                const SizedBox(height: 10,),
                 Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:  [
                     Text("${height.toInt()}",
                 style:const TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold
                 ),
                 ),
                 const SizedBox(width: 5,),
                 const Text("cm",
                  style: TextStyle(
                    color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold
                 ),
                 ),
                  ],
                 ),
                  Slider(
                    activeColor:  Colors.white,
                    inactiveColor:  Colors.black,
                    value: height, 
                    onChanged: (val){
                      setState(() {
                        height = val;
                      });
                    },
                    max: 200,
                    min: 0,
                    ),
                ],
              ),
            ),
            const SizedBox(height: 10,),
            Row(
              children: [
                Expanded(
                  child: Container(
                    width: 200,
                    height: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                       color: Colors.grey,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                     const Text("WEIGHT",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight:FontWeight.bold
                      )
                      ),
                     const SizedBox(height: 8,),
                      Text("$weight",
                      style:const TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight:FontWeight.bold
                      )
                      ),
                      const SizedBox(height: 20,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                              CircleAvatar(
                                maxRadius: 30,
                                backgroundColor:  Colors.white,
                                child: IconButton(
                                  onPressed: (){
                                    setState(() {
                                     weight ++;
                                    });
                                  },
                                 icon: const Icon(Icons.add , size: 30,
                                 color: Colors.black
                                 ,),
                                 ),
                              ),
                           const SizedBox(width: 20,),
                              CircleAvatar(
                                backgroundColor: Colors.white,
                                maxRadius: 30,
                                child: IconButton(
                                  onPressed: (){
                                    setState(() {
                                      weight--;
                                    });
                                  },
                                 icon: const Icon(Icons.remove, size: 30,
                                 color: Colors.black,
                                 ),
                                 ),
                              ),
                        ],
                      )
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 20,),
            Expanded(
                  child: Container(
                    width: 200,
                    height: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                       color: Colors.grey,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                     const Text("AGE",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight:FontWeight.bold
                      )
                      ),
                     const SizedBox(height: 8,),
                      Text("$age",
                      style:const TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight:FontWeight.bold
                      )
                      ),
                      const SizedBox(height: 20,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                              CircleAvatar(
                                backgroundColor:Colors.white,
                                maxRadius: 30,
                                child: IconButton(
                                  onPressed: (){
                                    setState(() {
                                      age++;
                                    });
                                  },
                                 icon: const Icon(Icons.add , size: 30,
                                 color: Colors.black,
                                 ),
                                 ),
                              ),
                           const SizedBox(width: 20,),
                              CircleAvatar(
                                backgroundColor: Colors.white,
                                maxRadius: 30,
                                child: IconButton(
                                  onPressed: (){
                                    setState(() {
                                      age--;
                                    });
                                  },
                                 icon: const Icon(Icons.remove, size: 30,
                                 color: Colors.black,
                                 ),
                                 ),
                              ),
                        ],
                      )
                      ],
                    ),
                  ),
                ),
                 ],
            ),
           const SizedBox(height: 10,),
           MaterialButton(
            textColor: Colors.white,
            height: 60,
            color: Colors.blue,
            onPressed: (){
              double result = weight / pow(height / 100, 2);
               Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>  BmiResultScreen(
                      age: age,
                      isMale: isMale,
                      result: result.round(),
                      weight: weight,
                    ),
                  ),
                );
            },
            child:const Text("CALCULATE",
            style: TextStyle(
              fontSize: 50,
              fontWeight: FontWeight.w400
            ),
            )
            
            )




          ],
        ),
      ),
    );
  }
}