import 'package:flutter/material.dart';

class NewsDetail extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
         SliverAppBar(
            pinned: true,
            expandedHeight: 250.0,
            flexibleSpace: FlexibleSpaceBar(
              stretchModes: <StretchMode>[
                StretchMode.zoomBackground,
                StretchMode.blurBackground,
              ],
              centerTitle: true,
              background: Stack(

                fit: StackFit.expand,
                children: [
                  Image.network(
                    'https://scontent.frix3-1.fna.fbcdn.net/v/t1.0-9/51709400_2422406507783381_6796528992775045120_o.jpg?_nc_cat=101&_nc_sid=a61e81&_nc_ohc=1UjaiumfGzgAX-Wbwr-&_nc_ht=scontent.frix3-1.fna&oh=c07a841971140922c691f3fc2d8c960c&oe=5EBA2E2A',
                    fit: BoxFit.cover,
                  ),
                ],
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Column(
                  children: <Widget>[
                    buildTitle('Tournament time!'),
                    buildAuthor('https://ehl.entuziasti.com/uploads/player/px130/player_12053.jpg', 'Matiss Kalnins'),
                    ListTile(
                      title: Text("""Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Nunc sed velit dignissim sodales ut eu sem. Vehicula ipsum a arcu cursus. Auctor eu augue ut lectus arcu bibendum. Pharetra et ultrices neque ornare aenean euismod elementum. Cras fermentum odio eu feugiat pretium nibh ipsum consequat. Pellentesque habitant morbi tristique senectus. Consectetur purus ut faucibus pulvinar. Elementum nibh tellus molestie nunc non blandit massa enim. A scelerisque purus semper eget duis at tellus at urna. Mattis pellentesque id nibh tortor id aliquet. Et ligula ullamcorper malesuada proin libero. Nam at lectus urna duis convallis convallis tellus id interdum. Euismod in pellentesque massa placerat duis ultricies. Sagittis aliquam malesuada bibendum arcu vitae elementum curabitur vitae nunc. Tellus orci ac auctor augue. Fermentum posuere urna nec tincidunt praesent semper feugiat. Pharetra vel turpis nunc eget lorem dolor sed.

Ligula ullamcorper malesuada proin libero nunc consequat interdum. Commodo nulla facilisi nullam vehicula ipsum a arcu cursus vitae. Sollicitudin tempor id eu nisl nunc mi. Volutpat consequat mauris nunc congue nisi vitae suscipit tellus. Luctus accumsan tortor posuere ac. Ornare aenean euismod elementum nisi quis eleifend quam adipiscing. Odio ut enim blandit volutpat maecenas volutpat blandit aliquam etiam. Malesuada bibendum arcu vitae elementum curabitur vitae nunc. Nam at lectus urna duis convallis convallis tellus. Pellentesque eu tincidunt tortor aliquam. Etiam non quam lacus suspendisse faucibus interdum posuere lorem. Consectetur purus ut faucibus pulvinar elementum. Metus vulputate eu scelerisque felis. Luctus venenatis lectus magna fringilla urna porttitor rhoncus. Egestas erat imperdiet sed euismod nisi porta lorem. Ultrices eros in cursus turpis massa tincidunt dui. Consectetur lorem donec massa sapien faucibus.

Integer vitae justo eget magna fermentum. Ut aliquam purus sit amet. Posuere ac ut consequat semper viverra nam libero justo. Pellentesque eu tincidunt tortor aliquam. Lorem ipsum dolor sit amet consectetur. Euismod quis viverra nibh cras pulvinar mattis nunc sed blandit. In ornare quam viverra orci sagittis eu volutpat odio. Arcu odio ut sem nulla pharetra diam sit amet. At augue eget arcu dictum. Quis risus sed vulputate odio ut. Est pellentesque elit ullamcorper dignissim cras tincidunt lobortis feugiat. Risus ultricies tristique nulla aliquet enim tortor at. Ultrices gravida dictum fusce ut. Justo donec enim diam vulputate ut. Porta nibh venenatis cras sed felis eget. Lectus mauris ultrices eros in cursus turpis. Sit amet purus gravida quis blandit turpis cursus. Duis at consectetur lorem donec massa sapien faucibus et molestie. Senectus et netus et malesuada fames.

Facilisi cras fermentum odio eu feugiat pretium nibh ipsum. Consectetur a erat nam at lectus urna duis convallis convallis. Nunc mi ipsum faucibus vitae aliquet. Sit amet consectetur adipiscing elit pellentesque habitant morbi tristique senectus. Blandit cursus risus at ultrices. Faucibus turpis in eu mi bibendum neque egestas congue. Interdum posuere lorem ipsum dolor sit amet consectetur adipiscing. Fusce id velit ut tortor pretium viverra suspendisse. Aliquet risus feugiat in ante metus. Nisl rhoncus mattis rhoncus urna neque viverra justo nec ultrices. Consectetur adipiscing elit ut aliquam purus sit amet luctus. Ut enim blandit volutpat maecenas volutpat blandit. Erat nam at lectus urna duis convallis convallis. Elementum integer enim neque volutpat ac tincidunt vitae. Integer enim neque volutpat ac tincidunt vitae semper quis. Lobortis scelerisque fermentum dui faucibus in ornare quam viverra. Felis eget nunc lobortis mattis aliquam faucibus purus in. Eget nulla facilisi etiam dignissim diam quis enim. Eget dolor morbi non arcu risus quis varius quam quisque. Donec massa sapien faucibus et molestie.

Ac tincidunt vitae semper quis lectus. Sed risus pretium quam vulputate dignissim suspendisse in est. Maecenas volutpat blandit aliquam etiam erat velit scelerisque in dictum. Eget felis eget nunc lobortis mattis aliquam faucibus purus. Faucibus purus in massa tempor nec feugiat. Amet cursus sit amet dictum sit amet. Imperdiet sed euismod nisi porta lorem mollis aliquam ut. Laoreet suspendisse interdum consectetur libero id faucibus. Urna condimentum mattis pellentesque id. Erat nam at lectus urna duis convallis convallis tellus."""),
                    ),
                  ]
                ),
              ]
            ),
          ),
        ],
      ),
    );
  }
  Widget buildTitle(String title) {
    return Container(
      margin: EdgeInsets.only(top: 20.0, bottom: 15.0),
      child: Text(
        title,
        style: TextStyle(
          fontSize: 30.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget buildAuthor(String imageLink, String authorName) {
    return Column(
      children: <Widget>[
        Container(
          width: 80.0,
          height: 80.0,
          margin: EdgeInsets.only(bottom: 10.0,),
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage(
                      imageLink
                  )
              )
          ),
        ),
        Text(authorName, style: TextStyle(fontWeight: FontWeight.bold)),
        Container(margin: EdgeInsets.only(bottom: 20.0),),
      ],
    );
  }
}