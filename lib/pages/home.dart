import 'package:medicine_app/utils/exports.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.startDocked,
      floatingActionButton: Container(
        height: 90.0,
        width: 90.0,
        padding: const EdgeInsets.only(left: 20, top: 20.0),
        child: FloatingActionButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const MedicinePage()));
          },
          shape: const CircleBorder(),
          backgroundColor: MyColors.darkBackground,
          child: SvgPicture.asset(
            "assets/icons/pill-50.svg",
            height: 24.0,
            width: 24.0,
            colorFilter:
                const ColorFilter.mode(MyColors.textSub, BlendMode.srcIn),
          ),
        ),
      ),
      bottomNavigationBar: const BottomNavWithFAB(),
      body: SingleChildScrollView(
        child: Center(
          child: Stack(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const HalfMoonAppBar(),
                  const Padding(
                    padding: Constants.paddingSym,
                    child: Text(
                      Strings.homeHeader,
                      style: Constants.headerTextStyle,
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(
                    height: 40.0,
                  ),
                  Padding(
                    padding: Constants.paddingSym,
                    child: Container(
                      height: 180,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0)),
                      clipBehavior: Clip.antiAlias,
                      child: Column(
                        children: [
                          Expanded(
                            child: Container(
                              color: MyColors.primary,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const SizedBox(
                                    width: 20.0,
                                  ),
                                  Expanded(
                                      child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: const [
                                      Text(
                                        "It's been over a year",
                                        style: TextStyle(
                                          color: MyColors.darkBackground,
                                        ),
                                      ),
                                      Text(
                                        "Visit Schedule",
                                        style: TextStyle(
                                            color: Colors.black45,
                                            fontSize: 12.0),
                                      )
                                    ],
                                  )),
                                  const VerticalDivider(
                                    indent: 30.0,
                                    endIndent: 30.0,
                                    width: 40.0,
                                  ),
                                  SvgPicture.asset(
                                    "assets/icons/notification.svg",
                                    height: 24.0,
                                    width: 24.0,
                                    colorFilter: const ColorFilter.mode(
                                        MyColors.onPrimary, BlendMode.srcIn),
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      color: MyColors.darkBackground,
                                      borderRadius: BorderRadius.circular(20.0),
                                    ),
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 16.0, vertical: 5.0),
                                    margin: const EdgeInsets.only(right: 20.0),
                                    child: const Text(
                                      "2",
                                      style:
                                          TextStyle(color: MyColors.onSurface),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              color: MyColors.onPrimary,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const SizedBox(
                                    width: 20.0,
                                  ),
                                  Icon(
                                    Icons.telegram_sharp,
                                    color: Colors.redAccent.withOpacity(0.7),
                                    size: 40.0,
                                  ),
                                  const SizedBox(
                                    width: 18.0,
                                  ),
                                  Expanded(
                                      child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: const [
                                      Text(
                                        "Blood Test",
                                        style: TextStyle(
                                          color: MyColors.onSurface,
                                        ),
                                      ),
                                      Text(
                                        "Schedule the visit",
                                        style: TextStyle(
                                            color: MyColors.onSurface,
                                            fontSize: 12.0),
                                      )
                                    ],
                                  )),
                                  const VerticalDivider(
                                    indent: 30.0,
                                    endIndent: 30.0,
                                    width: 45.0,
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: const [
                                      Text(
                                        "2 March",
                                        style: TextStyle(
                                          color: MyColors.onSurface,
                                        ),
                                      ),
                                      Text(
                                        "08:00 AM",
                                        style: TextStyle(
                                            color: MyColors.onSurface,
                                            fontSize: 12.0),
                                      )
                                    ],
                                  ),
                                  const SizedBox(
                                    width: 22.0,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
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
                          "Buy medicines",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 25.0),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: SizedBox(
                      height: 170.0,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 10,
                        shrinkWrap: true,
                        // padding: EdgeInsets.all(value),
                        itemBuilder: (context, index) => Container(
                          decoration: BoxDecoration(
                              color: MyColors.primary,
                              borderRadius: BorderRadius.circular(20.0)),
                          width: 140.0,
                          height: 100.0,
                          padding: const EdgeInsets.all(10.0),
                          margin: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                    image: const DecorationImage(
                                      image: AssetImage(
                                          "assets/images/screen_3_header.png"),
                                      fit: BoxFit.cover,
                                    ),
                                    borderRadius: BorderRadius.circular(10.0)),
                              ),
                              const Text("Paracetamol"),
                              Container(
                                height: 40.0,
                                width: 120.0,
                                decoration: BoxDecoration(
                                  color: MyColors.onSurface,
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                alignment: Alignment.center,
                                child: const Text(
                                  "Buy",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: MyColors.onPrimary),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 40.0,
                  ),
                ],
              ),
              Positioned(
                top: 160.0,
                right: -20.0,
                child: Transform(
                  transform: Matrix4.rotationZ(270.0),
                  child: Image.asset(
                    Strings.images['plant']!,
                    height: 150.0,
                    width: 80.0,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
