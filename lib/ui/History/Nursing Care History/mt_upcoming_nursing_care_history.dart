import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:maan_doctor_appoinment/ui/History/Nursing%20Care%20History/mt_past_nursing_history.dart';
import 'package:nb_utils/nb_utils.dart';

import '../../../../const/const.dart';
import '../../Styles/style.dart';
import '../Diagnostic History/mt_diag_Offline_Appointments_Details.dart';

class UpcomingNursingCareHistoryScreen extends StatefulWidget {
  const UpcomingNursingCareHistoryScreen({Key? key}) : super(key: key);

  @override
  State<UpcomingNursingCareHistoryScreen> createState() =>
      _UpcomingNursingCareHistoryScreenState();
}

class _UpcomingNursingCareHistoryScreenState
    extends State<UpcomingNursingCareHistoryScreen> {
  List conditions = ["In Progress", 'Accepted', "Cancel"];
  List colors = [kWatchColor, kStarColor, kBadgeColor];
  List packsColor = [kHeartBgColor, kLungsBgColor, kDaigLungsBGColor];
  List texts = ["packs 1", "packs 3", "packs4"];
  List names = ["Name: Bapak Maulana", "Name: Yusril M", "Name:Tarik Bin Aziz"];
  List dayPacks = ["Day: 1 Day Pack", "Day: 3 Day Pack", "Day: 4 Day Pack"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: BackButton(
          color: kTitleColor,
        ),
        title: Text(
          "Riwayat Homecare",
          style: ktitleTextStyle,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Expanded(
                    child: AppButton(
                      elevation: 0,
                      enableScaleAnimation: false,
                      onTap: () {
                        const UpcomingNursingCareHistoryScreen()
                            .launch(context);
                      },
                      shapeBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(6),
                          borderSide: BorderSide.none),
                      color: kMainColor,
                      text: "Upcoming",
                      textStyle: TextStyle(
                          color: kElevatedButtonTextColor,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: AppButton(
                      elevation: 0,
                      enableScaleAnimation: false,
                      onTap: () {
                        const PastNursingCareHistoryScreen().launch(context);
                      },
                      shapeBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(6),
                          borderSide: BorderSide(color: kMainColor)),
                      text: "Past",
                      textStyle: TextStyle(
                          color: kMainColor, fontWeight: FontWeight.w700),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              decoration: BoxDecoration(
                color: kbigContainerColor,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Today - 12 July 2022",
                      style: TextStyle(
                          fontWeight: FontWeight.w600, color: kSubTitleColor),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: colors.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                                padding: const EdgeInsets.all(6.0),
                                child: Card(
                                  elevation: 0,
                                  margin: EdgeInsets.zero,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      side: BorderSide(
                                          color: kSubTitleColor
                                              .withOpacity(0.10))),
                                  child: Padding(
                                      padding: const EdgeInsets.all(12.0),
                                      child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Stack(
                                              alignment:
                                                  AlignmentDirectional.center,
                                              children: [
                                                Container(
                                                  width: 64,
                                                  height: 64,
                                                  decoration: BoxDecoration(
                                                    color: packsColor[index],
                                                  ),
                                                  child: Align(
                                                    alignment:
                                                        Alignment.topLeft,
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              bottom: 10.0),
                                                      child: Image.asset(
                                                        "assets/images/Ellipse 792.png",
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 40,
                                                  child: Text(
                                                    texts[index],
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w900,
                                                        color: kLikeWhiteColor),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            const SizedBox(
                                              width: 10,
                                            ),
                                            Expanded(
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    names[index],
                                                    style: const TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                  const SizedBox(
                                                    height: 4,
                                                  ),
                                                  Row(
                                                    children: [
                                                      Icon(
                                                        FeatherIcons.mapPin,
                                                        color: kMainColor,
                                                        size: 18,
                                                      ),
                                                      Flexible(
                                                        child: Text(
                                                            "RSUD Cibinong South Dakoterjrkel",
                                                            style: TextStyle(
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                color:
                                                                    kSubTitleColor)),
                                                      ),
                                                    ],
                                                  ),
                                                  const SizedBox(
                                                    height: 4,
                                                  ),
                                                  Text(
                                                    "Date: 26 Jun 2022 - 29 Jun 2022",
                                                    style: ksubTitleTextStyle,
                                                  ),
                                                  const SizedBox(
                                                    height: 4,
                                                  ),
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Text(
                                                        dayPacks[index],
                                                        style:
                                                            ksubTitleTextStyle,
                                                      ),
                                                      Text(
                                                        conditions[index],
                                                        style: TextStyle(
                                                            color:
                                                                colors[index]),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ])),
                                ))
                            .onTap(() =>
                                const DiagnosticsOfflineAppoinmentScreen()
                                    .launch(context));
                      },
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    Text(
                      "Yesterday - 11 July 2022",
                      style: TextStyle(
                          fontWeight: FontWeight.w600, color: kSubTitleColor),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: colors.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: Card(
                            elevation: 0,
                            margin: EdgeInsets.zero,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                                side: BorderSide(
                                    color: kSubTitleColor.withOpacity(0.10))),
                            child: Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Stack(
                                    alignment: AlignmentDirectional.center,
                                    children: [
                                      Container(
                                        width: 64,
                                        height: 64,
                                        decoration: BoxDecoration(
                                            color: packsColor[index]),
                                        child: Align(
                                            alignment: Alignment.topLeft,
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  bottom: 10.0),
                                              child: Image.asset(
                                                "assets/images/Ellipse 792.png",
                                              ),
                                            )),
                                      ),
                                      SizedBox(
                                        width: 40,
                                        child: Text(
                                          texts[index],
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              fontWeight: FontWeight.w900,
                                              color: kLikeWhiteColor),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          names[index],
                                          style: const TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                        const SizedBox(
                                          height: 4,
                                        ),
                                        Row(
                                          children: [
                                            Icon(
                                              FeatherIcons.mapPin,
                                              color: kMainColor,
                                              size: 18,
                                            ),
                                            Flexible(
                                              child: Text(
                                                  "RSUD Cibinong South Dakoterjrkel",
                                                  style: TextStyle(
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      color: kSubTitleColor)),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 4,
                                        ),
                                        Text(
                                          "Date: 26 Jun 2022 - 29 Jun 2022",
                                          style: ksubTitleTextStyle,
                                        ),
                                        const SizedBox(
                                          height: 4,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              dayPacks[index],
                                              style: ksubTitleTextStyle,
                                            ),
                                            Text(
                                              conditions[index],
                                              style: TextStyle(
                                                  color: colors[index]),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ).onTap(() => const DiagnosticsOfflineAppoinmentScreen()
                            .launch(context));
                      },
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
