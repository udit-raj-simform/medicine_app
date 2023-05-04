import 'package:medicine_app/utils/exports.dart';

class ElevatedButtonFullWidth extends StatelessWidget {
  const ElevatedButtonFullWidth({Key? key, required this.title, this.onPressed})
      : super(key: key);
  final String title;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Constants.deviceWidth,
      height: 50.0,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(
            MyColors.onPrimary,
          ),
          overlayColor: MaterialStateProperty.all<Color>(
            MyColors.onCardColor2,
          ),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
          ),
        ),
        child: Text(
          title,
          style: const TextStyle(color: MyColors.onSurface),
        ),
      ),
    );
  }
}
