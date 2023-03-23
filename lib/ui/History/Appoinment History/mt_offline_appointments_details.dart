import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:nb_utils/nb_utils.dart';

import '../../../const/const.dart';
import '../../../model/mt_doctor_model.dart';
import '../../Styles/style.dart';

class OfflineAppoinmentDetails extends StatefulWidget {
  const OfflineAppoinmentDetails({Key? key}) : super(key: key);

  @override
  State<OfflineAppoinmentDetails> createState() =>
      _OfflineAppoinmentDetailsState();
}

class _OfflineAppoinmentDetailsState extends State<OfflineAppoinmentDetails> {
  var index = 0;

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
          "Offline Appointments Details",
          style: ktitleTextStyle,
        ),
      ),
      bottomNavigationBar: Padding(
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
                    borderSide: BorderSide(color: kMainColor)),
                text: "Reschedule",
                textStyle:
                    TextStyle(color: kMainColor, fontWeight: FontWeight.w700),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Expanded(
              child: AppButton(
                elevation: 0,
                enableScaleAnimation: false,
                onTap: () {},
                shapeBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(6),
                    borderSide: BorderSide.none),
                color: kMainColor,
                text: "Write a Review",
                textStyle: TextStyle(
                    color: kElevatedButtonTextColor,
                    fontWeight: FontWeight.w700),
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.all(40),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        image: DecorationImage(
                            image: AssetImage(allDoctors[index].image ?? ''),
                            fit: BoxFit.fill)),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        allDoctors[index].doctorName ?? '',
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 24),
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      SizedBox(
                        width: 250,
                        child: Text(
                          "RSUD Cibinong, (Cancer Specialist)",
                          maxLines: 2,
                          style: TextStyle(color: kSubTitleColor),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Container(
              decoration: BoxDecoration(
                  color: kbigContainerColor,
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20))),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: kWatchColor),
                      child: Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: kLikeWhiteColor, shape: BoxShape.circle),
                            child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Icon(
                                  IconlyBold.profile,
                                  color: kWatchColor,
                                )),
                          ),
                          const SizedBox(
                            width: 12,
                          ),
                          Text(
                            "Physical",
                            style: TextStyle(color: kLikeWhiteColor),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ImageIcon(
                            const AssetImage("assets/images/ic_hospital.png"),
                            color: kSubTitleColor),
                        const SizedBox(
                          width: 12,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "Hospital",
                              style: TextStyle(
                                  color: kTitleColor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16),
                            ),
                            const SizedBox(
                              height: 6,
                            ),
                            Text(
                              "RSUD Cibinong",
                              style: TextStyle(
                                color: kSubTitleColor,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(
                          IconlyBold.timeCircle,
                          color: kSubTitleColor,
                        ),
                        const SizedBox(
                          width: 12,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "Visit time",
                              style: TextStyle(
                                  color: kTitleColor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16),
                            ),
                            const SizedBox(
                              height: 6,
                            ),
                            Text(
                              "Siang",
                              style: TextStyle(
                                color: kSubTitleColor,
                              ),
                            ),
                            const SizedBox(
                              height: 4,
                            ),
                            Text(
                              "Today - 14 Maret, 2023",
                              style: TextStyle(
                                color: kSubTitleColor,
                              ),
                            ),
                            const SizedBox(
                              height: 4,
                            ),
                            Text(
                              "01:00 PM",
                              style: TextStyle(
                                color: kMainColor,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(
                          IconlyBold.profile,
                          color: kSubTitleColor,
                        ),
                        const SizedBox(
                          width: 12,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Patient information",
                              style: TextStyle(
                                  color: kTitleColor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16),
                            ),
                            const SizedBox(
                              height: 6,
                            ),
                            Row(
                              children: [
                                Text(
                                  "Name",
                                  style: ksubTitleTextStyle,
                                ),
                                const SizedBox(
                                  width: 24,
                                ),
                                Text(
                                  ":",
                                  style: ksubTitleTextStyle,
                                ),
                                const SizedBox(
                                  width: 24,
                                ),
                                Text(
                                  "Maulana",
                                  style: TextStyle(color: kTitleColor),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 4,
                            ),
                            Row(
                              children: [
                                Text(
                                  "Age",
                                  style: ksubTitleTextStyle,
                                ),
                                const SizedBox(
                                  width: 36,
                                ),
                                Text(
                                  ":",
                                  style: ksubTitleTextStyle,
                                ),
                                const SizedBox(
                                  width: 24,
                                ),
                                Text(
                                  "25",
                                  style: TextStyle(color: kTitleColor),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 4,
                            ),
                            Row(
                              children: [
                                Text(
                                  "Gender",
                                  style: ksubTitleTextStyle,
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                                Text(
                                  ":",
                                  style: ksubTitleTextStyle,
                                ),
                                const SizedBox(
                                  width: 24,
                                ),
                                Text(
                                  "Male",
                                  style: TextStyle(color: kTitleColor),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 4,
                            ),
                            Row(
                              children: [
                                Text(
                                  "Phone",
                                  style: ksubTitleTextStyle,
                                ),
                                const SizedBox(
                                  width: 22,
                                ),
                                Text(
                                  ":",
                                  style: ksubTitleTextStyle,
                                ),
                                const SizedBox(
                                  width: 24,
                                ),
                                Text(
                                  "01855671645",
                                  style: TextStyle(color: kTitleColor),
                                ),
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(
                          IconlyBold.wallet,
                          color: kSubTitleColor,
                        ),
                        const SizedBox(
                          width: 12,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Biaya Konsultasi",
                              style: TextStyle(
                                  color: kTitleColor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16),
                            ),
                            const SizedBox(
                              height: 6,
                            ),
                            Row(
                              children: [
                                Text(
                                  "Paid",
                                  style: ksubTitleTextStyle,
                                ),
                                const SizedBox(
                                  width: 34,
                                ),
                                Text(
                                  ":",
                                  style: ksubTitleTextStyle,
                                ),
                                const SizedBox(
                                  width: 24,
                                ),
                                Text(
                                  "Video Call",
                                  style: TextStyle(color: kTitleColor),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 4,
                            ),
                            Row(
                              children: [
                                Text(
                                  "Fees",
                                  style: ksubTitleTextStyle,
                                ),
                                const SizedBox(
                                  width: 32,
                                ),
                                Text(
                                  ":",
                                  style: ksubTitleTextStyle,
                                ),
                                const SizedBox(
                                  width: 24,
                                ),
                                Text(
                                  "\Rp 120.000",
                                  style: TextStyle(color: kTitleColor),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 4,
                            ),
                          ],
                        )
                      ],
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
