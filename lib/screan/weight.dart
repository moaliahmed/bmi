import 'package:bmi/blocs/cubit/bmi_cubit.dart';
import 'package:bmi/screan/reaselt.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

class WeightScrean extends StatefulWidget {
  const WeightScrean({super.key});

  @override
  State<WeightScrean> createState() => _WeightScreanState();
}

class _WeightScreanState extends State<WeightScrean> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<BmiCubit, BmiState>(
      listener: (context, state) {},
      builder: (context, state) {
        var Cubit = BmiCubit.get(context);

        return SafeArea(
          child: Scaffold(
            body: Column(
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
                      'WEIGHT',
                      style:
                          TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              
                Container(child: Image.asset(
                  Cubit.ismale?'images/man.png':'images/woman.png',
                  height: 350,
                  width: 250,
                ),)
                ,SfSlider(
                  min: 40.0,
                  max: 100.0,
                  value: Cubit.weight,
                  interval: 5,
                  showTicks: true,
                  showLabels: true,
                  enableTooltip: true,
                  minorTicksPerInterval: 1,
                  onChanged: (dynamic value) {
                    setState(() {
                      Cubit.weight = value;
                    });
                  },
                ),
                Container(
                  decoration: BoxDecoration(
                   
                  ),
                ),
                SizedBox(height: 190,)
                ,ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Result(),
                        ));
                  },
                  child: Title(
                    color: Colors.white,
                    child: Text(
                      'CALCULATE BMI',
                      style: TextStyle(fontSize: 26),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
