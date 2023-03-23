import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:maan_doctor_appoinment/const/const.dart';
import 'package:nb_utils/nb_utils.dart';

import 'mt_video_call_time_out.dart';

class VideoCallScreen extends StatelessWidget {
  const VideoCallScreen({Key? key}) : super(key: key);

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
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    color: kbigContainerColor,
                    image: const DecorationImage(
                        image: AssetImage(
                          "assets/images/menmini.png",
                        ),
                        fit: BoxFit.fill),
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    )),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        height: 108,
                        width: 86,
                        decoration: BoxDecoration(
                            border: Border.all(color: kMainColor),
                            borderRadius: BorderRadius.circular(20),
                            image: const DecorationImage(
                                image:
                                    AssetImage("assets/images/video_face.png"),
                                fit: BoxFit.fill)),
                      ),
                      Text(
                        "Dr. Yusril Sp.Kom ",
                        style: TextStyle(
                            fontSize: 24,
                            color: kLikeWhiteColor,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Text(
                        "Calling...",
                        style: TextStyle(
                          color: kLikeWhiteColor,
                        ),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Card(
                            elevation: 0,
                            color: kLikeWhiteColor,
                            shape: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(40),
                                borderSide: BorderSide(
                                    color: kSubTitleColor.withOpacity(0.10))),
                            child: Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Icon(
                                IconlyBold.voice,
                                color: kMainColor,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 28,
                          ),
                          Card(
                            elevation: 0,
                            color: kBadgeColor,
                            shape: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(40),
                                borderSide: BorderSide.none),
                            child: Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Icon(
                                Icons.call_end,
                                color: kLikeWhiteColor,
                              ),
                            ),
                          ).onTap(() =>
                              const VideoCallTimeOutScreen().launch(context)),
                          const SizedBox(
                            width: 28,
                          ),
                          Card(
                            elevation: 0,
                            color: kLikeWhiteColor,
                            shape: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(40),
                                borderSide: BorderSide(
                                    color: kSubTitleColor.withOpacity(0.10))),
                            child: Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Icon(
                                IconlyBold.volumeUp,
                                color: kMainColor,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
