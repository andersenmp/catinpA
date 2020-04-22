import 'package:flutter/services.dart' show rootBundle;

class JsonFromAssets {
  Future<String> loadJsonFromAsset(String assetsPath) async {
    print('--- Parse json from: $assetsPath');
    return rootBundle
        .loadString(assetsPath);
  }
}
