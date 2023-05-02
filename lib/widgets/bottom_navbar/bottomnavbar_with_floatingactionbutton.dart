import 'package:medicine_app/utils/exports.dart';

class BottomNavWithFAB extends StatefulWidget {
  const BottomNavWithFAB({super.key});

  @override
  State<BottomNavWithFAB> createState() => _BottomNavWithFABState();
}

class _BottomNavWithFABState extends State<BottomNavWithFAB> {
  int _bottomNavIndex = 0;

  updateBottomNavIndex(index) {
    setState(() {
      _bottomNavIndex = index;
    });
  }

  bool isSelected(index) {
    if (index == _bottomNavIndex) {
      return true;
    } else {
      return false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: kBottomNavigationBarHeight + (kBottomNavigationBarHeight * 0.35),
      color: MyColors.primary,
      child: Row(
        children: [
          const SizedBox(
            width: 120,
          ),
          ListView.builder(
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            itemCount: Strings.myIcons.length,
            itemBuilder: (context, index) => GestureDetector(
              onTap: () => updateBottomNavIndex(index),
              child: Container(
                decoration: BoxDecoration(
                  border: Border(
                    top: isSelected(index)
                        ? const BorderSide(
                            color: MyColors.onPrimary, width: 2.0)
                        : BorderSide.none,
                    right: BorderSide.none,
                    left: BorderSide.none,
                    bottom: BorderSide.none,
                  ),
                ),
                margin: const EdgeInsets.symmetric(horizontal: 20.0),
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: GestureDetector(
                  child: SvgPicture.asset(
                    "assets/icons/${Strings.myIcons[index]}",
                    height: index == Strings.myIcons.length - 1 ? 30.0 : 24.0,
                    width: index == Strings.myIcons.length - 1 ? 30.0 : 24.0,
                    colorFilter: ColorFilter.mode(
                        isSelected(index)
                            ? MyColors.onPrimary
                            : MyColors.textPrimary,
                        BlendMode.srcIn),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
