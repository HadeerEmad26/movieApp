import 'package:flutter/material.dart';
import 'package:movie_app/models/category_model.dart';
import 'package:movie_app/screens/category_item.dart';
import 'package:movie_app/screens/movie_list_screen.dart';

class BrowseTab extends StatefulWidget {
  @override
  State<BrowseTab> createState() => _BrowseTabState();
}

class _BrowseTabState extends State<BrowseTab> {
  var categories = CategoryModel.getCategories();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: model==null?Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.builder(
            itemCount: categories.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, mainAxisSpacing: 16, crossAxisSpacing: 16),
            itemBuilder: (context, index) {
              return InkWell(
                  onTap: (){
                    onCategoryClick(categories[index]);
                  },
                  child: CategoryItem(categories[index],index));
            }),
      ):SearchListExample(),
    );

  }


  CategoryModel? model=null;
  onCategoryClick(categoryModel){
    model=categoryModel;
    setState(() {

    });
  }


}
