import 'package:intl/intl.dart';
import 'package:medicine_app/utils/exports.dart';
import 'package:medicine_app/utils/functions.dart';
import 'package:medicine_app/widgets/custom/drop_down_tile/drop_down_tile.dart';

class ReminderPage extends StatefulWidget {
  const ReminderPage({Key? key, required this.day}) : super(key: key);
  final String day;

  @override
  State<ReminderPage> createState() => _ReminderPageState();
}

class _ReminderPageState extends State<ReminderPage> {
  bool _switchValue = true;

  // int _selectedIndex = 0;
  List<String> weekDays = <String>[
    "Mon",
    "Tue",
    "Wed",
    "Thu",
    "Fri",
    "Sat",
    "Sun"
  ];
  late final List<PopupMenuItem> items;
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
    items = List<PopupMenuItem>.generate(
      32,
      (index) => PopupMenuItem(
        child: Text(
          DateFormat('E, d MMM').format(Functions.dateRange[index]).toString(),
        ),
      ),
    );
    selected[1] = true;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.onSurface,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        shadowColor: Colors.transparent,
        surfaceTintColor: Colors.transparent,
        leadingWidth: 100.0,
        leading: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              SizedBox(
                width: 25.0,
                child: Icon(
                  Icons.arrow_back_ios,
                  color: MyColors.darkBackground,
                  size: 14.0,
                ),
              ),
              SizedBox(
                width: 34.0,
                child: Text(
                  "Back",
                  style: TextStyle(color: MyColors.darkBackground),
                ),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              width: Constants.deviceWidth,
              height: 300.0,
              child: Image.asset(
                "assets/images/screen_3_header.png",
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
                        title: "Dose",
                        subTitle: "1,25",
                        imageData: Strings.images['injection']!,
                        items: const <PopupMenuItem>[
                          PopupMenuItem(child: Text("1,25")),
                          PopupMenuItem(child: Text("1,25")),
                          PopupMenuItem(child: Text("1,25")),
                          PopupMenuItem(child: Text("1,25")),
                        ],
                      ),
                      const SizedBox(
                        width: 15.0,
                      ),
                      DropDownTile(
                        title: 'View',
                        subTitle: 'Tablet',
                        imageData: Strings.images['eye']!,
                        items: const <PopupMenuItem>[
                          PopupMenuItem(child: Text("Tablet")),
                          PopupMenuItem(child: Text("mg")),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  DropDownTile(
                    title: 'How to use',
                    subTitle: 'Before eat',
                    imageData: Strings.images['hand']!,
                    items: const <PopupMenuItem>[
                      PopupMenuItem(child: Text("Before breakfast")),
                      PopupMenuItem(child: Text("After breakfast")),
                      PopupMenuItem(child: Text("Before lunch")),
                      PopupMenuItem(child: Text("After lunch")),
                      PopupMenuItem(child: Text("Before dinner")),
                      PopupMenuItem(child: Text("After dinner")),
                    ],
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      DropDownTile(
                        title: "Begin",
                        subTitle:
                            "${DateFormat("MMM").format(Functions.dateTime)}, ${widget.day}",
                        imageData: Strings.images['calender']!,
                        items: items,
                      ),
                      const SizedBox(
                        width: 15.0,
                      ),
                      DropDownTile(
                        title: 'Finish',
                        subTitle: 'Jan, 8',
                        imageData: Strings.images['calender']!,
                        items: items,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 30.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Reminders",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25.0,
                          color: MyColors.textPrimary,
                        ),
                      ),
                      Transform.scale(
                        scale: 1.4,
                        child: Switch(
                            activeColor: Colors.white,
                            activeTrackColor: Colors.lightGreen,
                            thumbIcon: MaterialStateProperty.all(Icon(
                              Icons.notifications,
                              color: _switchValue
                                  ? Colors.lightGreen
                                  : MyColors.onPrimary,
                            )),
                            inactiveThumbColor: MyColors.onCardColor1,
                            inactiveTrackColor: MyColors.onPrimary,
                            value: _switchValue,
                            onChanged: (bool value) {
                              setState(() {
                                _switchValue = value;
                              });
                            }),
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
                      itemCount: weekDays.length,
                      shrinkWrap: true,
                      itemBuilder: (context, index) => Focus(
                        autofocus: isSelected(index),
                        child: GestureDetector(
                          onTap: () => updateIndex(index),
                          child: Container(
                            decoration: BoxDecoration(
                                color: isSelected(index)
                                    ? MyColors.onSurface
                                    : MyColors.primary,
                                borderRadius: BorderRadius.circular(20.0),
                                border: Border.all(
                                  color: isSelected(index)
                                      ? MyColors.onPrimary
                                      : MyColors.primary,
                                )),
                            width: 70.0,
                            height: 80.0,
                            padding: const EdgeInsets.all(10.0),
                            margin:
                                const EdgeInsets.symmetric(horizontal: 10.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  weekDays[index],
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
                                    color: isSelected(index)
                                        ? MyColors.onSurface
                                        : MyColors.primary,
                                    size: 18.0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 25.0,
                  ),
                  SizedBox(
                    width: Constants.deviceWidth,
                    height: 50.0,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                          MyColors.onPrimary,
                        ),
                        overlayColor: MaterialStateProperty.all<Color>(
                          MyColors.onCardColor2,
                        ),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                        ),
                      ),
                      child: const Text(
                        "Save Changes",
                        style: TextStyle(color: MyColors.onSurface),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
