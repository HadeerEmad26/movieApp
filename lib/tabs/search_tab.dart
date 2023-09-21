import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:movie_app/models/search_model.dart';
import 'package:movie_app/shared/network/remote/api_manager.dart';
class SearchTab extends StatelessWidget {
  const SearchTab({super.key,
    //  required this.title, required this.posterPath, required this.overView, required this.snapshot
  });

  // final String title,posterPath,overView;
  // final AsyncSnapshot snapshot;

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.all(20.0),
          child: TextField(
            onSubmitted: (value) async{ //trigger the request
              MovieModel movieModel = await SearchMovieApiManager(Dio())
                  .getCurrentMovie(movieName: value);

              log(movieModel.title);

            },
            style: TextStyle(color: Colors.white),
            decoration: InputDecoration(
                filled: true,
                fillColor: Color(0xFF514F4F),
                enabledBorder:OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(25),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25),
                  borderSide: BorderSide(
                      color: Colors.white
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                    borderSide: BorderSide(
                        color: Colors.white
                    )
                ),
                prefixIcon: Icon(Icons.search),
                hintText: "Search"
            ),
          ),
        ),
      ),
    );
  }
}
