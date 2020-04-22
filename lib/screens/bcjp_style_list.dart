import 'package:catnipa/models/beer_style.dart';
import 'package:catnipa/services/beer_color_calculator.dart';
import 'package:catnipa/services/beer_styles_service.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BeerStyleListScreen extends StatefulWidget {
  @override
  _BeerStyleListScreenState createState() => _BeerStyleListScreenState();
}

class _BeerStyleListScreenState extends State<BeerStyleListScreen> {
  BeerStyleList _beerStyleList;

  final beerColorCalculator = BeerColorCalculator();
  final beerStyleService = BeerStyleService();

  Future<String> getBeerList() async {
    var res = await beerStyleService.loadBeerStyleList();

    setState(() {
      _beerStyleList = res;
    });

    return "Success!";
  }

  @override
  void initState() {
    super.initState();
    this.getBeerList();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.separated(
        shrinkWrap: true,
        itemCount: _beerStyleList == null ? 0 : _beerStyleList.beerStyle.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text(_beerStyleList.beerStyle[index].styleId + ' - ' + _beerStyleList.beerStyle[index].styles),
            leading: FaIcon(FontAwesomeIcons.bookmark),
          );
        },
        separatorBuilder: (context, index) {
          return Divider();
        },
      ),
    );
  }
}
