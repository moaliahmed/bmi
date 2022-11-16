
import 'package:bmi/blocs/cubit/bmi_cubit.dart';
import 'package:bmi/screan/weight.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

import 'gender.dart';

class HightScrean extends StatefulWidget {
  @override
  State<HightScrean> createState() => _HightScreanState();
}

class _HightScreanState extends State<HightScrean> {
  
  @override
  Widget build(BuildContext context) {
    String Url;
    return BlocConsumer<BmiCubit, BmiState>(
      listener: (context, state) {
        
      },
      builder: (context, state) {
        var Cubit = BmiCubit.get(context);
        return Scaffold(
      body: SafeArea(
        child: Column(
          
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'SELECT YOUR ',
                  style: TextStyle(
                    fontSize: 26,
                  ),
                ),
                Text(
                  'HIGHT',
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                )
              ],
            ),
            Row(
              children: [
                
                Image.asset(
                  Cubit.ismale?'images/man.png':'images/woman.png',
                  height: 350,
                  width: 250,
                ),
                SfSlider.vertical(
                  min: 135.0,
                  max: 185.0,
                  value: Cubit.hight,
                  interval: 5,
                  showTicks: true,
                  showLabels: true,
                  enableTooltip: true,
                  minorTicksPerInterval: 1,
                  onChanged: (dynamic value) {
                    setState(() {
                      Cubit.hight = value;
                    });
                  },
                ),
              ],
            ),
            SizedBox(height: 290,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>GenderScrean()));
                  },
                  child: Title(color: Colors.white, child: Text('back',style: TextStyle(fontSize: 26),)),
                ),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder:(context) => WeightScrean(),));
                    },
                    child: Title(color: Colors.blue, child: Text('next',style: TextStyle(fontSize: 26),)))
              ],
            )
          ],
        ),
      ),
    );
   },
    ); 
  }
}
