import 'package:medicine_app/utils/exports.dart';

class ReminderPage extends StatefulWidget {
  const ReminderPage({Key? key, required this.day}) : super(key: key);
  final String day;

  @override
  State<ReminderPage> createState() => _ReminderPageState();
}

class _ReminderPageState extends State<ReminderPage> {
  bool _switchValue = true;

  late final List items;
  List<bool> selected = List.generate(7, (index) => false);

  updateIndex(index) {
    setState(() {
      if (selected[index] == true) {
        selected[index] = false;
      } else {
        selected[index] = true;
      }
    });
  }

  bool isSelected(index) {
    if (selected[index] == true) {
      return true;
    } else {
      return false;
    }
  }

  @override
  void initState() {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    populateItems();
    selected[1] = true;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.onSurface,
      extendBodyBehindAppBar: true,
      appBar: TransParentAppBar(leadingTitle: Strings.labels['back']!),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              width: Constants.deviceWidth,
              height: 300.0,
              child: Image.asset(
                Strings.images['sc3_header']!,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              height: 35.0,
            ),
            Padding(
              padding: Constants.paddingSym,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      DropDownTile(
                        title: Strings.dropDownLabels[0],
                        subTitle: "1,25",
                        items: [
                          ...List.generate(
                              500, (index) => (index + 1).toString())
                        ],
                        child: SvgPicture.asset(
                          Strings.images['injection']!,
                          height: 24.0,
                          width: 24.0,
                          colorFilter: const ColorFilter.mode(
                              MyColors.onPrimary, BlendMode.srcIn),
                        ),
                      ),
                      const SizedBox(
                        width: 15.0,
                      ),
                      DropDownTile(
                        title: Strings.dropDownLabels[1],
                        subTitle: 'Tablet',
                        items: const [
                          "Tablet",
                          "mg",
                        ],
                        child: SvgPicture.asset(
                          Strings.images['eye']!,
                          height: 24.0,
                          width: 24.0,
                          colorFilter: const ColorFilter.mode(
                              MyColors.onPrimary, BlendMode.srcIn),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  DropDownTile(
                    title: Strings.dropDownLabels[2],
                    subTitle: 'Before eat',
                    items: const [
                      "Before breakfast",
                      "After breakfast",
                      "Before lunch",
                      "After lunch",
                      "Before dinner",
                      "After dinner",
                    ],
                    child: SvgPicture.asset(
                      Strings.images['hand']!,
                      height: 24.0,
                      width: 24.0,
                      colorFilter: const ColorFilter.mode(
                          MyColors.onPrimary, BlendMode.srcIn),
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      DropDownTile(
                        title: Strings.dropDownLabels[3],
                        subTitle:
                            "${DateFormat("MMM").format(Functions.dateTime)}, ${widget.day}",
                        items: items,
                        child: SvgPicture.asset(
                          Strings.images['calender']!,
                          height: 24.0,
                          width: 24.0,
                          colorFilter: const ColorFilter.mode(
                              MyColors.onPrimary, BlendMode.srcIn),
                        ),
                      ),
                      const SizedBox(
                        width: 15.0,
                      ),
                      DropDownTile(
                        title: Strings.dropDownLabels[4],
                        subTitle:
                            "${DateFormat("MMM").format(Functions.dateTime)}, ${widget.day}",
                        items: items,
                        child: SvgPicture.asset(
                          Strings.images['calender']!,
                          height: 24.0,
                          width: 24.0,
                          colorFilter: const ColorFilter.mode(
                              MyColors.onPrimary, BlendMode.srcIn),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 30.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      HeaderText(title: Strings.labels['sc3_header']!),
                      Transform.scale(
                        scale: 1.0,
                        child: SwitchWithImage(
                          svg: Strings.images['notification']!,
                          isActive: _switchValue,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  SizedBox(
                    height: 80.0,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: Functions.weekDays.length,
                        shrinkWrap: true,
                        itemBuilder: (context, index) => CheckBoxTile(
                              index: index,
                              isSelected: isSelected,
                              updateIndex: updateIndex,
                              title: Functions.weekDays[index],
                            )),
                  ),
                  const SizedBox(
                    height: 25.0,
                  ),
                  ElevatedButtonFullWidth(
                    title: Strings.labels['save']!,
                    onPressed: () {
                      Functions.showSnackBar(
                        context: context,
                        title: Strings.labels['reminder']!,
                      );
                      Navigator.pop(context);
                    },
                  ),
                  const SizedBox(
                    height: 30.0,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  populateItems() {
    items = List.generate(
      32,
      (index) =>
          DateFormat('MMM, d').format(Functions.dateRange[index]).toString(),
    );
  }
}
