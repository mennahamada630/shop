abstract class HomeState {}

class HomeInitial extends HomeState {}

class ChangeBottomNavBarState
    extends HomeState {}

class GetCategoriesLoadingState
    extends HomeState {}

class GetCategoriesSuccessState
    extends HomeState {}

class GetCategoriesErrorState
    extends HomeState {

  final String error;

  GetCategoriesErrorState({
    required this.error,
  });
}

class GetProductsLoadingState
    extends HomeState {}

class GetProductsSuccessState
    extends HomeState {}

class GetProductsErrorState
    extends HomeState {

  final String error;

  GetProductsErrorState({
    required this.error,
  });
}