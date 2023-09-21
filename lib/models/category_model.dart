class CategoryModel {
  String id;
  String name;
  String image;

  CategoryModel(this.id, this.name, this.image);

  static List<CategoryModel> getCategories() {
    return [
      //CategoryModel(id, name, image),

      CategoryModel("animation", "Animation", "assets/images/animation.jpg"),
      CategoryModel("crime", "Crime", "assets/images/crime.jpg"),
      CategoryModel("family", "Family", "assets/images/family.webp"),
      CategoryModel("adventure", "Adventure", "assets/images/adventure.jpg"),
      CategoryModel("action", "Action", "assets/images/action.jpg"),
      CategoryModel("comedy", "Comedy", "assets/images/comedy.jpg"),
      CategoryModel("drama", "Drama", "assets/images/drama.JPG"),
      CategoryModel("fantasy", "Fantasy", "assets/images/fantasy.jpg")
    ];
  }
}
