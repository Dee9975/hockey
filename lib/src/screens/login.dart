import 'package:flutter/material.dart';
import '../blocs/login_bloc.dart';

class Login extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      body: buildLogin(),
    );
  }
  Widget buildLogin() {
    return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            loginHeader(),
            loginFields()
          ],
        ),
    );
  }

  Widget loginHeader() => Column(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
      FlutterLogo(
        colors: Colors.green,
        size: 80,
      ),
      SizedBox(
        height: 30.0,
      ),
      Text(
        "Welcome to ice manager!",
        style: TextStyle(fontWeight: FontWeight.w700, color: Colors.green),
      ),
      SizedBox(
        height: 5.0,
      ),
      Text(
        "Sign in to continue",
        style: TextStyle(color: Colors.grey),
      ),
    ],
  );

  Widget loginFields() => Container(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        emailField(),
        passwordField(),
        SizedBox(height: 30.0,),
        submit(),
        SizedBox(height: 5.0,),
        Text(
          'SIGN UP FOR AN ACCOUNT',
          style: TextStyle(
            color: Colors.grey
          ),
        )
      ],
    ),
  );

  Widget emailField() => StreamBuilder(
    stream: bloc.email,
    builder: (context,snapshot) {
      return Container(
        padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 30.0),
        child: TextField(
          onChanged: bloc.changeEmail,
          keyboardType: TextInputType.emailAddress,
          maxLines: 1,
          decoration: InputDecoration(
            hintText: "Enter your email",
            labelText: "Email",
            errorText: snapshot.error,
          ),
        ),
      );
    },
  );

  Widget passwordField() => StreamBuilder(
    stream: bloc.password,
    builder: (context,snapshot) {
      return Container(
        padding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 30.0),
        child: TextField(
          onChanged: bloc.changePassword,
          obscureText: true,
          maxLines: 1,
          decoration: InputDecoration(
            hintText: "Enter your password",
            labelText: "Password",
            errorText: snapshot.error,
          ),
        ),
      );
    },
  );

  Widget submit() => StreamBuilder(
    stream: bloc.submitValid,
    builder: (context, snapshot) {
      return Container(
        padding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 30.0),
        width: double.infinity,
        child: RaisedButton(
          padding: EdgeInsets.all(12.0),
          shape: StadiumBorder(),
          child: Text(
            'SIGN IN',
            style: TextStyle(color: Colors.white),
          ),
          color: Colors.green,
          onPressed: () {
            if(!snapshot.hasData) {
              return null;
            }
            bloc.submit();
            Navigator.pushNamed(context, '/team');
          },
        ),
      );
    },
  );
}