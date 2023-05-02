import 'package:medicine_app/utils/exports.dart';

class ReminderPage extends StatelessWidget {
  const ReminderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.onSurface,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
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
      body: Column(
        children: [
          SizedBox(
            width: Constants.deviceWidth,
            height: 300.0,
            child: Image.asset(
              "assets/images/screen_3_header_clr.jpg",
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            height: 35.0,
          ),
        ],
      ),
    );
  }
}
