import 'package:medicine_app/utils/exports.dart';

class SwitchWithImage extends StatefulWidget {
  const SwitchWithImage(
      {Key? key,
      this.height,
      this.width,
      this.activeColor,
      this.disabledColor,
      required this.svg,
      required this.isActive})
      : super(key: key);
  final double? height;
  final double? width;
  final Color? activeColor;
  final Color? disabledColor;
  final String svg;
  final bool isActive;

  @override
  State<SwitchWithImage> createState() => _SwitchWithImageState();
}

class _SwitchWithImageState extends State<SwitchWithImage> {
  late bool _state;

  @override
  void initState() {
    _state = widget.isActive;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => setState(() => _state = !_state),
      child: AnimatedContainer(
        height: 50.0,
        width: 80.0,
        duration: const Duration(milliseconds: 500),
        decoration: BoxDecoration(
          color: _state ? MyColors.switchActiveColor : MyColors.textSub,
          borderRadius: BorderRadius.circular(40.0),
        ),
        child: Row(
          mainAxisAlignment:
              _state ? MainAxisAlignment.end : MainAxisAlignment.start,
          children: [
            const SizedBox(
              width: 5.0,
            ),
            ClipOval(
              child: Container(
                height: 40.0,
                width: 40.0,
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SvgPicture.asset(
                    widget.svg,
                    height: 40.0,
                    width: 40.0,
                    colorFilter: ColorFilter.mode(
                        _state ? MyColors.switchActiveColor : MyColors.textSub,
                        BlendMode.srcIn),
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 5.0,
            ),
          ],
        ),
      ),
    );
  }
}
