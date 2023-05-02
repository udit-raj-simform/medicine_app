import 'package:medicine_app/pages/reminder.dart';
import 'package:medicine_app/utils/exports.dart';

class MedicinePage extends StatefulWidget {
  const MedicinePage({Key? key}) : super(key: key);

  @override
  State<MedicinePage> createState() => _MedicinePageState();
}

class _MedicinePageState extends State<MedicinePage> {
  int _selectedIndex = 5;

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.darkBackground,
      appBar: AppBar(
        backgroundColor: MyColors.darkBackground,
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
                  color: MyColors.surface,
                  size: 14.0,
                ),
              ),
              SizedBox(
                width: 34.0,
                child: Text(
                  "Back",
                  style: TextStyle(color: MyColors.surface),
                ),
              ),
            ],
          ),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            width: Constants.deviceWidth,
            height: 200.0,
            child: SvgPicture.asset(
              "assets/images/medicine.svg",
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
              children: const [
                Text(
                  "Reminders",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25.0,
                    color: MyColors.onSurface,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          SizedBox(
            height: 80.0,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              shrinkWrap: true,
              itemBuilder: (context, index) => Focus(
                autofocus: isSelected(index),
                child: GestureDetector(
                  onTap: () {
                    updateIndex(index);
                  },
                  onDoubleTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ReminderPage(),
                      ),
                    );
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: isSelected(index)
                            ? MyColors.onPrimary
                            : MyColors.darkPrimary,
                        borderRadius: BorderRadius.circular(20.0)),
                    width: 60.0,
                    height: 70.0,
                    padding: const EdgeInsets.all(10.0),
                    margin: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        Text(
                          "Wed",
                          style: TextStyle(color: MyColors.onSurface),
                        ),
                        Text(
                          "18",
                          style: TextStyle(color: MyColors.onSurface),
                        ),
                      ],
                    ),
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
              children: const [
                Text(
                  "Today Activities",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25.0,
                    color: MyColors.onSurface,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: 10,
              shrinkWrap: true,
              // padding: EdgeInsets.all(value),
              itemBuilder: (context, index) => Container(
                decoration: BoxDecoration(
                  color: (index % 2 == 0)
                      ? MyColors.cardColor1
                      : MyColors.cardColor2,
                  borderRadius: BorderRadius.circular(20.0),
                ),
                margin: const EdgeInsets.symmetric(
                    vertical: 10.0, horizontal: 25.0),
                width: Constants.deviceWidth,
                height: 110.0,
                child: Row(
                  children: [
                    const SizedBox(
                      width: 20.0,
                    ),
                    SizedBox(
                      height: 70.0,
                      width: 70.0,
                      child: Image.asset(Strings
                          .images[(index % 2 == 0) ? 'pill1' : 'pill2']!),
                    ),
                    const SizedBox(
                      width: 18.0,
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            Strings.medicines[index],
                            style: TextStyle(
                                color: (index % 2 == 0)
                                    ? MyColors.onCardColor1
                                    : MyColors.onCardColor2,
                                fontWeight: FontWeight.bold),
                          ),
                          const Text(
                            "After lunch",
                            style: TextStyle(
                                color: MyColors.darkBackground, fontSize: 12.0),
                          )
                        ],
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: MyColors.onSurface,
                          borderRadius: BorderRadius.circular(20.0)),
                      width: 60.0,
                      height: 70.0,
                      padding: const EdgeInsets.all(10.0),
                      margin: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            (index % 2 == 0) ? "10" : "2",
                            style: const TextStyle(
                              color: MyColors.darkBackground,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            (index % 2 == 0) ? "mg" : "Tablet",
                            style: const TextStyle(
                                color: MyColors.darkBackground, fontSize: 12.0),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 10.0,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
