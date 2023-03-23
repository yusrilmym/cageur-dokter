import 'package:flutter/material.dart';
import 'package:cageur_dokter/ui/Cart/mt_order_details.dart';
import 'package:cageur_dokter/ui/Home/mt_home_bottom_nav.dart';
import 'package:nb_utils/nb_utils.dart';

import '../../const/const.dart';

class OrderSuccessfulScreen extends StatefulWidget {
  const OrderSuccessfulScreen({Key? key}) : super(key: key);

  @override
  State<OrderSuccessfulScreen> createState() => _OrderSuccessfulScreenState();
}

class _OrderSuccessfulScreenState extends State<OrderSuccessfulScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(color: kTitleColor),
          elevation: 0,
          title: Text(
            "Order Kamu Berhasil!",
            style: TextStyle(color: kTitleColor),
          )),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            AppButton(
              text: "Track Lihat",
              enableScaleAnimation: false,
              textColor: kLikeWhiteColor,
              width: context.width(),
              elevation: 0,
              color: kMainColor,
              onTap: () {
                const OrderDetailsScreen().launch(context);
              },
              shapeBorder: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(6)),
            ),
            const SizedBox(
              height: 12,
            ),
            AppButton(
              text: "Kembali Ke Halaman",
              textColor: kMainColor,
              width: context.width(),
              enableScaleAnimation: false,
              elevation: 0,
              color: kLikeWhiteColor,
              onTap: () {
                const HomeBottomNavBarScreen().launch(context);
              },
              //  padding: EdgeInsets.zero,
              shapeBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: kMainColor),
                  borderRadius: BorderRadius.circular(6)),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Text(
                "Estimasi Waktu Pengiriman",
                style: TextStyle(
                    color: kSubTitleColor, fontWeight: FontWeight.w400),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "35 - 50 Mins",
                style: TextStyle(
                    color: kTitleColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
              const SizedBox(
                height: 20,
              ),
              Image.asset(
                "assets/images/motor_cycle.png",
                width: 200,
              ),
              const SizedBox(
                height: 20,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Order Details",
                  style: TextStyle(
                      color: kTitleColor, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Orderan Anda Number:",
                      style: TextStyle(
                          color: kSubTitleColor, fontWeight: FontWeight.w400)),
                  Text("#s5jc-226",
                      style: TextStyle(
                          color: kTitleColor, fontWeight: FontWeight.w400)),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Order Anda dari:",
                      style: TextStyle(
                          color: kSubTitleColor, fontWeight: FontWeight.w400)),
                  Text("Farmasi RSUD Cibinong",
                      style: TextStyle(
                          color: kTitleColor, fontWeight: FontWeight.w400)),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Delivery Addesss:",
                      style: TextStyle(
                          color: kSubTitleColor, fontWeight: FontWeight.w400)),
                  RichText(
                    textAlign: TextAlign.end,
                    text: TextSpan(
                      text: "Home",
                      style: TextStyle(
                          color: kTitleColor, fontWeight: FontWeight.w600),
                      children: [
                        TextSpan(
                          text: "\nGg Ampel 2 \nNo 114, Cibinong",
                          style: TextStyle(
                              color: kSubTitleColor,
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Total (incl. VAT)",
                      style: TextStyle(
                          color: kTitleColor, fontWeight: FontWeight.w600)),
                  Text("Rp13.59",
                      style: TextStyle(
                          color: kTitleColor, fontWeight: FontWeight.w600)),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              ExpansionTile(
                tilePadding: EdgeInsets.zero,
                title: RichText(
                  textAlign: TextAlign.start,
                  text: TextSpan(
                    text: "View Details ",
                    style: TextStyle(
                        color: kTitleColor, fontWeight: FontWeight.w500),
                    children: [
                      TextSpan(
                        text: "(3 items)",
                        style: TextStyle(
                            color: kSubTitleColor, fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ),
                trailing: const Icon(Icons.keyboard_arrow_right)
                    .onTap(() => const OrderDetailsScreen().launch(context)),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
