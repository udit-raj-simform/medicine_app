import 'package:medicine_app/utils/exports.dart';

class DateTile extends StatelessWidget {
  const DateTile(
      {Key? key,
      required this.index,
      required this.isSelected,
      required this.reminderDays})
      : super(key: key);
  final int index;
  final bool Function(int index) isSelected;
  final Map<DateTime, String> reminderDays;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70.0,
      height: 90.0,
      // padding: const EdgeInsets.all(10.0),
      margin: const EdgeInsets.symmetric(horizontal: 2.0),
      child: Card(
        color: isSelected(index) ? MyColors.onPrimary : MyColors.darkPrimary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18.0),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              reminderDays.values.elementAt(index),
              style: const TextStyle(color: MyColors.onSurface),
            ),
            Text(
              reminderDays.keys.elementAt(index).day.toString(),
              style: const TextStyle(
                color: MyColors.onSurface,
                fontSize: 16.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
