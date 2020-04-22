import 'package:catnipa/screens/selection_screen.dart';
import 'package:catnipa/screens/bcjp_style_list.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class Home extends StatelessWidget {
  const Home({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                Tab(icon: FaIcon(FontAwesomeIcons.beer)),
                Tab(icon: FaIcon(FontAwesomeIcons.bookmark)),
              ],
            ),
            title: Text('CatnipA'),
            elevation: 0.7,
          ),
          body: TabBarView(
            children: <Widget>[
              SelectionScreen(),
              BeerStyleListScreen(),
            ],
          ),
        ),
      );
  }
}

class SelectScreen {
}
