import 'package:medicine_app/utils/exports.dart';

class HeaderText extends StatelessWidget {
  const HeaderText(
      {Key? key, required this.title, this.color = MyColors.textPrimary})
      : super(key: key);
  final String title;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 25.0,
        color: color,
      ),
    );
  }
}
