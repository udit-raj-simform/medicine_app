import 'package:medicine_app/utils/exports.dart';

class ElevatedButtonFullWidth extends StatelessWidget {
  const ElevatedButtonFullWidth({
    Key? key,
    required this.title,
    this.onPressed,
    this.height = 50.0,
    this.backgroundColor,
    this.overlayColor,
    this.foregroundColor,
    this.shadowColor,
    this.boxShadow,
  }) : super(key: key);
  final String title;
  final double? height;
  final Color? backgroundColor;
  final Color? overlayColor;
  final Color? foregroundColor;
  final Color? shadowColor;
  final List<BoxShadow>? boxShadow;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Constants.deviceWidth,
      decoration: BoxDecoration(
        boxShadow: boxShadow ??
            <BoxShadow>[
              BoxShadow(
                color: shadowColor ?? MyColors.textPrimary.withOpacity(0.2),
                blurRadius: 15.0,
                spreadRadius: 1.0,
                offset: const Offset(0.0, 5.0),
              ),
            ],
      ),
      height: height,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(
            backgroundColor ?? MyColors.onPrimary,
          ),
          overlayColor: MaterialStateProperty.all<Color>(
            overlayColor ?? MyColors.onCardColor2,
          ),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
          ),
        ),
        child: Text(
          title,
          style: TextStyle(color: foregroundColor ?? MyColors.onSurface),
        ),
      ),
    );
  }
}
