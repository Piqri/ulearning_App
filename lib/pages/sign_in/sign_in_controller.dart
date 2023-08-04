import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ulearning_app/common/widgets/flutter_toast.dart';
import 'package:ulearning_app/pages/sign_in/bloc/sign_in_blocs.dart';

class SignInController {
  final BuildContext context;
  const SignInController({required this.context});

  Future<void> handleSignIn(String type) async {
    try {
      if (type == "email") {
        //BlocProvider.of<SigninBloc>(context).state;
        final state = context.read<SignInBloc>().state;
        String emailAddress = state.email;
        String password = state.password;
        if (emailAddress.isEmpty) {
          //
          // print('Email is empty');
          toastInfo(msg: "You need to fill email address");
          return;
        }
        // else {
        //   // print('Email is $emailAddress');
        // }
        if (password.isEmpty) {
          //
          // print('Password is empty');
          toastInfo(msg: "You need to fill password");
          return;
        }
        try {
          final credential = await FirebaseAuth.instance
              .signInWithEmailAndPassword(
                  email: emailAddress, password: password);
          if (credential.user == null) {
            //
            // print('user does not exist');
            toastInfo(msg: "You don't exist");
            return;
          }
          if (!credential.user!.emailVerified) {
            //
            // print('not varified');
            toastInfo(msg: "You need to verify email account");
            return;
          }
          var user = credential.user;
          if (user != null) {
            // print('user exist');
            toastInfo(msg: "User exist");
            Navigator.of(context)
                .pushNamedAndRemoveUntil("/application", (route) => false);
            //we got verified user from firebase
          } else {
            // print('no user');
            toastInfo(msg: "Currently you are not a user of this app");
            return;
            //we have error getting user from firebase
          }
        } on FirebaseAuthException catch (e) {
          if (e.code == "user-not-found") {
            // print("no user found for that email.");
            toastInfo(msg: "No user found for that email");
          } else if (e.code == "wrong-password") {
            // print("wrong password provided for that user.");
            toastInfo(msg: "Wrong password provided for that user");
          } else if (e.code == "invalid-email") {
            // print("your email format is wrong.");
            toastInfo(msg: "Your email address format is wrong");
          }
        }
      }
    } catch (e) {}
  }
}
