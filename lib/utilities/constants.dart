import 'package:todo_app/utilities/import.dart';

// app colors codes
const Color kBgColor = Color(0xFFE2E2FF);
const Color kPrimaryColor = Color(0xFF000633);
const Color kAccentColor = Color(0xFF0065FF);
const Color kSecondaryColor = Color(0xFF333333);
const Color kSecondaryDeepColor = Color(0xFF071E9A);
const Color kSecondaryLightColor = Color(0xFFE4E4E4);

//text color codes
const Color kPrimaryTextColor = Color(0xFFFFFFFF);
const Color kPrimaryLightTextColor = Colors.grey;
const Color kSecondaryTextColor = Color(0xFF000000);
const Color kSecondaryLightTextColor = Color(0xFF3B65DB);
const Color kBulletColor = Color(0xFF071E9A);

//success and error colors
const Color kSuccessColor = Colors.green;
const Color kErrorColor = Colors.red;

//cards different color
List<Color> cardsColor = [
  Colors.white,
  Colors.red.shade100,
  Colors.pink.shade100,
  Colors.orange.shade100,
  Colors.yellow.shade100,
  Colors.green.shade100,
  Colors.blue.shade100,
  Colors.blueGrey.shade100,
];

//textstyles
TextStyle kTitleStyle = GoogleFonts.roboto(
  fontSize: getDeviceWidth(18),
  fontWeight: FontWeight.bold,
);
TextStyle kContentStyle = GoogleFonts.nunito(
  fontSize: getDeviceWidth(16),
  fontWeight: FontWeight.normal,
);
TextStyle kDateTitleStyle = GoogleFonts.roboto(
  fontSize: getDeviceWidth(13),
  fontWeight: FontWeight.w500 ,
);

//button colors
const Color kDeepButtonColor = Color(0xFF3A3A3A);
const Color kSecondaryDeepButtonColor = Color(0xFF3A3A3A);
const Color kSecondaryLightButtonColor = Color(0xFFE4E4E4);
const Color kLightButtonColor = Color(0xFF5569FB);

// Padding EdgeInsets.all Padding Constants on this Project
EdgeInsetsGeometry kQuatPad = EdgeInsets.all(getDeviceWidth(5));
EdgeInsetsGeometry kHalfPad = EdgeInsets.all(getDeviceWidth(10));
EdgeInsetsGeometry kQuatHalfPad = EdgeInsets.all(getDeviceWidth(15));
EdgeInsetsGeometry kSinglePad = EdgeInsets.all(getDeviceWidth(20));
EdgeInsetsGeometry kSingleMiddlePad = EdgeInsets.all(getDeviceWidth(25));
EdgeInsetsGeometry kDoublePad = EdgeInsets.all(getDeviceWidth(40));
EdgeInsetsGeometry kDoubleMiddlePad = EdgeInsets.all(getDeviceWidth(45));
EdgeInsetsGeometry kTriplePad = EdgeInsets.all(getDeviceWidth(60));

// EdgeInsets.Symmetric -> Horizontal Padding Constants on this Project
EdgeInsetsGeometry kQuatHorizontal =
    EdgeInsets.symmetric(horizontal: getDeviceWidth(5));
EdgeInsetsGeometry kHalfHorizontal =
    EdgeInsets.symmetric(horizontal: getDeviceWidth(10));
EdgeInsetsGeometry kHalfMiddleHorizontal =
    EdgeInsets.symmetric(horizontal: getDeviceWidth(15));
EdgeInsetsGeometry kSingleHorizontal =
    EdgeInsets.symmetric(horizontal: getDeviceWidth(20));
EdgeInsetsGeometry kSingleMiddleHorizontal =
    EdgeInsets.symmetric(horizontal: getDeviceWidth(25));
EdgeInsetsGeometry kDoubleHorizontal =
    EdgeInsets.symmetric(horizontal: getDeviceWidth(40));
EdgeInsetsGeometry kDoubleMiddleHorizontal =
    EdgeInsets.symmetric(horizontal: getDeviceWidth(45));

// EdgeInsets.Symmetric -> Vertical Padding Constants on this Project
EdgeInsetsGeometry kQuatVertical =
    EdgeInsets.symmetric(vertical: getDeviceWidth(5));
EdgeInsetsGeometry kHalfVertical =
    EdgeInsets.symmetric(vertical: getDeviceWidth(10));
EdgeInsetsGeometry kHalfMiddleVertical =
    EdgeInsets.symmetric(vertical: getDeviceWidth(15));
EdgeInsetsGeometry kSingleVertical =
    EdgeInsets.symmetric(vertical: getDeviceWidth(20));
EdgeInsetsGeometry kSingleMiddleVertical =
    EdgeInsets.symmetric(vertical: getDeviceWidth(25));
EdgeInsetsGeometry kDoubleVertical =
    EdgeInsets.symmetric(vertical: getDeviceWidth(40));
EdgeInsetsGeometry kDoubleMiddleVertical =
    EdgeInsets.symmetric(vertical: getDeviceWidth(45));

// All Circular Radius Constant
BorderRadiusGeometry kQuatCurve = BorderRadius.circular(getDeviceWidth(5));
BorderRadiusGeometry kHalfCurve = BorderRadius.circular(getDeviceWidth(10));
BorderRadiusGeometry kHalfMiddleCurve =
    BorderRadius.circular(getDeviceWidth(15));
BorderRadiusGeometry kFullCurve = BorderRadius.circular(getDeviceWidth(20));
BorderRadiusGeometry kFullMiddleCurve =
    BorderRadius.circular(getDeviceWidth(25));

// Horizontal Circular Radius Constant
BorderRadiusGeometry kHalfCurveHorizontalLeft =
    BorderRadius.horizontal(left: Radius.circular(getDeviceWidth(10)));
BorderRadiusGeometry kHalfCurveHorizontalRight =
    BorderRadius.horizontal(right: Radius.circular(getDeviceWidth(10)));

// Vertical Circular Radius Constant
BorderRadiusGeometry kHalfCurveVerticalTop =
    BorderRadius.vertical(top: Radius.circular(getDeviceWidth(10)));
BorderRadiusGeometry kHalfCurveVerticalBottom =
    BorderRadius.vertical(bottom: Radius.circular(getDeviceWidth(10)));

// Icons border width
Border whiteBorder = const Border(
  top: BorderSide(width: 1, color: kSecondaryColor),
  left: BorderSide(width: 1, color: kSecondaryColor),
  right: BorderSide(width: 1, color: kSecondaryColor),
  bottom: BorderSide(width: 1, color: kSecondaryColor),
);
