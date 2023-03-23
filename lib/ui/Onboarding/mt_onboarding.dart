import 'package:flutter/material.dart';
import 'package:cageur_dokter/const/const.dart';
import 'package:cageur_dokter/ui/Choose%20A%20Role/mt_choose_a_role.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  var currentIndex = 0;
  var percent = 0.333;
  PageController pageController = PageController();
  List imageList = [
    "assets/images/splash0.JPG",
    "assets/images/splash1.png",
    "assets/images/splash2.png"
    // "assets/images/female_doctor.png",
    // "assets/images/male_doctor.png",
    // "assets/images/mask_doctor.png"
  ];
  List<String> tittleText = [
    "Temukan Dokter Anda",
    "Pesan obat Anda",
    "Tes Lab di rumah"
  ];
  List<String> description = [
    " Temukan dokter yang anda cari pada Aplikasi kami. Menyediakan berbagai kategori poli untuk jenis penyakit terkait.",
    " Order diskusi mengenai penyakit dengan mudah dan efisien. Mempermudah pasien supaya tidak perlu untuk hadir ditempat",
    " Tes Lab bisa dilakukan dengan mudah dirumah anda. Cukup dengan order dan booking di aplikasi kami",
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  "Skip",
                  style: TextStyle(color: kSubTitleColor),
                ).onTap(() => const ChooseARoleScreen().launch(context)),
              ),
            ),
            Expanded(
              child: PageView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: imageList.length,
                  controller: pageController,
                  onPageChanged: (index) {
                    setState(() {
                      currentIndex = index;
                    });
                  },
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(imageList[index],
                                height: context.height() / 2.3,
                                width: context.width()),
                            const SizedBox(
                              height: 16,
                            ),
                            Text(
                              tittleText[index],
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                                color: kTitleColor,
                              ),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Text(
                              description[index],
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                color: kSubTitleColor,
                                height: 1.5,
                                fontSize: 14,
                              ),
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                for (var i = 0; i < imageList.length; i++)
                                  buildIndicator(currentIndex == i)
                              ],
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            CircularPercentIndicator(
                              radius: 40.0,
                              lineWidth: 4.0,
                              progressColor: kMainColor,
                              percent: percent,
                              animation: true,
                              center: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    currentIndex < 2
                                        ? percent = percent + 0.333
                                        : percent = 1.0;
                                    currentIndex < 2
                                        ? pageController.nextPage(
                                            duration: const Duration(
                                                microseconds: 3000),
                                            curve: Curves.bounceInOut)
                                        : Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    const ChooseARoleScreen()),
                                          );
                                  });
                                },
                                child: Container(
                                  height: 68,
                                  width: 68,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: kMainColor),
                                  child: Image.asset("assets/images/arrow.png"),
                                ),
                              ),
                            )
                          ]),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }

  Widget buildIndicator(bool isSelected) {
    return Padding(
        padding: const EdgeInsets.only(left: 10.0),
        child: Container(
          height: isSelected ? 12 : 8,
          width: isSelected ? 12 : 8,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: isSelected ? kMainColor : kMainColor.withOpacity(0.30),
          ),
        ));
  }
}
