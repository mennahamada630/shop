import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/helper/my_navigator.dart';
import '../../../core/widgets/custom_text_field.dart';
import '../../../core/widgets/default_button.dart';
import '../cubit/register_cubit/register_cubit.dart';
import '../cubit/register_cubit/register_state.dart';
import 'login_view.dart';


class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {

    return BlocProvider(

      create: (context) => RegisterCubit(),

      child: BlocConsumer<RegisterCubit, RegisterState>(

        listener: (context, state) {},

        builder: (context, state) {

          var cubit = RegisterCubit.get(context);

          return Scaffold(

            body: SafeArea(

              child: SingleChildScrollView(

                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),

                  child: Form(

                    key: cubit.formKey,

                    child: Column(

                      crossAxisAlignment:
                      CrossAxisAlignment.start,

                      children: [

                        SizedBox(height: 30.h),

                        Text(
                          "Create an\naccount",
                          style: TextStyle(
                            fontSize: 32.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        SizedBox(height: 40.h),

                        CustomTextField(
                          hint: "Full Name",
                          controller: cubit.username,
                          prefixIcon: Icons.person_outline,
                        ),

                        SizedBox(height: 20.h),

                        CustomTextField(
                          hint: "Phone",
                          controller: cubit.phone,
                          prefixIcon: Icons.phone_outlined,
                        ),

                        SizedBox(height: 20.h),

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
                        ),

                        SizedBox(height: 20.h),

                        CustomTextField(
                          hint: "Confirm Password",
                          controller:
                          cubit.confirmPassword,
                          prefixIcon: Icons.lock_outline,
                          isPassword:
                          cubit.confirmPasswordSecure,
                        ),

                        SizedBox(height: 40.h),

                        DefaultButton(
                          text: "Create Account",
                          onPressed: () {
                            cubit.onRegisterPressed();
                          },
                        ),

                        SizedBox(height: 20.h),

                        Row(
                          mainAxisAlignment:
                          MainAxisAlignment.center,

                          children: [

                            Text(
                              "Already Have An Account?",
                            ),

                            TextButton(
                              onPressed: () => MyNavigator.goTo(LoginView()),
                              child: const Text("Login"),
                            ),
                          ],
                        ),
                      ],
                    ),
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