import 'package:medicine_app/utils/exports.dart';

class BuyItemTile extends StatelessWidget {
  const BuyItemTile({Key? key, required this.index}) : super(key: key);
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150.0,
      height: 110.0,
      margin: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Card(
        color: MyColors.primary,
        shadowColor: MyColors.primary,
        elevation: 1.0,
        child: Container(
          // decoration: BoxDecoration(
          //   color: MyColors.primary,
          //   borderRadius: BorderRadius.circular(20.0),
          // ),
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                height: 65,
                width: 65,
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Container(
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
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    clipBehavior: Clip.antiAlias,
                  ),
                ),
              ),
              Text(Strings.medicines[index]),
              CustomElevatedButton(
                title: Strings.labels['buy']!,
                shadowColor: MyColors.cardColor1,
                onPressed: () => Functions.showSnackBar(
                  context: context,
                  title: Strings.labels['cart']!,
                  actionLabel: Strings.labels['goto']!,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
