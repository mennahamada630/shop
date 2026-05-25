import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop/core/helper/my_navigator.dart';
import 'package:shop/features/home/views/home_view.dart';

import '../../data/repo/auth_repo.dart';
import 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {

  LoginCubit() : super(LoginInitial());

  static LoginCubit get(context) => BlocProvider.of(context);

  var email = TextEditingController();
  var password = TextEditingController();

  bool passwordSecure = true;

  var formKey = GlobalKey<FormState>();

  AuthRepo authRepo = AuthRepo();

  void changePasswordVisibility() {

    passwordSecure = !passwordSecure;
    emit(ChangePasswordVisibility());
  }

  void onLoginPressed() async {
    emit(LoginLoading());

    var response = await authRepo.login(
      email: email.text,
      password: password.text,
    );

    response.fold(
          (error) {
        emit(LoginError(error: error));
      },

          (success) {
        emit(LoginSuccess());
        MyNavigator.goTo(HomeView());
      },
    );
    formKey.currentState?.validate();
  }
}