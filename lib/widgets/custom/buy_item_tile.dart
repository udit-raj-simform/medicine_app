import 'package:medicine_app/utils/exports.dart';

class BuyItemTile extends StatelessWidget {
  const BuyItemTile({Key? key, required this.index}) : super(key: key);
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: MyColors.primary,
        borderRadius: BorderRadius.circular(20.0),
      ),
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
              color: (index % 2 == 0)
                  ? MyColors.cardColor1
                  : (index % 3 == 0)
                      ? MyColors.cardColor2
                      : (index % 5 == 0)
                          ? MyColors.onCardColor1
                          : MyColors.onCardColor2,
              image: DecorationImage(
                image: AssetImage(Strings.pillImages[index]!),
                fit: BoxFit.fitHeight,
              ),
              borderRadius: BorderRadius.circular(10.0),
            ),
          ),
          Text(Strings.medicines[index]),
          SizedBox(
            height: 40.0,
            width: 120.0,
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all<Color>(MyColors.onSurface),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                ),
              ),
              onPressed: () {},
              child: const Text(
                "Buy",
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: MyColors.onPrimary),
              ),
            ),
          )
        ],
      ),
    );
  }
}
