import 'package:medicine_app/utils/exports.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton(
      {Key? key,
      this.color,
      this.shadowColor,
      this.textColor,
      this.onPressed,
      required this.title})
      : super(key: key);
  final String title;
  final Color? color;
  final Color? shadowColor;
  final Color? textColor;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: color ?? MyColors.onSurface,
      shadowColor: shadowColor ?? MyColors.onSurface,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      clipBehavior: Clip.antiAlias,
      child: SizedBox(
        width: Constants.deviceWidth,
        height: 40.0,
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            splashColor: shadowColor,
            focusColor: shadowColor,
            onTap: onPressed,
            child: Align(
              alignment: Alignment.center,
              child: Text(
                title,
                style: TextStyle(color: textColor ?? MyColors.onPrimary),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
