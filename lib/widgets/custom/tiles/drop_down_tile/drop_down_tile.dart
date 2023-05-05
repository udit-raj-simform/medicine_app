import 'package:medicine_app/utils/exports.dart';

class DropDownTile extends StatefulWidget {
  const DropDownTile(
      {Key? key,
      required this.title,
      required this.subTitle,
      required this.child,
      required this.items})
      : super(key: key);
  final String title;
  final String subTitle;
  final Widget child;
  final List? items;

  @override
  State<DropDownTile> createState() => _DropDownTileState();
}

class _DropDownTileState extends State<DropDownTile> {
  String? selectedValue;

  @override
  void initState() {
    // selectedValue = widget.items![0];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Flexible(
      flex: 1,
      child: Container(
        decoration: BoxDecoration(
          color: MyColors.onSurface,
          borderRadius: BorderRadius.circular(22.0),
          border: Border.all(
            color: MyColors.textSub.withOpacity(0.5),
          ),
        ),
        height: 70.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
                padding: const EdgeInsets.only(left: 15, right: 5),
                child: widget.child),
            VerticalDivider(
              color: MyColors.textSub.withOpacity(0.5),
              thickness: 1.0,
              indent: 15.0,
              endIndent: 15.0,
            ),
            const SizedBox(
              width: 10.0,
            ),
            Expanded(
              child: DropdownButtonFormField(
                isExpanded: true,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  labelText: widget.title,
                  labelStyle: const TextStyle(
                    color: Colors.black45,
                    fontSize: 18.0,
                  ),
                ),
                icon: const Icon(
                  Icons.keyboard_arrow_down_outlined,
                  color: MyColors.textSub,
                ),
                hint: Text(
                  widget.subTitle,
                  style: const TextStyle(color: MyColors.textPrimary),
                ),
                value: selectedValue,
                items: widget.items
                    ?.map(
                      (e) => DropdownMenuItem(
                        value: e,
                        child: Text(
                          e.toString(),
                          style: const TextStyle(fontSize: 15.0),
                        ),
                      ),
                    )
                    .toList(),
                onChanged: (value) {
                  setState(() {
                    selectedValue = value.toString();
                  });
                },
              ),
            ),
            const SizedBox(
              width: 10,
            ),
          ],
        ),
      ),
    );
  }
}
