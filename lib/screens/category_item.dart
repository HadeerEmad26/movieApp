import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movie_app/models/category_model.dart';

class CategoryItem extends StatelessWidget {

  int index;
  CategoryModel categoryModel;
  CategoryItem(this.categoryModel,this.index);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      width: 158,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
      ),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Image.asset(categoryModel.image),
          Text(categoryModel.name,style: GoogleFonts.aBeeZee(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: Colors.white
          ),),
        ],
      ),
    );
  }
}
