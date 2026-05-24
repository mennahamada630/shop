import 'package:flutter_bloc/flutter_bloc.dart';

import '../../home/data/models/product_model.dart';

import '../data/repo/cart_repo.dart';
import 'cart_state.dart';

class CartCubit extends Cubit<CartState> {

  CartCubit() : super(CartInitial());

  static CartCubit get(context) =>
      BlocProvider.of(context);

  CartRepo cartRepo = CartRepo();

  List<ProductModel> cartProducts = [];

  List<int> quantity = [];

  Future<void> getCart() async {

    emit(GetCartLoadingState());

    var response =
    await cartRepo.getCart();

    response.fold(

          (error){

        emit(
          GetCartErrorState(
            error: error,
          ),
        );
      },

          (success){

        cartProducts = success;

        quantity =
            List.generate(
              success.length,
                  (index) => 1,
            );

        emit(GetCartSuccessState());
      },
    );
  }

  void increaseQuantity(index){

    quantity[index]++;

    emit(ChangeQuantityState());
  }

  void decreaseQuantity(index){

    if(quantity[index] > 1){

      quantity[index]--;

      emit(ChangeQuantityState());
    }
  }

  void removeCartItem(index){

    cartProducts.removeAt(index);

    quantity.removeAt(index);

    emit(RemoveCartItemState());
  }
}