import 'package:bmi/blocs/cubit/bmi_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Result extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    return BlocConsumer<BmiCubit, BmiState>(
      listener: (context, state) {
        
      },
      builder: (context, state) {
        var Cubit= BmiCubit.get(context);
         return Scaffold(
      body: Column(
        children: [
         Text('Gender ${Cubit.ismale?'man':'woman'}',style: Theme.of(context).textTheme.headline2,),
         Text('hight ${Cubit.hight}',style: Theme.of(context).textTheme.headline2,),
         Text('weight ${Cubit.weight}',style: Theme.of(context).textTheme.headline2,),
         
        ],
      ),
    );
  
      },
    );
  }
}
