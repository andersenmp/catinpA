import 'dart:convert';

import 'package:catnipa/models/beer_style.dart';
import 'package:catnipa/services/json_from_assets.dart';

class BeerStyleService {

  BeerStyleList beerStyleList;

  Future<BeerStyleList> _loadBeerStyleListFromJson() async {
     String response = await JsonFromAssets().loadJsonFromAsset('assets/json/beer_styles.json');
     final json = jsonDecode(response);
     BeerStyleList beerStyleList = BeerStyleList.fromJson(json);
     //beerStyleList.beerStyle.forEach((f) => print(f.styleId));
     
     return beerStyleList;
  }

  Future loadBeerStyleList() async{
     return await _loadBeerStyleListFromJson();
  }

}
