import 'dart:convert';
import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:http/http.dart' as http;
import 'package:movie_app/models/MoviesResponse.dart';
import 'package:movie_app/models/search_model.dart';


class ApiManager {
  static const _newReleasesUrl =
      'https://api.themoviedb.org/3/trending/movie/day?language=en-US&page=1&api_key=94ba1cdc0c1f527a3d33365b7f5280f0';
  static const _topRatedUrl =
      'https://api.themoviedb.org/3/movie/top_rated?language=en-US&api_key=94ba1cdc0c1f527a3d33365b7f5280f0';
  
  Future<List<Results>> getNewReleasesMovies() async {
    final response = await http.get(Uri.parse(_newReleasesUrl));
    if (response.statusCode == 200) {
      final decodedData = json.decode(response.body)['results'] as List;
      //print(decodedData);
      return decodedData.map((movie) => Results.fromJson(movie)).toList();
    } else {
      throw Exception('Something went wrong');
    }
  }

  Future<List<Results>> getTopRatedMovies() async {
    final response = await http.get(Uri.parse(_topRatedUrl));
    if (response.statusCode == 200) {
      final decodedData = json.decode(response.body)['results'] as List;
      //print(decodedData);
      return decodedData.map((movie) => Results.fromJson(movie)).toList();
    } else {
      throw Exception('Something went wrong');
    }
  }
}


class SearchMovieApiManager{
  final String baseUrl="https://api.themoviedb.org/3";
  final String apiKey="94ba1cdc0c1f527a3d33365b7f5280f0";

  final Dio dio;
  SearchMovieApiManager(this.dio);

  Future<MovieModel> getCurrentMovie({required String movieName}) async {
    try{
      var response = await dio.get('$baseUrl/trending/movie/day?'
          'language=en-US&page=1&api_key=$apiKey&quary=$movieName');
      MovieModel movieModel=MovieModel.fromJson(response.data);

      return movieModel;

    }on DioException catch(e){
      final String errMessage=e.response?.data['error']['message']??"oops there was an error, try";
      throw Exception(errMessage);
    }catch(e){
      log(e.toString());
      throw Exception('oops there was an error');
    }
  }
}