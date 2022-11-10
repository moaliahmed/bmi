import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Result extends StatelessWidget {
  const Result({required this.gender,required this.hight,required this.resuel,required this.weight});
  final resuel ;
 final  gender;
 final int hight;
 
 final double weight;

String get ResultPhrase {
  String resultText='';
  if (resuel>=30)resultText='obese';
  else if (resuel>=18.5&&resuel<=24.9) resultText='normal';
  else if (resuel>25&&resuel<30) resultText='overweght';
  else resultText='Thin';
  return resultText;
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
         Text('Gender $gender',style: Theme.of(context).textTheme.headline2,),
         Text('Rusult $resuel',style: Theme.of(context).textTheme.headline2,),
         Text('healthiness $ResultPhrase',style: Theme.of(context).textTheme.headline2,),
         
        ],
      ),
    );
  }
}
