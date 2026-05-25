import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../../../core/utils/app_assets.dart';
import '../models/category_model.dart';
import '../models/product_model.dart';

class HomeRepo {

  Future<Either<String,List<CategoryModel>>> getCategories() async {
    await Future.delayed(
      const Duration(seconds: 1),
    );
    return Right(
      [
        CategoryModel(
          image: AppAssets.beautyCategory,
          title: "Beauty",
        ),

        CategoryModel(
          image: AppAssets.fashionCategory,
          title: "Fashion",
        ),

        CategoryModel(
          image: AppAssets.kidsCategory,
          title: "Kids",
        ),
      ],
    );
  }

  Future<Either<String,List<ProductModel>>> getProducts() async {

    await Future.delayed(
      const Duration(seconds: 1),
    );
    return Right(
      [
        ProductModel(
          image:
          "https://i.imgur.com/CGCyp1d.jpeg",
          title: "Women Printed Kurta",
          price: "150",
        ),

        ProductModel(
          image:
          "https://i.imgur.com/AkzWQuJ.jpeg",
          title: "HRX Shoes",
          price: "250",
        ),
      ],
    );
  }
}