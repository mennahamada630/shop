abstract class CheckoutState {}

class CheckoutInitial
    extends CheckoutState {}

class ChangePaymentMethodState
    extends CheckoutState {}

class PlaceOrderLoadingState
    extends CheckoutState {}

class PlaceOrderSuccessState
    extends CheckoutState {}

class PlaceOrderErrorState
    extends CheckoutState {

  final String error;

  PlaceOrderErrorState({
    required this.error,
  });
}