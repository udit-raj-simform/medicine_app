import 'package:medicine_app/utils/exports.dart';

class DropDownTile extends StatelessWidget {
  const DropDownTile({Key? key,
    required this.title,
    required this.subTitle,
    required this.imageData,
    required this.items})
      : super(key: key);
  final String title;
  final String subTitle;
  final String imageData;
  final List<PopupMenuEntry> items;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      flex: 1,
      child: Container(
        decoration: BoxDecoration(
          color: MyColors.onSurface,
          borderRadius: BorderRadius.circular(15.0),
          border: Border.all(
            color: MyColors.textSub.withOpacity(0.5),
          ),
        ),
        height: 70.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: [
            const SizedBox(
              width: 15.0,
            ),
            SizedBox(
              height: 24.0,
              width: 24.0,
              child: Image.asset(imageData),
            ),
            VerticalDivider(
              color: MyColors.textSub.withOpacity(0.5),
              thickness: 1.0,
              indent: 10.0,
              endIndent: 10.0,
              width: 20.0,
            ),
            SizedBox(
              height: 70.0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      color: MyColors.textPrimary.withOpacity(0.6),
                      fontSize: 12.0,
                    ),
                  ),
                  Text(
                    subTitle,
                    style: const TextStyle(
                      color: MyColors.textPrimary,
                      fontSize: 16.0,
                    ),
                  ),
                ],
              ),
            ),
            const Expanded(
              child: SizedBox(),
            ),
            PopupMenuButton(
                icon: Icon(
                  Icons.keyboard_arrow_down_rounded,
                  color: MyColors.textSub.withOpacity(0.9),
                  size: 25.0,
                ),
                itemBuilder: (context) => items),
          ],
        ),
      ),
    );
  }
}
