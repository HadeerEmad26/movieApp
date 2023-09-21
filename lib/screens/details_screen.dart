import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movie_app/shared/components/costants.dart';
import 'package:movie_app/shared/styles/colors/app_colors.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({
    super.key,
    required this.title,
    required this.overView,
    required this.posterPath,
    required this.vote,
    required this.releasesDate,
    required this.backDropPath,
    required this.snapshot,
  });

  static const String routeName = "DetailsScreen";

  final String title, overView, backDropPath, posterPath, vote, releasesDate;

  final AsyncSnapshot snapshot;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.white,
            )),
        title: Text(
          title,
          style: GoogleFonts.aBeeZee(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.w600),
        ),
      ),
      body: Container(
        child: ListView(
          children: [
            Container(
              height: 250,
              child: Stack(
                children: [
                  Positioned(
                    child: Container(
                      height: 250,
                      width: MediaQuery.of(context).size.width,
                      child: Image.network(
                        backDropPath,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0, top: 16),
              child: Text(
                title,
                style: GoogleFonts.aBeeZee(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w600),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, top: 8),
              child: Text(
                releasesDate,
                style: GoogleFonts.aBeeZee(color: Colors.grey, fontSize: 12),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Stack(children: [
                    Container(
                      height: 199,
                      width: 129,
                      child: Image.network(
                        posterPath,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                        width: 27,
                        height: 36,
                        child: Image.asset("assets/images/bookmark.png")),
                  ]),
                  Flexible(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Text(
                            overView,
                            textAlign: TextAlign.center,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                const Icon(
                                  Icons.star,
                                  color: yellowColor,
                                  size: 20,
                                ),
                                Text(
                                  vote,
                                  style: GoogleFonts.aBeeZee(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 25, left: 15),
              child: Text(
                "More Like This:",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 8,
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
                        onTap: () {},
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
      ),
    );
  }
}
