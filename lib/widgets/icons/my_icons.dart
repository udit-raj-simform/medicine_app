import 'package:medicine_app/utils/exports.dart';

class MyIcons {
  MyIcons();

  Color color = Colors.transparent;

  Widget menuIcon(void Function()? onPressed) =>
      Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onPressed,
          onTapDown: (details) {
            color = Colors.black45;
          },
          onTapUp: (details) {
            color = Colors.transparent;
          },
          child: Container(
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(50.0),
            ),
            height: 85.0,
            width: 85.0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Divider(
                  color: MyColors.textPrimary,
                  thickness: 2.0,
                  indent: 25.0,
                  endIndent: 30.0,
                  height: 8.0,
                ),
                Divider(
                  color: MyColors.textPrimary,
                  thickness: 2.0,
                  indent: 25.0,
                  endIndent: 40.0,
                  height: 8.0,
                ),
                Divider(
                  color: MyColors.textPrimary,
                  thickness: 2.0,
                  indent: 25.0,
                  endIndent: 50.0,
                  height: 8.0,
                ),
              ],
            ),
          ),
        ),
      );

  Widget profileMenuIcon(void Function()? onTap) =>
      Container(
        decoration: BoxDecoration(
          color: MyColors.secondary,
          borderRadius: BorderRadius.circular(30.0),
        ),
        clipBehavior: Clip.antiAlias,
        child: Material(
          color: Colors.transparent,
          clipBehavior: Clip.antiAlias,
          child: InkWell(
            onTap: onTap,
            focusColor: MyColors.onPrimary,
            hoverColor: MyColors.cardColor1,
            highlightColor: MyColors.onCardColor1,
            splashColor: MyColors.surface,
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundColor: MyColors.onSecondary,
                    child: SvgPicture.asset(
                      Strings.images['profile']!,
                      height: 40.0,
                      width: 40.0,
                    ),
                  ),
                  Image.asset(
                    Strings.images['options']!,
                    color: MyColors.textPrimary,
                    scale: 2,
                  ),
                ],
              ),
            ),
          ),
        ),
      );
}
