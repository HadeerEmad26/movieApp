import 'package:flutter/material.dart';
import 'package:movie_app/models/MoviesResponse.dart';
import 'package:movie_app/providers/my_provider.dart';
import 'package:movie_app/screens/details_screen.dart';
import 'package:movie_app/shared/components/costants.dart';
import 'package:movie_app/shared/styles/colors/app_colors.dart';
import 'package:movie_app/tabs/watchList_tab.dart';
import 'package:provider/provider.dart';

class RecommentedMovieItem extends StatelessWidget {
  const RecommentedMovieItem({super.key, required this.snapshot});

  final AsyncSnapshot snapshot;

  @override
  Widget build(BuildContext context) {
   // final pro=Provider.of<MyProvider>(context);
    return Container(
      height: 400,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 25, left: 15),
            child: Text(
              "Recomended Movies:",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 285,
            width: double.infinity,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              physics: BouncingScrollPhysics(),
              itemCount: 20,
              itemBuilder: (context, index) {
                return Card(
                  color: blackColor,
                  elevation: 12,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: SizedBox(
                      height: 150,
                      width: 100,
                      child: Column(
                        children: [
                          Stack(children: [
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => DetailsScreen(
                                      title:
                                      '${snapshot.data![index].originalTitle}',
                                      overView:
                                      '${snapshot.data![index].overview}',
                                      posterPath:
                                      '${Constants.imageUrl}${snapshot.data![index].posterPath}',
                                      vote:
                                      '${snapshot.data![index].voteAverage}',
                                      releasesDate:
                                      '${snapshot.data![index].releaseDate}',
                                      backDropPath:
                                      '${Constants.imageUrl}${snapshot.data![index].backdropPath}',
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
                               // pro.toWatchList();
                                Navigator.push(context, MaterialPageRoute(
                                    builder: (context)=>WatchListTab()));
                              },
                              child: Container(
                                  width: 27,
                                  height: 36,
                                  child: Image.asset("assets/images/bookmark.png")
                                  // pro.isExist(Movies)?Icon(Icons.bookmark_added)
                                  //     :Image.asset("assets/images/bookmark.png")
                              ),
                            ),
                          ]),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: yellowColor,
                                size: 18,
                              ),
                              Text('${snapshot.data![index].voteAverage}'),
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            '${snapshot.data![index].originalTitle}',
                            style: TextStyle(fontSize: 12),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            '${snapshot.data![index].releaseDate}',
                            style: TextStyle(fontSize: 10),
                          )
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
