import 'package:flutter_bloc/flutter_bloc.dart';

import '../data/repo/checkout_repo.dart';
import 'checkout_state.dart';

class CheckoutCubit
    extends Cubit<CheckoutState> {

  CheckoutCubit()
      : super(CheckoutInitial());

  static CheckoutCubit get(context) =>
      BlocProvider.of(context);

  CheckoutRepo checkoutRepo =
  CheckoutRepo();

  int selectedPaymentMethod = 0;

  List<String> paymentMethods = [

    "Cash",

    "Visa",

    "Master Card",
  ];

  void changePaymentMethod(index){

    selectedPaymentMethod = index;

    emit(ChangePaymentMethodState());
  }

  Future<void> placeOrder() async {

    emit(PlaceOrderLoadingState());

    var response =
    await checkoutRepo.placeOrder();

    response.fold(

          (error){

        emit(
          PlaceOrderErrorState(
            error: error,
          ),
        );
      },

          (success){

        emit(PlaceOrderSuccessState());
      },
    );
  }
}