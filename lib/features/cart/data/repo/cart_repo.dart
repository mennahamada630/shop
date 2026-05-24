import 'package:dartz/dartz.dart';

import '../../../home/data/models/product_model.dart';

class CartRepo {

  Future<Either<String,bool>> addToCart() async {

    try {

      await Future.delayed(
        const Duration(seconds: 1),
      );

      return const Right(true);

    } catch(e){

      return const Left(
        "Something went wrong",
      );
    }
  }

  Future<Either<String,List<ProductModel>>> getCart() async {

    try {

      await Future.delayed(
        const Duration(seconds: 1),
      );

      return Right(

        [

          ProductModel(
            image:
            "https://i.imgur.com/CGCyp1d.jpeg",
            title: "Mens Jacket",
            price: "120",
          ),

          ProductModel(
            image:
            "https://i.imgur.com/AkzWQuJ.jpeg",
            title: "Women T-Shirt",
            price: "80",
          ),
        ],
      );

    } catch(e){

      return const Left(
        "Something went wrong",
      );
    }
  }
}