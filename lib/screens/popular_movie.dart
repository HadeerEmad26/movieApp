import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:movie_app/shared/components/costants.dart';

import 'details_screen.dart';

class PopularMoviesItem extends StatelessWidget {
  PopularMoviesItem({super.key, required this.snapshot});

  final AsyncSnapshot snapshot;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: CarouselSlider.builder(
        itemCount: -20,
        options: CarouselOptions(
            height: 250,
            enlargeCenterPage: true,
            autoPlay: true,
            viewportFraction: 0.55,
            autoPlayCurve: Curves.fastOutSlowIn,
            autoPlayAnimationDuration: Duration(seconds: 1)),
        itemBuilder: (context, index, pageViewIndex) {
          return InkWell(
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
                    releasesDate: '${snapshot.data![index].releaseDate}',
                    snapshot: snapshot,
                  ),
                ),
              );
            },
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: SizedBox(
                height: 300,
                width: 200,
                child: Image.network(
                  filterQuality: FilterQuality.high,
                  fit: BoxFit.cover,
                  '${Constants.imageUrl}${snapshot.data![index].posterPath}',
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
