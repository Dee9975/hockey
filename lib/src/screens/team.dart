import 'package:flutter/material.dart';
import '../blocs/team_bloc.dart';
import 'home.dart';
import 'profile.dart';

class Team extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Team name",
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 30.0
          ),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Drawer Header',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            drawerItem(context, Icon(Icons.home), 'Home'),
            drawerItem(context, Icon(Icons.account_circle), 'Profile'),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
            ),
          ],
        ),
      ),
      body: buildTeam(),
    );
  }

  Widget buildTeam() {
    return StreamBuilder(
      stream: bloc.getNavigation,
      initialData: bloc.navigationProvider.currentNavigation,
      builder: (context, snapshot) {
        if (bloc.navigationProvider.currentNavigation == 'Home') {
          return Home();
        }
        if (bloc.navigationProvider.currentNavigation == 'Profile') {
          return Profile();
        }
        return Home();
      },
    );
  }

  Widget drawerItem(BuildContext context, Widget icon, String name) {
    return ListTile(
      leading: icon,
      title: Text(name),
      onTap: () {
        Navigator.of(context).pop();
        bloc.updateNavigation(name);
      },
    );
  }
}