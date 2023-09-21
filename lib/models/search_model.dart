class MovieModel {
  final String title;
  final String overview;
  final String posterPath;

  MovieModel({
    required this.title,
    required this.overview,
    required this.posterPath});

  factory MovieModel.fromJson(json){
    return MovieModel(
        title: json['title'],
        overview: json['overview'],
        posterPath: json['poster_path']);
  }
}
