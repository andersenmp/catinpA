import 'package:flutter/material.dart';

class BeerColorCalculator {
  BeerColorCalculator();

  double ebcFromSrm(double srm) {
    return 1.97 * srm;
  }

  double srmFromEbc(double ebc) {
    return ebc / 1.97;
  }

  Color srmColor(double srm) {
    // Returns an RGB value based on SRM
    double _r = 0;
    double _g = 0;
    double _b = 0;

    if (srm >= 0 && srm <= 1) {
      _r = 240;
      _g = 239;
      _b = 181;
    } else if (srm > 1 && srm <= 2) {
      _r = 233;
      _g = 215;
      _b = 108;
    } else if (srm > 2) {
      // Set red decimal
      if (srm < 70.6843) {
        _r = 243.8327 - 6.4040 * srm + 0.0453 * srm * srm;
      } else {
        _r = 17.5014;
      }
      // Set green decimal
      if (srm < 35.0674) {
        _g = 230.929 - 12.484 * srm + 0.178 * srm * srm;
      } else {
        _g = 12.0382;
      }
      // Set blue decimal
      if (srm < 4) {
        _b = -54.0 * srm + 216.0;
      } else if (srm >= 4 && srm < 7) {
        _b = 0;
      } else if (srm >= 7 && srm < 9) {
        _b = 13.0 * srm - 91.0;
      } else if (srm >= 9 && srm < 13) {
        _b = 2.0 * srm + 8.0;
      } else if (srm >= 13 && srm < 17) {
        _b = -1.5 * srm + 53.5;
      } else if (srm >= 17 && srm < 22) {
        _b = 0.6 * srm + 17.8;
      } else if (srm >= 22 && srm < 27) {
        _b = -2.2 * srm + 79.4;
      } else if (srm >= 27 && srm < 34) {
        _b = -0.4285 * srm + 31.5714;
      } else {
        _b = 17;
      }
    }

    return Color.fromARGB(255, _r.round(), _g.round(), _b.round());
  }
}
