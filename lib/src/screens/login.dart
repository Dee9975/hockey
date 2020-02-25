import 'package:flutter/material.dart';
import '../blocs/login_bloc.dart';

class Login extends StatelessWidget {
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          emailField(),
          passwordField(),
          submitButton(),
        ],
      ),
    );
  }

  Widget emailField() {
    return StreamBuilder(
      stream: bloc.email,
      builder: (context, snapshot) {
        return TextField(
          onChanged: bloc.changeEmail,
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            hintText: 'example@example.com',
            labelText: 'Email',
            errorText: snapshot.error,
          ),
        );
      },
    );
  }

  Widget passwordField() {
    return StreamBuilder(
      stream: bloc.password,
      builder: (context, snapshot) {
        return TextField(
          onChanged: bloc.changePassword,
          obscureText: true,
          decoration: InputDecoration(
            hintText: 'Password',
            labelText: 'Password',
            errorText: snapshot.error,
          ),
        );
      },
    );
  }

  Widget submitButton() {
    return StreamBuilder(
      stream: bloc.submitValid,
      builder: (context, snapshot) {
        return RaisedButton(
          child: Text(
            'Login',
            style: TextStyle(color: Colors.white,)
          ),
          color: Colors.blueAccent,
          onPressed: () {
            if(!snapshot.hasData) {
              return null;
            }
            bloc.submit();
            Navigator.pushNamed(context, '/team');
          },
        );
      },
    );
  }
}