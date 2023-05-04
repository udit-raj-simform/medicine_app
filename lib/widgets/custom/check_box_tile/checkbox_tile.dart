import 'package:medicine_app/utils/exports.dart';

class CheckBoxTile extends StatelessWidget {
  const CheckBoxTile({
    Key? key,
    required this.title,
    required this.index,
    required this.isSelected,
    required this.updateIndex,
  }) : super(key: key);
  final String title;
  final int index;
  final bool Function(int index) isSelected;
  final void Function(int index) updateIndex;

  @override
  Widget build(BuildContext context) {
    return Focus(
      autofocus: isSelected(index),
      child: GestureDetector(
        onTap: () => updateIndex(index),
        child: Container(
          decoration: BoxDecoration(
              color: isSelected(index) ? MyColors.onSurface : MyColors.primary,
              borderRadius: BorderRadius.circular(20.0),
              border: Border.all(
                color:
                    isSelected(index) ? MyColors.onPrimary : MyColors.primary,
              )),
          width: 70.0,
          height: 80.0,
          padding: const EdgeInsets.all(10.0),
          margin: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                title,
                style: TextStyle(
                    color: isSelected(index)
                        ? MyColors.onPrimary
                        : MyColors.textPrimary,
                    fontWeight: FontWeight.w500,
                    fontSize: 12.0),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50.0),
                  color: isSelected(index)
                      ? MyColors.onPrimary
                      : MyColors.onSurface,
                ),
                height: 25.0,
                width: 25.0,
                alignment: Alignment.center,
                child: Icon(
                  Icons.check,
                  color:
                      isSelected(index) ? MyColors.onSurface : MyColors.primary,
                  size: 18.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
