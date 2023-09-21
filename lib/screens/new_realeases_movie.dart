import 'package:flutter/material.dart';
import 'package:movie_app/screens/details_screen.dart';
import 'package:movie_app/shared/components/costants.dart';

class NewRealeasesMovieItem extends StatelessWidget {
  const NewRealeasesMovieItem({required this.snapshot});

  final AsyncSnapshot snapshot;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 210,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 25, left: 15),
            child: Text(
              "New Releases Movies:",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 150,
            width: double.infinity,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              physics: BouncingScrollPhysics(),
              itemCount: 20,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8),
                  child: Stack(children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailsScreen(
                              title: '${snapshot.data![index].originalTitle}',
                              overView: '${snapshot.data![index].overview}',
                              posterPath:
                              '${Constants.imageUrl}${snapshot.data![index].posterPath}',
                              vote: '${snapshot.data![index].voteAverage}',
                              backDropPath:
                              '${Constants.imageUrl}${snapshot.data![index].backdropPath}',
                              releasesDate:
                              '${snapshot.data![index].releaseDate}',
                              snapshot: snapshot,
                            ),
                          ),
                        );
                      },
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(5),
                        child: SizedBox(
                          height: 150,
                          width: 100,
                          child: Image.network(
                            filterQuality: FilterQuality.high,
                            fit: BoxFit.cover,
                            '${Constants.imageUrl}${snapshot.data![index].posterPath}',
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        // Results results = Results();
                        // FirebaseFunctions.addMovie(results);
                        // Navigator.pushNamed(context, WatchListTab.routeName);
                      },
                      child: Container(
                          width: 27,
                          height: 36,
                          child: Image.asset("assets/images/bookmark.png")),
                    )
                  ]),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
