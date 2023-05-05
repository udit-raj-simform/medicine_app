import 'package:medicine_app/utils/exports.dart';

class ButtonWithText extends StatelessWidget {
  const ButtonWithText(
      {Key? key, required this.title, this.color = MyColors.darkBackground})
      : super(key: key);
  final String title;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pop(context),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: 25.0,
            child: Icon(
              Icons.arrow_back_ios,
              color: color,
              size: 16.0,
            ),
          ),
          SizedBox(
            width: 45.0,
            child: Text(
              title,
              style: TextStyle(
                color: color,
                fontSize: 16.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
