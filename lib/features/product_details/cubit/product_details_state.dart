abstract class ProductDetailsState {}

class ProductDetailsInitial
    extends ProductDetailsState {}

class ChangeSelectedSizeState
    extends ProductDetailsState {}

class ChangeSelectedColorState
    extends ProductDetailsState {}

class ChangeFavoriteState
    extends ProductDetailsState {}

class AddToCartLoadingState
    extends ProductDetailsState {}

class AddToCartSuccessState
    extends ProductDetailsState {}

class AddToCartErrorState
    extends ProductDetailsState {

  final String error;

  AddToCartErrorState({
    required this.error,
  });
}