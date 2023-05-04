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
      drawer: const Drawer(),
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
            Strings.images['pill']!,
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
                  Builder(
                    builder: (BuildContext context) => HalfMoonAppBar(
                      onMenuTap: () => Scaffold.of(context).openDrawer(),
                      onProfileTap: () {},
                    ),
                  ),
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
                  const NotificationTile(),
                  const SizedBox(
                    height: 35.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: Row(
                      children: [
                        HeaderText(title: Strings.labels['sc1_header']!),
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
                        itemCount: 15,
                        shrinkWrap: true,
                        itemBuilder: (context, index) =>
                            BuyItemTile(index: index),
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
