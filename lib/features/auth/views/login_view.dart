import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shop/features/auth/views/register_view.dart';

import '../../../core/helper/my_navigator.dart';
import '../../../core/utils/app_colors.dart';
import '../../../core/widgets/custom_text_field.dart';
import '../../../core/widgets/default_button.dart';
import '../../home/views/home_view.dart';
import '../cubit/login_cubit/login_cubit.dart';
import '../cubit/login_cubit/login_state.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(

      create: (context) => LoginCubit(),

      child: BlocConsumer<LoginCubit, LoginState>(

        listener: (context, state) {

          if(state is LoginSuccess) {
            return MyNavigator.goTo(HomeView());
          }
        },

        builder: (context, state) {

          var cubit = LoginCubit.get(context);

          return Scaffold(

            body: SafeArea(

              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),

                child: Form(

                  key: cubit.formKey,

                  child: Column(

                    crossAxisAlignment:
                    CrossAxisAlignment.start,

                    children: [

                      SizedBox(height: 40.h),

                      Text(
                        "Welcome\nBack!",
                        style: TextStyle(
                          fontSize: 32.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      SizedBox(height: 50.h),

                      CustomTextField(
                        hint: "Email",
                        controller: cubit.email,
                        prefixIcon: Icons.email_outlined,
                      ),

                      SizedBox(height: 20.h),

                      CustomTextField(
                        hint: "Password",
                        controller: cubit.password,
                        prefixIcon: Icons.lock_outline,
                        isPassword: cubit.passwordSecure,
                        suffixIcon:
                        cubit.passwordSecure
                            ? Icons.visibility_off
                            : Icons.visibility,

                        suffixPressed: (){
                          cubit.changePasswordVisibility();
                        },
                      ),

                      SizedBox(height: 40.h),

                      DefaultButton(
                        text: "Login",

                        onPressed: () {
                          cubit.onLoginPressed();
                        },
                      ),

                      SizedBox(height: 20.h),

                      Row(
                        mainAxisAlignment:
                        MainAxisAlignment.center,

                        children: [

                          Text(
                            "Don’t have an account?",
                            style: TextStyle(
                              fontSize: 14.sp,
                            ),
                          ),

                          TextButton(
                            onPressed: () => MyNavigator.goTo(RegisterView()),


                            child: Text(
                              "Register",
                              style: TextStyle(
                                color: AppColors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}