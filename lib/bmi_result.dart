// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class BmiResultScreen extends StatelessWidget {
  const BmiResultScreen({super.key, required this.result, required this.isMale, required this.age, required this.weight}); 
final int result;
final bool isMale;
final int age;
final int weight;


  @override
  Widget build(BuildContext context) {

    
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Bmi Result",
        style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: Colors.white
        ),
        ),
        backgroundColor: Colors.black,
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:   [
               Row(
                mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   Text("Gender :  ${isMale ? 'Male' : 'Female'}",
                   style: const TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                   ),
                   ),
                  const  SizedBox(width: 5,),
                  Icon(isMale?Icons.male:Icons.female ,
                  size: 50,
                  color: Colors.red,
                  )
                 ],
               ),
                const  SizedBox(height: 20,),
               Text("Weight : $weight",
               style: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.white
               ),
               ),
                const  SizedBox(height: 20,),
               Text("Age : $age",
               style: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.white
               ),
               ),
                const  SizedBox(height: 20,),
               Text("Result : $result",
               style: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.white
               ),
               ),
          ],
        ),
      ),
    );
  }
}