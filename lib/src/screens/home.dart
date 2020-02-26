import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        headerCard(),
        newsCard(context, 'Home game this thursday, let\'s get ready this will be a tough one!', 'Team Captain Gretzky 99'),
        newsCard(context, 'Gentlemen, we have a tournament in 28th of march, if you can make it join the roster!', 'Team Manager Matthew'),
      ],
    );
  }

  Widget newsCard(BuildContext context, String title, String author) {
    return Card(
      child: ListTile(
        leading: FlutterLogo(size: 56.0,),
        title: Text(title),
        subtitle: Text(author),
        onTap: () {
          Navigator.pushNamed(context, "/news/detail");
        },
      ),
    );
  }

  Widget headerCard() {
    return Container(
      alignment: Alignment.center,
      height: 100,
      margin:EdgeInsets.all(4.0),
      decoration: BoxDecoration(
        color: Colors.indigoAccent,
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
      ),
      child: Text(
        'News!',
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.white,
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}