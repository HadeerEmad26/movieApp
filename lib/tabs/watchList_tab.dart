import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WatchListTab extends StatelessWidget {
  const WatchListTab({super.key});

  static const String routeName="WatchList";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("WATCHlIST",
          style: GoogleFonts.elMessiri(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 25),
        ),
      ),
    );
  }
}
