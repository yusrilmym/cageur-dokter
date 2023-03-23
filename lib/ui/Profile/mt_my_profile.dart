import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_picker_dropdown.dart';
import 'package:country_pickers/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:cageur_dokter/ui/Profile/mt_edit_profile.dart';
import 'package:nb_utils/nb_utils.dart';

import '../../const/const.dart';
import '../Styles/style.dart';

class MyProfileScreen extends StatefulWidget {
  const MyProfileScreen({Key? key}) : super(key: key);

  @override
  State<MyProfileScreen> createState() => _MyProfileScreenState();
}

class _MyProfileScreenState extends State<MyProfileScreen> {
  Widget _buildDropdownItem(Country country) => SizedBox(
        width: 30.0,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            // CountryPickerUtils.getDefaultFlagImage(country),
            const SizedBox(
              width: 8.0,
            ),
            Text(
              // "+${country.phoneCode}",
              "+62",
              style: const TextStyle(fontSize: 12.0),
            ),
          ],
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: kLikeWhiteColor,
        elevation: 0,
        leading: BackButton(
          color: kTitleColor,
        ),
        title: Text(
          "Profile",
          style: ktitleTextStyle,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: Icon(
              IconlyBold.edit,
              color: kWatchColor,
            ).onTap(() => const EditProfileScreen().launch(context)),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: 85,
                width: context.width(),
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                          "assets/images/profile-banner.png",
                        ),
                        fit: BoxFit.fill)),
                child: Center(
                    child: Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 10.0),
                      child: CircleAvatar(
                        backgroundImage:
                            AssetImage('assets/images/profile-logo.png'),
                        radius: 30,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Yusril M",
                          style: TextStyle(
                              color: kLikeWhiteColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                        Text(
                          "Phone Number: 01855671615",
                          style: TextStyle(color: kLikeWhiteColor),
                        ),
                        Text(
                          "User ID: #74957485",
                          style: TextStyle(color: kLikeWhiteColor),
                        ),
                      ],
                    )
                  ],
                )),
              ),
            ),
            Container(
                decoration: BoxDecoration(
                    color: kbigContainerColor,
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    )),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Personal Details",
                        style: ktitleTextStyle,
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      AppTextField(
                        textFieldType: TextFieldType.NAME,
                        decoration: InputDecoration(
                          label: const Text("Nama Lengkap"),
                          labelStyle: TextStyle(color: kTitleColor),
                          hintText: "Maulana Yusril Mahendra",
                          hintStyle: TextStyle(color: kSubTitleColor),
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: kSubTitleColor.withOpacity(0.3))),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: kSubTitleColor.withOpacity(0.3),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      AppTextField(
                        textFieldType: TextFieldType.EMAIL,
                        decoration: InputDecoration(
                          label: const Text("Email"),
                          labelStyle: TextStyle(color: kTitleColor),
                          hintText: "yusril@imei.co.id",
                          hintStyle: TextStyle(color: kSubTitleColor),
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: kSubTitleColor.withOpacity(0.3))),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: kSubTitleColor.withOpacity(0.3))),
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      AppTextField(
                        textFieldType: TextFieldType.NUMBER,
                        decoration: InputDecoration(
                          hintText: "0887868743",
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: kSubTitleColor.withOpacity(0.3))),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: kSubTitleColor.withOpacity(0.3))),
                          prefixIcon: Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: CountryPickerDropdown(
                              initialValue: 'ID',
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
                        textFieldType: TextFieldType.NAME,
                        decoration: InputDecoration(
                          label: const Text("Jenis Kelamin"),
                          labelStyle: TextStyle(color: kTitleColor),
                          hintText: "Laki-laki",
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: kSubTitleColor.withOpacity(0.3))),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: kSubTitleColor.withOpacity(0.3))),
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      AppTextField(
                        textFieldType: TextFieldType.NAME,
                        decoration: InputDecoration(
                          label: const Text("Golongan Darah"),
                          labelStyle: TextStyle(color: kTitleColor),
                          hintText: "O+",
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: kSubTitleColor.withOpacity(0.3))),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: kSubTitleColor.withOpacity(0.3))),
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      AppTextField(
                        textFieldType: TextFieldType.NAME,
                        decoration: InputDecoration(
                          label: const Text("Usia"),
                          labelStyle: TextStyle(color: kTitleColor),
                          hintText: "24",
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: kSubTitleColor.withOpacity(0.3))),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: kSubTitleColor.withOpacity(0.3))),
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      AppTextField(
                        textFieldType: TextFieldType.NAME,
                        decoration: InputDecoration(
                          label: const Text("Berat Badan"),
                          labelStyle: TextStyle(color: kTitleColor),
                          hintText: "78",
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: kSubTitleColor.withOpacity(0.3))),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: kSubTitleColor.withOpacity(0.3))),
                        ),
                      ),
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
