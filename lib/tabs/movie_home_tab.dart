import 'package:flutter/material.dart';
import 'package:movie_app/models/MoviesResponse.dart';
import 'package:movie_app/screens/new_realeases_movie.dart';
import 'package:movie_app/screens/popular_movie.dart';
import 'package:movie_app/screens/recommended_movie.dart';
import 'package:movie_app/shared/network/remote/api_manager.dart';

class MovieHomeTab extends StatefulWidget {
  const MovieHomeTab({Key? key}) : super(key: key);

  @override
  State<MovieHomeTab> createState() => _MovieHomeTabState();
}

class _MovieHomeTabState extends State<MovieHomeTab> {
  late Future<List<Results>> NewReleasesMovies;
  late Future<List<Results>> TopRatedMovies;



  @override
  void initState() {
    super.initState();
    NewReleasesMovies = ApiManager().getNewReleasesMovies();
    TopRatedMovies = ApiManager().getTopRatedMovies();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 5,
              ),
              const Padding(
                padding: EdgeInsets.only(top: 25, left: 15),
                child: Text(
                  "Popular Movies:",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              SizedBox(
                child: FutureBuilder(
                  future: TopRatedMovies,
                  builder: (context, snapshot) {
                    if (snapshot.hasError) {
                      return Center(
                        child: Text(snapshot.error.toString()),
                      );
                    } else if (snapshot.hasData) {
                      return PopularMoviesItem(
                        snapshot: snapshot,
                      );
                    } else {
                      return Center(child: CircularProgressIndicator());
                    }
                  },
                ),
              ),
              SizedBox(
                height: 5,
              ),
              SizedBox(
                child: FutureBuilder(
                  future: NewReleasesMovies,
                  builder: (context, snapshot) {
                    if (snapshot.hasError) {
                      return Center(
                        child: Text(snapshot.error.toString()),
                      );
                    } else if (snapshot.hasData) {
                      return NewRealeasesMovieItem(
                        snapshot: snapshot,
                      );
                    } else {
                      return Center(child: CircularProgressIndicator());
                    }
                  },
                ),
              ),
              SizedBox(
                height: 5,
              ),
              SizedBox(
                child: FutureBuilder(
                  future: TopRatedMovies,
                  builder: (context, snapshot) {
                    if (snapshot.hasError) {
                      return Center(
                        child: Text(snapshot.error.toString()),
                      );
                    } else if (snapshot.hasData) {
                      return RecommentedMovieItem(
                        snapshot: snapshot,
                      );
                    } else {
                      return Center(child: CircularProgressIndicator());
                    }
                  },
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
