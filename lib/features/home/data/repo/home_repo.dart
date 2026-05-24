import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../models/category_model.dart';
import '../models/product_model.dart';

class HomeRepo {

  Dio dio = Dio();

  Future<Either<String,List<CategoryModel>>>
  getCategories() async {

    try {

      Response response = await dio.get(
        "YOUR_CATEGORIES_ENDPOINT",
      );

      List data = response.data;

      List<CategoryModel> categories =
      data.map(
            (e) =>
            CategoryModel.fromJson(e),
      ).toList();

      return Right(categories);

    } on DioException catch(e){

      return Left(
        e.response?.data['message'] ??
            "Something went wrong",
      );
    }
  }

  Future<Either<String,List<ProductModel>>>
  getProducts() async {

    try {

      Response response = await dio.get(
        "YOUR_PRODUCTS_ENDPOINT",
      );

      List data = response.data;

      List<ProductModel> products =
      data.map(
            (e) =>
            ProductModel(
              image: e['image'],
              title: e['title'],
              price:
              e['price'].toString(),
            ),
      ).toList();

      return Right(products);

    } on DioException catch(e){

      return Left(
        e.response?.data['message'] ??
            "Something went wrong",
      );
    }
  }
}