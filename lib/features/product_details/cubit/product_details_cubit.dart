import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop/features/product_details/cubit/product_details_state.dart';

import '../../cart/data/repo/cart_repo.dart';

class ProductDetailsCubit
    extends Cubit<ProductDetailsState> {

  ProductDetailsCubit()
      : super(ProductDetailsInitial());

  static ProductDetailsCubit get(context) =>
      BlocProvider.of(context);

  int selectedSize = 0;

  int selectedColor = 0;

  bool isFavorite = false;

  List<String> sizes = [
    "S",
    "M",
    "L",
    "XL",
  ];

  List<int> colors = [
    0xffF83758,
    0xff000000,
    0xff3F51B5,
    0xff4CAF50,
  ];

  CartRepo cartRepo = CartRepo();

  void changeSelectedSize(index){

    selectedSize = index;

    emit(ChangeSelectedSizeState());
  }

  void changeSelectedColor(index){

    selectedColor = index;

    emit(ChangeSelectedColorState());
  }

  void changeFavorite(){

    isFavorite = !isFavorite;

    emit(ChangeFavoriteState());
  }

  Future<void> addToCart() async {

    emit(AddToCartLoadingState());

    var response =
    await cartRepo.addToCart();

    response.fold(

          (error){

        emit(
          AddToCartErrorState(
            error: error,
          ),
        );
      },

          (success){

        emit(AddToCartSuccessState());
      },
    );
  }
}