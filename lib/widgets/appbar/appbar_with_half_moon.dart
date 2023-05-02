import 'package:medicine_app/utils/exports.dart';

class HalfMoonAppBar extends StatelessWidget {
  const HalfMoonAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: kToolbarHeight * 2.8,
          width: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              MyIcons().profileMenuIcon(),
              const SizedBox(
                width: 25.0,
              )
            ],
          ),
        ),
        Positioned(
          top: -40.0,
          left: -75.0,
          child: Container(
            height: kToolbarHeight * 3.5,
            width: kToolbarHeight * 3.5,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(500.0),
              gradient: const LinearGradient(
                colors: <Color>[MyColors.surface, MyColors.onSurface],
                begin: Alignment.bottomLeft,
                end: Alignment.topRight,
              ),
            ),
            clipBehavior: Clip.antiAlias,
            alignment: Alignment.center,
            child: Container(
              height: kToolbarHeight * 2.2,
              width: kToolbarHeight * 2.2,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(500.0),
                color: MyColors.onSurface,
              ),
              clipBehavior: Clip.antiAlias,
              alignment: Alignment.bottomRight,
              child: MyIcons().menuIcon(() {}),
            ),
          ),
        ),
      ],
    );
  }
}
