import 'package:medicine_app/utils/exports.dart';

class MedicinePage extends StatefulWidget {
  const MedicinePage({Key? key}) : super(key: key);

  @override
  State<MedicinePage> createState() => _MedicinePageState();
}

class _MedicinePageState extends State<MedicinePage> {
  int _selectedIndex = 0;
  Map<DateTime, String> reminderDays = <DateTime, String>{};

  updateIndex(index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  bool isSelected(index) {
    if (index == _selectedIndex) {
      return true;
    } else {
      return false;
    }
  }

  addDatesToMap() {}

  @override
  void initState() {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    reminderDays.addAll(Functions.reminderDaysList());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.darkBackground,
      appBar: TransParentAppBar(
        leadingTitle: Strings.labels['back']!,
        color: MyColors.onSurface,
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              children: [
                SizedBox(
                  width: Constants.deviceWidth,
                  height: 200.0,
                  child: SvgPicture.asset(
                    Strings.images['sc2_header']!,
                    height: 24.0,
                    width: 24.0,
                  ),
                ),
                const SizedBox(
                  height: 35.0,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    children: [
                      HeaderText(
                        title: Strings.labels['sc2_header_1']!,
                        color: MyColors.onSurface,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                SizedBox(
                  height: 90.0,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: reminderDays.length,
                    shrinkWrap: true,
                    itemBuilder: (context, index) => Focus(
                      autofocus: isSelected(index),
                      child: GestureDetector(
                        onTap: () => updateIndex(index),
                        onDoubleTap: () => addReminder(index),
                        child: DateTile(
                          index: index,
                          isSelected: isSelected,
                          reminderDays: reminderDays,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 35.0,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    children: [
                      HeaderText(
                        title: Strings.labels['sc2_header_2']!,
                        color: MyColors.onSurface,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                ListView.builder(
                  scrollDirection: Axis.vertical,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 10,
                  shrinkWrap: true,
                  itemBuilder: (context, index) => ActivityTile(index: index),
                ),
              ],
            ),
            Positioned(
              top: 90.0,
              right: 0.0,
              child: Transform.scale(
                scale: 0.7,
                child: Image.asset(
                  Strings.plantsImages[0]!,
                  height: 150.0,
                  width: 80.0,
                ),
              ),
            ),
            Positioned(
              top: 120.0,
              right: -95.0,
              child: Transform(
                transform: Matrix4.rotationY(280.0),
                child: Image.asset(
                  Strings.plantsImages[1]!,
                  height: 150.0,
                  width: 80.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  addReminder(int index) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ReminderPage(
          day: reminderDays.keys.elementAt(index).day.toString(),
        ),
      ),
    );
  }
}
