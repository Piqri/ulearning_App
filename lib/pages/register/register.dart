import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ulearning_app/pages/register/bloc/register_blocs.dart';
import 'package:ulearning_app/pages/register/bloc/register_events.dart';
import 'package:ulearning_app/pages/register/bloc/register_states.dart';
import 'package:ulearning_app/pages/register/register_controller.dart';

import '../common_widgets.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RegisterBloc, RegisterState>(
      builder: (context, state) {
        return Container(
          color: Colors.white,
          child: SafeArea(
            child: Scaffold(
              backgroundColor: Colors.white,
              appBar: buildAppBar("Sign Up"),
              body: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.only(top: 36.w, bottom: 36.w),
                      child: Center(
                        child: reusableText(
                            'Enter your detail below & free sign up'),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 36.h),
                      padding: EdgeInsets.symmetric(horizontal: 24.w),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          reusableText('User name'),
                          buildTextField(
                            "Enter your user name",
                            "name",
                            "user",
                            (value) {
                              context
                                  .read<RegisterBloc>()
                                  .add(UserNameEvent(value));
                            },
                          ),
                          reusableText('Email'),
                          buildTextField(
                            "Enter your email address",
                            "email",
                            "user",
                            (value) {
                              context
                                  .read<RegisterBloc>()
                                  .add(EmailEvent(value));
                            },
                          ),
                          reusableText('Password'),
                          buildTextField(
                            "Enter your password",
                            "password",
                            "lock",
                            (value) {
                              context
                                  .read<RegisterBloc>()
                                  .add(PasswordEvent(value));
                            },
                          ),
                          reusableText('Re-enter password'),
                          buildTextField(
                            "Re-enter your password to confirm",
                            "password",
                            "lock",
                            (value) {
                              context
                                  .read<RegisterBloc>()
                                  .add(RePasswordEvent(value));
                            },
                          ),
                          reusableText(
                              'Enter your detail below & free sign up'),
                          buildLogInAndRegButton(
                            'Sign Up',
                            'login',
                            () {
                              // Navigator.of(context).pushNamed("/register");
                              RegisterController(context: context)
                                  .handleEmailRegister();
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
