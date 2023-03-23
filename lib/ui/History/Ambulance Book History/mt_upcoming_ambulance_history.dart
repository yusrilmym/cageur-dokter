import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

import '../../../../const/const.dart';
import '../../Styles/style.dart';
import '../Diagnostic History/mt_diag_Offline_Appointments_Details.dart';
import 'mt_past_ambulance_history.dart';

class UpcomingAmbulanceHistoryScreen extends StatefulWidget {
  const UpcomingAmbulanceHistoryScreen({Key? key}) : super(key: key);

  @override
  State<UpcomingAmbulanceHistoryScreen> createState() =>
      _UpcomingAmbulanceHistoryScreenState();
}

class _UpcomingAmbulanceHistoryScreenState
    extends State<UpcomingAmbulanceHistoryScreen> {
  List conditions = [
    "Cancel",
    'Accepted',
    'Accepted',
  ];
  List colors = [
    kBadgeColor,
    kWatchColor,
    kWatchColor,
  ];
  List packsColor = [kHeartBgColor, kLungsBgColor, kDaigLungsBGColor];
  List names = ["General Ambulance", "ICU Ambulance", "Freezing Ambulance"];
  List ambulanceImages = [
    "assets/images/general.png",
    "assets/images/icu.png",
    "assets/images/freege.png"
  ];
  List color = [
    kGAmbulanceBGColor,
    kIcuAmbulanceBGColor,
    kFreegeAmbulanceBGColor
  ];

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
          "Ambulance History",
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
                      onTap: () {},
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
                        const PastAmbulanceHistoryScreen().launch(context);
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
                                            Container(
                                              height: 70,
                                              width: 96,
                                              decoration: BoxDecoration(
                                                  color: color[index],
                                                  borderRadius:
                                                      BorderRadius.circular(6),
                                                  border: Border.all(
                                                      color: kSubTitleColor
                                                          .withOpacity(0.1)),
                                                  image: DecorationImage(
                                                      scale: 2,
                                                      image: AssetImage(
                                                          ambulanceImages[
                                                              index]))),
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
                                                  RichText(
                                                    maxLines: 1,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    text: TextSpan(
                                                      text: "Pickup Point: ",
                                                      style: TextStyle(
                                                          color: kTitleColor),
                                                      children: [
                                                        TextSpan(
                                                          text:
                                                              "RSUD Cibinong So... ",
                                                          style: TextStyle(
                                                            color:
                                                                kSubTitleColor,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    height: 4,
                                                  ),
                                                  RichText(
                                                    maxLines: 1,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    text: TextSpan(
                                                      text:
                                                          "Destination Point: ",
                                                      style: TextStyle(
                                                          color: kTitleColor),
                                                      children: [
                                                        TextSpan(
                                                          text:
                                                              "RSUD Cibinong So... ",
                                                          style: TextStyle(
                                                            color:
                                                                kSubTitleColor,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    height: 4,
                                                  ),
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      RichText(
                                                          maxLines: 1,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          text: TextSpan(
                                                              text: "Date:",
                                                              style: TextStyle(
                                                                  color:
                                                                      kTitleColor),
                                                              children: [
                                                                TextSpan(
                                                                  text:
                                                                      " 26 Jun 2022",
                                                                  style:
                                                                      TextStyle(
                                                                    color:
                                                                        kSubTitleColor,
                                                                  ),
                                                                )
                                                              ])),
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
                                            Container(
                                              height: 70,
                                              width: 96,
                                              decoration: BoxDecoration(
                                                  color: color[index],
                                                  borderRadius:
                                                      BorderRadius.circular(6),
                                                  border: Border.all(
                                                      color: kSubTitleColor
                                                          .withOpacity(0.1)),
                                                  image: DecorationImage(
                                                      scale: 2,
                                                      image: AssetImage(
                                                          ambulanceImages[
                                                              index]))),
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
                                                  RichText(
                                                    maxLines: 1,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    text: TextSpan(
                                                      text: "Pickup Point: ",
                                                      style: TextStyle(
                                                          color: kTitleColor),
                                                      children: [
                                                        TextSpan(
                                                          text:
                                                              "RSUD Cibinong So... ",
                                                          style: TextStyle(
                                                            color:
                                                                kSubTitleColor,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    height: 4,
                                                  ),
                                                  RichText(
                                                    maxLines: 1,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    text: TextSpan(
                                                      text:
                                                          "Destination Point: ",
                                                      style: TextStyle(
                                                          color: kTitleColor),
                                                      children: [
                                                        TextSpan(
                                                          text:
                                                              "RSUD Cibinong So... ",
                                                          style: TextStyle(
                                                            color:
                                                                kSubTitleColor,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    height: 4,
                                                  ),
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      RichText(
                                                          maxLines: 1,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          text: TextSpan(
                                                              text: "Date:",
                                                              style: TextStyle(
                                                                  color:
                                                                      kTitleColor),
                                                              children: [
                                                                TextSpan(
                                                                  text:
                                                                      " 26 Jun 2022",
                                                                  style:
                                                                      TextStyle(
                                                                    color:
                                                                        kSubTitleColor,
                                                                  ),
                                                                )
                                                              ])),
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
                            .onTap(() => const PastAmbulanceHistoryScreen()
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
