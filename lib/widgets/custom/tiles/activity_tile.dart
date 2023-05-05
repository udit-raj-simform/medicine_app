import 'package:medicine_app/utils/exports.dart';

class ActivityTile extends StatelessWidget {
  const ActivityTile({Key? key, required this.index}) : super(key: key);
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
      width: Constants.deviceWidth,
      height: 110.0,
      child: Card(
        color: (index % 2 == 0) ? MyColors.cardColor1 : MyColors.cardColor2,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(21.0),
        ),
        elevation: 15.0,
        child: Row(
          children: [
            const SizedBox(
              width: 12.0,
            ),
            SizedBox(
              height: 70.0,
              width: 70.0,
              child: Image.asset(Strings.pillImages[index]),
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
                        // fontWeight: FontWeight.bold,
                        fontSize: 18.0),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    Strings.labels['a_subtitle']!,
                    style: const TextStyle(
                      color: MyColors.darkBackground,
                      fontSize: 14.0,
                    ),
                  )
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: MyColors.onSurface,
                borderRadius: BorderRadius.circular(16.0),
                boxShadow: <BoxShadow>[
                  BoxShadow(
                    color: Colors.black26.withOpacity(0.1),
                    blurRadius: 5.0,
                    offset: const Offset(0.0, 4.0),
                  ),
                ],
              ),
              clipBehavior: Clip.antiAliasWithSaveLayer,
              width: 70.0,
              height: 78.0,
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
                        color: MyColors.darkBackground, fontSize: 14.0),
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
    );
  }
}
