import 'package:medicine_app/utils/exports.dart';

void main() {
  runApp(const MyApp());
  // debugPrint(
  //     "Size: ${Constants.deviceHeight.toString()}: ${Constants.deviceWidth.toString()}");

  // 852.0: 393.0
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // debugShowMaterialGrid: true,
      title: "Medicine App",
      home: const Home(),
      theme: ThemeData.light(useMaterial3: true).copyWith(
        unselectedWidgetColor: MyColors.primary,
      ),
      themeMode: ThemeMode.light,
    );
  }
}
