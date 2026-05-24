import 'package:flutter_bloc/flutter_bloc.dart';

import '../data/models/category_model.dart';
import '../data/models/product_model.dart';
import '../data/repo/home_repo.dart';
import 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {

  HomeCubit() : super(HomeInitial());

  static HomeCubit get(context) =>
      BlocProvider.of(context);

  HomeRepo homeRepo = HomeRepo();

  int currentIndex = 0;

  List<CategoryModel> categories = [];

  List<ProductModel> products = [];

  void changeBottomNavBar(index){

    currentIndex = index;

    emit(ChangeBottomNavBarState());
  }

  Future<void> getCategories() async {

    emit(GetCategoriesLoadingState());

    var response =
    await homeRepo.getCategories();

    response.fold(

          (error){

        emit(
          GetCategoriesErrorState(
            error: error,
          ),
        );
      },

          (success){

        categories = success;

        emit(GetCategoriesSuccessState());
      },
    );
  }

  Future<void> getProducts() async {

    emit(GetProductsLoadingState());

    var response =
    await homeRepo.getProducts();

    response.fold(

          (error){

        emit(
          GetProductsErrorState(
            error: error,
          ),
        );
      },

          (success){

        products = success;

        emit(GetProductsSuccessState());
      },
    );
  }
}