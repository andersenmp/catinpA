import 'package:catnipa/services/beer_color_calculator.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SelectionScreen extends StatefulWidget {
  @override
  _SelectionScreenState createState() => _SelectionScreenState();
}

class _SelectionScreenState extends State<SelectionScreen> {
  int _currentColor = 1;
  double _currentABV = 2.5;

  final beerColorCalculator = BeerColorCalculator();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Text(
            'Find your beer style',
            style: TextStyle(fontSize: 18.0),
          ),
          SizedBox(height: 20.0),
          Column(
            children: <Widget>[
              FaIcon(FontAwesomeIcons.palette,
                  color: beerColorCalculator
                      .srmColor((_currentColor ?? 1).roundToDouble())),
              Slider(
                label: (_currentColor ?? 1).toString(),
                activeColor: beerColorCalculator
                    .srmColor((_currentColor ?? 1).roundToDouble()),
                inactiveColor: beerColorCalculator
                    .srmColor((_currentColor ?? 1).roundToDouble()),
                min: 1,
                max: 40,
                divisions: 40,
                value: (_currentColor ?? 1).roundToDouble(),
                onChanged: (val) => setState(() => _currentColor = val.round()),
              ),
            ],
          ),
          SizedBox(height: 20.0),
          Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(_currentABV.toStringAsFixed(2),
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 40)),
                  FaIcon(FontAwesomeIcons.percent),
                ],
              ),
              Slider(
                label: _currentABV.toStringAsFixed(2),
                min: 1,
                max: 14,
                divisions: 26,
                value: _currentABV,
                onChanged: (val) => setState(() => _currentABV = val),
              ),
              
            ],
            
          ),
        ],
      ),
    );
  }
}
