
import 'package:bmi/blocs/cubit/bmi_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../screan/gender.dart';

class AppRoot extends StatelessWidget {
  const AppRoot({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
       BlocProvider(create: (context)=>BmiCubit()),
      ],
      child: MaterialApp(
        home: GenderScrean(),
      ),
    );
  }
}
