import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'bmi_state.dart';

class BmiCubit extends Cubit<BmiState> {
  BmiCubit() : super(BmiInitial());
   static BmiCubit get (context)=> BlocProvider.of(context);
   double hight=140;
   double weight=40;
   bool ismale=true;
}
