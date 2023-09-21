import 'package:flutter/material.dart';

class SearchListExample extends StatelessWidget {
  SearchListExample();

  final List<String> _movies = [
    'Up',
    'Toy Story',
    'The Lion King',
    "The Bad Guys",
    "The Sea Beast",
    "Turning Red",
    "Wendell & Wild",
    "Encanto",
    "The Mitchells vs.The Machines",
    "Wolfwalkers",
    "Klaus ",
    "Shazam",
    "John Wick",
    "Murder Mystery2",
    "Fast X",
    "Luther",
    "Orphan:First Kill",
    "Avatar: The Way of Water",
    "Dungeons & Dragons: Honor Among Thieves",
    "Spider-Man: Across the Spider-Verse",
    "Disenchanted",
    "Black Panther: Wakanda Forever",
    "Puss in Boots: The Last Wish",
    "Disenchanted",
    "Chupa",
    "Hocus Pocus 2",
    "Spider-Man: Across the Spider-Verse",
    "The Little Mermaid",
    "Guillermo del Toro’s Pinocchio",
    "Luck",
    "True Spirit",
    "Mummies"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Text("Movies List"),
      ),
      body: AnimatedList(  //to scroll with  little animation move
        initialItemCount: _movies.length,
        itemBuilder: (context, index, animation) {
          return SizeTransition(
            sizeFactor: animation,
            child: ListTile(
              title: Text(_movies[index]),
            ),
          );
        },
      ),
    );
  }
}