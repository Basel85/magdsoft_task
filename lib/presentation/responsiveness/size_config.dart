class SizeConfig {
  static const double designWidth = 430;
  static const double designHeight = 932;
  static double getPartOfWidth(double part) => (part / designWidth) * 100;
  static double getPartOfHeight(double part)=> (part / designHeight) * 100;
}
