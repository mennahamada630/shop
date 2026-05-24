import 'package:dartz/dartz.dart';

class CheckoutRepo {
Future<Either<String,bool>>
placeOrder() async {

  try {

    await Future.delayed(
      const Duration(seconds: 2),
    );

    return const Right(true);

  } catch(e){

    return const Left(
      "Something went wrong",
    );
  }
}
}