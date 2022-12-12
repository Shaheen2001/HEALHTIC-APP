
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hea_apps/Modeules/Register_noutris/Cubits_Register_Specialized/statssp.dart';

class ResgsiterSpecizlizedCubit extends Cubit<RegisterSpecializedStates>{
  ResgsiterSpecizlizedCubit() : super(initResgisterSpecializedState());

  static ResgsiterSpecizlizedCubit get(context)=>BlocProvider.of(context);

  bool IsShowEye=true;
  IconData Icon=Icons.visibility_off;

  void RegisterSpeShowVisiblePassword(
      //required bool IsShow,
      //  required IconData IconShownotShow,
      ){
    IsShowEye=!IsShowEye;
    IsShowEye? Icon=Icons.visibility_off:Icon=Icons.remove_red_eye;
    emit(ShopeRegisterSpecializedChangShowVisiblePasswordState());
  }

}