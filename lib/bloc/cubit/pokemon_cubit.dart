import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:pokemon_app/models/request.dart';
import 'package:pokemon_app/services/dio_helper/dio_helper.dart';

part 'pokemon_state.dart';

class PokemonCubit extends Cubit<PokemonState> {
  PokemonCubit() : super(PokemonInitial());
  static PokemonCubit get(context) => BlocProvider.of(context);
  Request? request;

  void getPokemonList() {
    emit(PokemonGetLoadingState());
    print('Loading');
    DioHelper.getData().then((value) {
      var json = jsonDecode(value.data);
      request = Request.fromJson(json);
      print('12');
      emit(PokemonGetSucssesState());
      print('${value.data}');
    }).catchError((error) {
      print('error : $error');
      emit(PokemonGetErrorState());
    });
  }
}
