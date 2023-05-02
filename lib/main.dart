import 'package:medicine_app/utils/exports.dart';

void main() {
  runApp(const MyApp());
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
      theme: ThemeData.light(useMaterial3: true),
      themeMode: ThemeMode.light,
    );
  }
}
