import 'package:bmi/screan/hight.dart';
import 'package:bmi/screan/reaselt.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class GenderScrean extends StatefulWidget {
  const GenderScrean({super.key});

  @override
  State<GenderScrean> createState() => _GenderScreanState();
}

class _GenderScreanState extends State<GenderScrean> {
 
 var ismale=true;
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            //  SizedBox(height: 26,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const[
                Text(
                  'SELECT YOUR ',
                  style: TextStyle(fontSize: 26),
                ),
                Text(
                  'GENDER',
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 26),
              child: GestureDetector(
                onTap: () {
                  // Navigator.push(context,
                  //     MaterialPageRoute(builder: (contaxt) => HightScrean()));
                  setState(() {
                    ismale=true;
                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: ismale?Colors.blueGrey:Colors.white,
                    boxShadow:const [
                      BoxShadow(
                          blurRadius: .1, offset: Offset(0, 1), spreadRadius: 1)
                    ],
                  ),
                  height: 230,
                  width: 300,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.network(
                          'https://img.freepik.com/free-vector/cute-boy-standing-position-showing-thumb_96037-450.jpg?w=826&t=st=1668096484~exp=1668097084~hmac=0fc6d15a39ed4c49a34c036b6bdeade5d50c4c172d742dae840acf30a019df25'),
                      const Text(
                        'male',
                        style: TextStyle(fontSize: 26),
                      )
                    ],
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: (() {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) => HightScrean()));
                setState(() {
                  ismale=false;
                });
              }),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: ismale==false?Colors.blueGrey:Colors.white,
                  boxShadow: const[
                     BoxShadow(
                        blurRadius: .1, offset: Offset(0, 1), spreadRadius: 1)
                  ],
                ),
                height: 230,
                width: 300,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.network(
                      'https://img.freepik.com/free-vector/girl-shy-character_1450-155.jpg?w=740&t=st=1668096835~exp=1668097435~hmac=2a3b69c6fb276d6aa0b9a48b5f424059142945f15605ca04fb614fedd1e7332e',
                      height: 200,
                    ),
                   const Text(
                      'female',
                      style: TextStyle(fontSize: 26),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
