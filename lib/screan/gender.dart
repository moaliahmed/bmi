import 'package:bmi/blocs/cubit/bmi_cubit.dart';
import 'package:bmi/screan/hight.dart';
import 'package:bmi/screan/reaselt.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GenderScrean extends StatefulWidget {
  const GenderScrean({super.key});

  @override
  State<GenderScrean> createState() => _GenderScreanState();
}

class _GenderScreanState extends State<GenderScrean> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<BmiCubit,BmiState>(
      builder: ((context, state) {
        var Cubit=BmiCubit.get(context);
        return Scaffold(
          body: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                //  SizedBox(height: 26,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      'SELECT YOUR ',
                      style: TextStyle(fontSize: 26),
                    ),
                    Text(
                      'GENDER',
                      style:
                          TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 26),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (contaxt) => HightScrean()));

                     Cubit.ismale = true;
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Cubit.ismale == true ? Colors.blueGrey : Colors.white,
                        boxShadow: const [
                          BoxShadow(
                              blurRadius: .1,
                              offset: Offset(0, 1),
                              spreadRadius: 1)
                        ],
                      ),
                      height: 230,
                      width: 300,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset(
                            'images/man.png',
                            height: 200,
                          ),
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
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HightScrean()));

                   Cubit.ismale = false;
                  }),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Cubit.ismale == false ? Colors.blueGrey : Colors.white,
                      boxShadow: const [
                        BoxShadow(
                            blurRadius: .1,
                            offset: Offset(0, 1),
                            spreadRadius: 1)
                      ],
                    ),
                    height: 230,
                    width: 300,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset(
                          'images/woman.png',
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
      }),
      listener: (context, state) {},
    );
  }
}
