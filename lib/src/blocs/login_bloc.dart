import 'dart:async';
import 'package:rxdart/rxdart.dart';
import 'validators.dart';

class LoginBloc with Validators {
  final BehaviorSubject<String> _emailController = BehaviorSubject<String>();
  final BehaviorSubject<String> _passwordController = BehaviorSubject<String>();

  Stream<String> get email => _emailController.stream.transform(validateEmail);
  Stream<String> get password => _passwordController.transform(validatePassword);
  Stream<bool> get submitValid => Rx.combineLatest2(email, password, (a, b) => true);

  Function(String) get changeEmail => _emailController.sink.add;
  Function(String) get changePassword => _passwordController.sink.add;

  submit() {
    final validEmail = _emailController.value;
    final validPassword = _passwordController.value;

    print('Email is $validEmail and password is $validPassword');

  }

  dispose() {
    _emailController.close();
    _passwordController.close();
  }
}

final bloc = LoginBloc();