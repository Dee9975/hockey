import 'package:flutter/material.dart';
import 'screens/login.dart';
import 'screens/team.dart';

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
    }
    return MaterialPageRoute(
      builder: (context) {
        return Text('404 not found mate get the fuck away');
      }
    );
  }
}