import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop/core/helper/my_navigator.dart';
import 'package:shop/features/auth/cubit/register_cubit/register_state.dart';
import 'package:shop/features/auth/views/login_view.dart';

import '../../data/repo/auth_repo.dart';

class RegisterCubit extends Cubit<RegisterState> {

  RegisterCubit() : super(RegisterInitial());

  static RegisterCubit get(context) =>
      BlocProvider.of(context);

  var username = TextEditingController();
  var email = TextEditingController();
  var phone = TextEditingController();
  var password = TextEditingController();
  var confirmPassword = TextEditingController();

  bool passwordSecure = true;
  bool confirmPasswordSecure = true;

  var formKey = GlobalKey<FormState>();

  AuthRepo authRepo = AuthRepo();

  void changePasswordVisibility(){

    passwordSecure = !passwordSecure;
    emit(ChangePasswordVisibility());
  }

  void changeConfirmPasswordVisibility(){

    confirmPasswordSecure =
    !confirmPasswordSecure;

    emit(ChangeConfirmPasswordVisibility());
  }

  void onRegisterPressed() async {
    emit(RegisterLoading());
    var response = await authRepo.register(
      name: username.text,
      email: email.text,
      phone: phone.text,
      password: password.text,
    );
    response.fold(
          (error){
        emit(RegisterError(error: error));
      },
          (success){
        emit(RegisterSuccess());
        MyNavigator.goTo(LoginView());
      },
    );
    formKey.currentState?.validate();
  }
}