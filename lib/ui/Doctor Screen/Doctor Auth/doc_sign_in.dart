import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_picker_dropdown.dart';
import 'package:country_pickers/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:cageur_dokter/const/const.dart';
import 'package:nb_utils/nb_utils.dart';

import '../../Styles/style.dart';
import '../Doctor Home/doc_home_nav.dart';
import 'doc_forgot_password.dart';
import 'doc_sign_up.dart';

class DoctorSignIn extends StatefulWidget {
  const DoctorSignIn({Key? key}) : super(key: key);

  @override
  State<DoctorSignIn> createState() => _DoctorSignInState();
}

class _DoctorSignInState extends State<DoctorSignIn> {
  Widget _buildDropdownItem(Country country) => SizedBox(
        width: 80.0,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            CountryPickerUtils.getDefaultFlagImage(country),
            const SizedBox(
              width: 8.0,
            ),
            Text(
              "+${country.phoneCode}",
              style: const TextStyle(fontSize: 12.0),
            ),
          ],
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sign In"),
        titleTextStyle: ktitleTextStyle.copyWith(fontSize: 20),
        leading: const BackButton(color: Colors.black),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                signInText,
                style: ksubTitleTextStyle,
              ),
              const SizedBox(
                height: 35,
              ),
              AppTextField(
                textFieldType: TextFieldType.NUMBER,
                decoration: InputDecoration(
                  labelText: "Mobile Number",
                  labelStyle: TextStyle(color: kTitleColor),
                  floatingLabelBehavior: FloatingLabelBehavior.never,
                  hintText: "Mobile Number",
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: kTextFieldBorderColor)),
                  prefixIcon: Padding(
                    padding: const EdgeInsets.only(left: 8.0, right: 6.0),
                    child: CountryPickerDropdown(
                      initialValue: 'BD',
                      iconSize: 18.0,
                      itemBuilder: _buildDropdownItem,
                      priorityList: [
                        CountryPickerUtils.getCountryByIsoCode('GB'),
                        CountryPickerUtils.getCountryByIsoCode('CN'),
                      ],
                      sortComparator: (Country a, Country b) =>
                          a.isoCode.compareTo(b.isoCode),
                      onValuePicked: (Country country) {},
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              AppTextField(
                textFieldType: TextFieldType.PASSWORD,
                obscuringCharacter: "*",
                decoration: InputDecoration(
                  label: const Text("Password"),
                  labelStyle: TextStyle(color: kTitleColor),
                  hintText: "******",
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: kTextFieldBorderColor),
                  ),
                ),
              ),
              const SizedBox(
                height: 13,
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  "Forgot Password?",
                  style: ksubTitleTextStyle,
                ),
              ).onTap(() => const DoctorForgotPassword().launch(context)),
              const SizedBox(
                height: 25,
              ),
              AppButton(
                text: "Sign In",
                textColor: kLikeWhiteColor,
                width: double.infinity,
                enableScaleAnimation: false,
                elevation: 0,
                color: kMainColor,
                onTap: () =>
                    const DocHomeNavBar().launch(context, isNewTask: true),
                shapeBorder: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(6)),
              ),
              const SizedBox(
                height: 20,
              ),
              RichText(
                text: TextSpan(
                    text: "Don't have an account? ",
                    style: TextStyle(color: kSubTitleColor),
                    children: [
                      TextSpan(
                          text: "SIGN UP", style: TextStyle(color: kMainColor)),
                    ]),
              ).onTap(() => const DoctorSignUp().launch(context))
            ],
          ),
        ),
      ),
    );
  }
}
