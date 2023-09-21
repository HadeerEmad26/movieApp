import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WatchListTab extends StatelessWidget {
  const WatchListTab({
    super.key,
  });

  static const String routeName="WatchList";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "WATCHlIST",
          style: GoogleFonts.elMessiri(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 25),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 120,
                  width: 150,
                  child: Image.asset("assets/images/fantasy.jpg"),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text("AVATAR"),
                ),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 120,
                  width: 150,
                  child: Image.asset("assets/images/drama.JPG"),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text("TITANIC"),
                ),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 120,
                  width: 150,
                  child: Image.asset("assets/images/comedy.jpg"),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text("MR:BEAN"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
