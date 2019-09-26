import 'dart:async';

import 'package:login_bloc/lib/validator.dart';

class Bloc extends Object with Validators implements BaseBloc{
final _emailController = StreamController<String>();
final _passwordController = StreamController<String>();


Stream<String> get email=> _emailController.stream.transform(emailValidator);
Stream<String> get password=> _emailController.stream.transform(passwordValidator);


@override
  void dispose() {
_emailController.close();
_passwordController.close();

  }





}




abstract class BaseBloc{
  void dispose();
}