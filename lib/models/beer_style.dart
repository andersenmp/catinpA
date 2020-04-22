class BeerStyleList {
  final List<BeerStyle> beerStyle;

  BeerStyleList({this.beerStyle});

  factory BeerStyleList.fromJson(List<dynamic> json) {
    List<BeerStyle> beerStyle = new List<BeerStyle>();
    beerStyle = json.map((i) => BeerStyle.fromJson(i)).toList();

    return new BeerStyleList(beerStyle: beerStyle);
  }
}

class BeerStyle {
  final String styleId;
  final String bjcpCategories;
  final String styles;
  final String styleFamily;
  final String styleHistory;
  final String origin;
  final String abvMin;
  final String abvMax;
  final String ibusMin;
  final String ibusMax;
  final String srmMin;
  final String srmMax;

  BeerStyle({
    this.styleId,
    this.bjcpCategories,
    this.styles,
    this.styleFamily,
    this.styleHistory,
    this.origin,
    this.abvMin,
    this.abvMax,
    this.ibusMin,
    this.ibusMax,
    this.srmMin,
    this.srmMax,
  });

  factory BeerStyle.fromJson(Map<String, dynamic> json) {
    return BeerStyle(
      styleId: json['Style_Id'],
      bjcpCategories: json['BJCP_Categories'],
      styles: json['Styles'],
      styleFamily: json['Style_Family'],
      styleHistory: json['Style_History'],
      origin: json['Origin'],
      abvMin: json['ABV_min'],
      abvMax: json['ABV_max'],
      ibusMin: json['IBUs_min'],
      ibusMax: json['IBUs_max'],
      srmMin: json['SRM_min'],
      srmMax: json['SRM_max'],
    );
  }
}
