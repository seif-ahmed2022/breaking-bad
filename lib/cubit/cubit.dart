import 'package:breaking_bad/cubit/states.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../models/character.dart';
import '../models/quotes.dart';
import '../shared/network/dio_helper.dart';

class AppCubit extends Cubit<AppStates> {
  AppCubit() : super(AppInitialState());

  static AppCubit get(BuildContext context) => BlocProvider.of(context);

  List<Character> characters = [];
  List<Quotes> quotes=[];

  void getAllCharacters() {
    emit(GetAllCharactersLoadingState());
    DioHelper.getData(
      url: "characters",
    ).then((value) {
      List resp=value.data;
      characters= resp.map((e) =>Character.fromJson(e)).toList();
      print(characters[10].name);
      print(characters.length);
      emit(GetAllCharactersSuccessState());
    }).catchError((error){
      print(error.toString());
      emit(GetAllCharactersErrorState());
    });
  }

  void getQuote(String author){
    emit(GetAllQuotesLoadingState());
    DioHelper.getData(
        url: "quote",
        queryParameters: {
          "author": author,
        }).then((value) {
      List resp=value.data;
      quotes=resp.map((e) => Quotes.fromJson(e)).toList();
      if(quotes.isNotEmpty){
        print(quotes[0].quote);
      }
      emit(GetAllQuotesSuccessState());
    }).catchError((error){
      emit(GetAllQuotesErrorState());
      print(error.toString());
    });
  }
}