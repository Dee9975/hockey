import 'package:flutter/material.dart';
import 'package:hockey_app/src/screens/news_detail.dart';
import 'screens/login.dart';
import 'screens/team.dart';
import 'screens/news_detail.dart';

class App extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hockey Team management app',
      onGenerateRoute: routes,
    );
  }

  Route routes(RouteSettings settings) {
    switch(settings.name) {
      case '/': {
        return MaterialPageRoute(
          builder: (context) {
            return Login();
          }
        );
      }
      case '/team': {
        return MaterialPageRoute(
          builder: (context) {
            return Team();
          }
        );
      }
      case '/news/detail': {
        return MaterialPageRoute(
          builder: (context) {
            return NewsDetail();
          }
        );
      }
    }
    return MaterialPageRoute(
      builder: (context) {
        return Text('404 not found mate get the fuck away');
      }
    );
  }
}