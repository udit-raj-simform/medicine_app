import 'package:medicine_app/utils/exports.dart';

mixin Constants {
  static final MediaQueryData _mediaQueryData =
  MediaQueryData.fromWindow(WidgetsBinding.instance.window);

  static Size size = _mediaQueryData.size;
  static Orientation deviceOrientation = _mediaQueryData.orientation;
  static bool isPortrait = deviceOrientation == Orientation.portrait;

  static final double deviceHeight = size.height;
  static final double deviceWidth = size.width;
  static final double scaffoldHeight =
      deviceHeight - kToolbarHeight - kBottomNavigationBarHeight;

  static const paddingSym = EdgeInsets.symmetric(horizontal: 25.0);
  static const marginSym = EdgeInsets.symmetric(horizontal: 10.0);
  static const paddingAll = EdgeInsets.all(15.0);
  static const marginAll = EdgeInsets.all(15.0);

  static const TextStyle headerTextStyle = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 40.0,
  );

}
