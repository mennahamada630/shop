import 'package:dartz/dartz.dart';
import 'package:get/get_connect/http/src/response/response.dart';
import 'package:dio/dio.dart';
import '../models/user_model.dart';

class AuthRepo {

  Dio dio = Dio();

  Future<Either<String, UserModel>> login({required String email, required String password}) async {

    try {
      var response = await dio.post(

        "YOUR_LOGIN_ENDPOINT",

        data: {

          "email": email,
          "password": password,
        },
      );

      UserModel userModel =
      UserModel.fromJson(response.data);

      return Right(userModel);

    } on DioException catch(e){

      return Left(
        e.response?.data["message"] ??
            "Something went wrong",
      );
    }
  }

  Future<Either<String, UserModel>> register({

    required String name,
    required String email,
    required String phone,
    required String password,

  }) async {

    try {

      var response = await dio.post(

        "YOUR_REGISTER_ENDPOINT",

        data: {

          "name": name,
          "email": email,
          "phone": phone,
          "password": password,
        },
      );

      UserModel userModel =
      UserModel.fromJson(response.data);

      return Right(userModel);

    } on DioException catch(e){

      return Left(
        e.response?.data["message"] ??
            "Something went wrong",
      );
    }
  }
}