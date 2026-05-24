class CategoryModel {

  final String image;

  final String title;

  CategoryModel({
    required this.image,
    required this.title,
  });

  factory CategoryModel.fromJson(
      Map<String,dynamic> json){

    return CategoryModel(

      image: json['image'],

      title: json['title'],
    );
  }

  Map<String,dynamic> toJson(){

    return {

      'image' : image,

      'title' : title,
    };
  }
}