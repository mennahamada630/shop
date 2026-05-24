import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop/core/widgets/svg_wrapper.dart';

import '../../../core/utils/app_assets.dart';
import '../data/onboarding_model.dart';
import 'onboarding_state.dart';

class OnboardingCubit extends Cubit<OnboardingState> {

  OnboardingCubit() : super(OnboardingInitial());

  static OnboardingCubit get(context) => BlocProvider.of(context);

  PageController pageController = PageController();

  int currentIndex = 0;

  List<OnboardingModel> onboardingList = [

    OnboardingModel(
      image: AppAssets.chooseProduct,
      title: "Choose Prroduct",
      description:
      "Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint.",
    ),

    OnboardingModel(
      image: AppAssets.makePayment,
      title: "Make Payment",
      description:
      "Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint.",
    ),

    OnboardingModel(
      image: AppAssets.getYourOrder,
      title: "Get Your Order",
      description:
      "Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint.",
    ),
  ];

  void changePage(index) {
    currentIndex = index;
    emit(ChangePageState());
  }
}