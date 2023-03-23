import 'package:flutter/material.dart';
import 'package:cageur_dokter/const/const.dart';
import 'package:cageur_dokter/ui/auth/mt_signin.dart';
import 'package:nb_utils/nb_utils.dart';

import '../Doctor Screen/Doctor Auth/doc_sign_in.dart';
import '../Styles/style.dart';

class ChooseARoleScreen extends StatelessWidget {
  const ChooseARoleScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Image(
                image: AssetImage('assets/images/logo.png'),
                height: 100,
                width: 100,
              ),
              Expanded(
                child: Image.asset(
                  "assets/images/splash3.png",
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "Silahkan Login",
                style: ktitleTextStyle.copyWith(fontSize: 25),
              ),
              const SizedBox(
                height: 12,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                child: Text(
                  "Telemedicine adalah praktek pemberian layanan kesehatan jarak jauh menggunakan teknologi informasi dan komunikasi, yang memungkinkan pasien dan dokter untuk berkomunikasi dan berinteraksi secara virtual, memfasilitasi diagnosis, konsultasi, pengobatan, serta manajemen kondisi medis, tanpa harus bertatap muka secara fisik.",
                  style: ksubTitleTextStyle,
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              AppButton(
                text: "Login Dokter",
                textColor: kMainColor,
                enableScaleAnimation: false,
                width: double.infinity,
                elevation: 0,
                color: kLikeWhiteColor,
                onTap: () => const DoctorSignIn().launch(context),
                shapeBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: kMainColor),
                    borderRadius: BorderRadius.circular(6)),
              ),
              // const SizedBox(
              //   height: 12,
              // ),
              // AppButton(
              //   text: "Login Disini",
              //   textColor: kLikeWhiteColor,
              //   enableScaleAnimation: false,
              //   elevation: 0,
              //   width: double.infinity,
              //   color: kMainColor,
              //   onTap: () => const SignInScreen().launch(context),
              //   shapeBorder: OutlineInputBorder(
              //       borderSide: BorderSide.none,
              //       borderRadius: BorderRadius.circular(6)),
              // )
            ],
          ),
        ),
      ),
    );
  }
}
