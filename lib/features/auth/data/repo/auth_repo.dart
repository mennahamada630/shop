import 'package:dartz/dartz.dart';
import 'package:get/get_connect/http/src/response/response.dart';
import 'package:dio/dio.dart';
import '../models/user_model.dart';

class AuthRepo {

  Future<Either<String, UserModel>> login({required String email, required String password,}) async {
    await Future.delayed(
      const Duration(seconds: 2),
    );

    return Right(

      UserModel(

        id: 1,
        name: "Menna",
        email: email,
        phone: "01000000000",
        token: "12345",
      ),
    );
  }

  Future<Either<String, UserModel>> register({required String name, required String email,
    required String phone, required String password,}) async {
    await Future.delayed(
      const Duration(seconds: 2),
    );
    return Right(

      UserModel(

        id: 1,
        name: name,
        email: email,
        phone: phone,
        token: "12345",
      ),
    );
  }
}
