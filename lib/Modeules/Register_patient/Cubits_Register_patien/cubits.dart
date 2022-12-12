
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hea_apps/Modeules/Register_patient/Cubits_Register_patien/stats.dart';

class ResgsiterPatienCubit extends Cubit<RegisterPainteStates>{
  ResgsiterPatienCubit() : super(initResgisterPainteState());

  static ResgsiterPatienCubit get(context)=>BlocProvider.of(context);

  bool IsShowEye=true;
  IconData Icon=Icons.visibility_off;

  void RegisterPaShowVisiblePassword(
      //required bool IsShow,
      //  required IconData IconShownotShow,
      ){
    IsShowEye=!IsShowEye;
    IsShowEye? Icon=Icon=Icons.visibility_off:Icons.remove_red_eye;
    emit(ShopeRegisterPainteChangShowVisiblePasswordState());
  }

}