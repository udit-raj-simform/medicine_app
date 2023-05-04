import 'package:medicine_app/utils/exports.dart';

class TransParentAppBar extends StatelessWidget implements PreferredSizeWidget {
  const TransParentAppBar({Key? key, required this.leadingTitle, this.color})
      : super(key: key);
  final String leadingTitle;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      shadowColor: Colors.transparent,
      surfaceTintColor: Colors.transparent,
      leadingWidth: 100.0,
      leading: ButtonWithText(
        title: leadingTitle,
        color: color,
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
