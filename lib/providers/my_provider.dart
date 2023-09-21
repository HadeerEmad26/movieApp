import 'package:flutter/material.dart';
import 'package:movie_app/models/MoviesResponse.dart';

class MyProvider extends ChangeNotifier{

  List<Movies> movies=[];
  List<Movies> get movie => movies;

  void toWatchList(){

    final isExist = movies.contains(movie);
    if(isExist){
      movies.remove(movie);
    } else{
      movies.add(movies as Movies);
    }

    notifyListeners();
  }

  bool isExist(movie){
    final isExist = movies.contains(movie);
    return isExist;
  }

  void clearWatchList(){
    movies=[];
    notifyListeners();
  }

}