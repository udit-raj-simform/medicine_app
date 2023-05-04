import 'package:medicine_app/utils/exports.dart';

class NotificationTile extends StatefulWidget {
  const NotificationTile({Key? key}) : super(key: key);

  @override
  State<NotificationTile> createState() => _NotificationTileState();
}

class _NotificationTileState extends State<NotificationTile> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Constants.paddingSym,
      child: Container(
        height: 180,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            boxShadow: [
              // BoxShadow(
              //   color: MyColors.textSub.withOpacity(0.1),
              //   blurRadius: 15.0,
              //   spreadRadius: 4.0,
              //   offset: const Offset(0.0, 0.75),
              // ),
              BoxShadow(
                color: MyColors.onPrimary.withOpacity(0.2),
                blurRadius: 15.0,
                spreadRadius: 1.0,
                offset: const Offset(0.0, 15.0),
              ),
            ]),
        clipBehavior: Clip.antiAlias,
        child: Material(
          elevation: 25.0,
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
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              Strings.labels['n_tile_title_1']!,
                              style: const TextStyle(
                                color: MyColors.darkBackground,
                              ),
                            ),
                            Text(
                              Strings.labels['n_tile_subtitle_1']!,
                              style: const TextStyle(
                                  color: Colors.black45, fontSize: 12.0),
                            )
                          ],
                        ),
                      ),
                      const VerticalDivider(
                        indent: 30.0,
                        endIndent: 30.0,
                        width: 40.0,
                      ),
                      SvgPicture.asset(
                        Strings.images['notification']!,
                        height: 24.0,
                        width: 24.0,
                        colorFilter: const ColorFilter.mode(
                            MyColors.onPrimary, BlendMode.srcIn),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            int temp = Strings.variables['n_count']!;
                            Strings.variables['n_count'] = temp + 1;
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: MyColors.darkBackground,
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 16.0, vertical: 5.0),
                          margin: const EdgeInsets.only(right: 20.0),
                          child: Text(
                            Strings.variables['n_count']!.toString(),
                            style: const TextStyle(color: MyColors.onSurface),
                          ),
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
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            Strings.labels['n_tile_title_2']!,
                            style: const TextStyle(
                              color: MyColors.onSurface,
                            ),
                          ),
                          Text(
                            Strings.labels['n_tile_subtitle_2']!,
                            style: const TextStyle(
                                color: MyColors.onSurface, fontSize: 12.0),
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
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            Strings.labels['n_date']!,
                            style: const TextStyle(
                              color: MyColors.onSurface,
                            ),
                          ),
                          Text(
                            Strings.labels['n_time']!,
                            style: const TextStyle(
                                color: MyColors.onSurface, fontSize: 12.0),
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
    );
  }
}
