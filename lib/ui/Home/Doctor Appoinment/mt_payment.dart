import 'package:flutter/material.dart';
import 'package:flutter_credit_card/credit_card_brand.dart';
import 'package:flutter_credit_card/credit_card_form.dart';
import 'package:flutter_credit_card/credit_card_model.dart';
import 'package:flutter_credit_card/credit_card_widget.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:cageur_dokter/ui/History/Appoinment%20History/mt_my_appoinment.dart';
import 'package:nb_utils/nb_utils.dart';

import '../../../const/const.dart';
import '../../Styles/style.dart';
import '../mt_home_bottom_nav.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({Key? key}) : super(key: key);

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  List nameImage = [
    "assets/images/bjb.png",
    "assets/images/visa.png",
    "assets/images/payment.png",
    "assets/images/bpjs.png",
    "assets/images/Cash On Delivery.png"
  ];
  List logo = [
    "assets/images/bjb.png",
    "assets/images/visa.png",
    "assets/images/payment.png",
    "assets/images/bpjs.png",
    "assets/images/cod_logo.png"
  ];

  List miniContainerColors = [
    kStarColor.withOpacity(0.10),
    kBkashContainerColor.withOpacity(0.10),
    kPaypalContainerColor.withOpacity(0.10),
    kStripeContainerColor.withOpacity(0.10),
    kWatchColor.withOpacity(0.10)
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
          "Pembayaran",
          style: ktitleTextStyle,
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(14.0),
        child: AppButton(
          text: "Bayar Sekarang",
          textColor: kLikeWhiteColor,
          elevation: 0,
          color: kMainColor,
          onTap: () => showDialog(
              context: context,
              builder: (BuildContext context) {
                return Dialog(
                    shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(12.0)), //this right here
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Image.asset(
                              "assets/images/hand_board.png",
                              width: 124,
                            ),
                          ),
                          Text(
                            "Berhasil !",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: kTitleColor,
                                fontSize: 28),
                          ),
                          const SizedBox(
                            height: 12,
                          ),
                          RichText(
                            textAlign: TextAlign.center,
                            text: TextSpan(
                              text: "Pemesanan janji temu Anda selesai.",
                              style: ksubTitleTextStyle,
                              children: [
                                TextSpan(
                                    text: " Dr. Yusril Sp.Kom  ",
                                    style: TextStyle(color: kMainColor)),
                                TextSpan(
                                  text: " will video call",
                                  style: TextStyle(color: kSubTitleColor),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 28,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Expanded(
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.person,
                                          color: kBadgeColor,
                                        ),
                                        Text(
                                          "Maulana",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              color: kTitleColor),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      children: [
                                        Icon(
                                          IconlyBold.calendar,
                                          color: kMainColor,
                                        ),
                                        Text(
                                          "12 July 2022",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              color: kTitleColor),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              Expanded(
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Icon(
                                          IconlyBold.wallet,
                                          color: kWatchColor,
                                        ),
                                        Text(
                                          "\Rp 120.000",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              color: kTitleColor),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      children: [
                                        Icon(
                                          IconlyBold.timeCircle,
                                          color: kStarColor,
                                        ),
                                        Text(
                                          "01:00 PM",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              color: kTitleColor),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 24,
                          ),
                          AppButton(
                            text: "See Appointment",
                            textColor: kLikeWhiteColor,
                            width: context.width(),
                            enableScaleAnimation: false,
                            padding: EdgeInsets.zero,
                            elevation: 0,
                            color: kMainColor,
                            onTap: () =>
                                const MyAppoinmentScreen().launch(context),
                            //  padding: EdgeInsets.zero,
                            shapeBorder: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(6)),
                          ),
                          AppButton(
                            text: "Kembali Ke Halaman",
                            width: context.width(),
                            padding: EdgeInsets.zero,
                            textColor: kMainColor,
                            enableScaleAnimation: false,
                            elevation: 0,
                            color: kLikeWhiteColor,
                            onTap: () =>
                                const HomeBottomNavBarScreen().launch(context),
                            //  padding: EdgeInsets.zero,
                            shapeBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: kMainColor),
                                borderRadius: BorderRadius.circular(6)),
                          ),
                        ],
                      ),
                    ));
              }),
          //  padding: EdgeInsets.zero,
          shapeBorder: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(6)),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CreditCardWidget(
              cardNumber: '3754 9000 0800 9735',
              expiryDate: '05/31',
              cardHolderName: "Yusril M",
              cvvCode: '23/12',
              bankName: 'VISA',
              height: 210,
              backgroundImage: "assets/images/card_bg.png",
              showBackView: false,
              obscureCardNumber: true,
              isHolderNameVisible: true,
              isChipVisible: false,
              cardBgColor: Colors.white,
              isSwipeGestureEnabled: true,
              onCreditCardWidgetChange: (CreditCardBrand creditCardBrand) {
                creditCardBrand = CreditCardBrand(CardType.visa);
              },
            ),
            Container(
              decoration: BoxDecoration(
                  color: kbigContainerColor,
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20))),
              child: Padding(
                padding: const EdgeInsets.all(14.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Select Metode Pembayaran",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.black),
                        ),
                        Text(
                          "Ubah",
                          style: TextStyle(color: kBadgeColor),
                        )
                      ],
                    ),
                    HorizontalList(
                      itemCount: nameImage.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          height: 56,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              color: kLikeWhiteColor),
                          child: Padding(
                            padding: const EdgeInsets.all(6.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: miniContainerColors[index]),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Image.asset(
                                      logo[index],
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 4,
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Image.asset(
                                    nameImage[index],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                    CreditCardForm(
                      formKey: formKey, // Required
                      onCreditCardModelChange:
                          (CreditCardModel data) {}, // Required
                      themeColor: Colors.red,
                      obscureCvv: false,
                      obscureNumber: false,
                      isHolderNameVisible: true,
                      isCardNumberVisible: true,
                      isExpiryDateVisible: true,
                      cardHolderDecoration: InputDecoration(
                        border: const OutlineInputBorder(),
                        labelText: 'Name',
                        hintText: 'Enter card holder name',
                        labelStyle: TextStyle(color: kTitleColor),
                        hintStyle: TextStyle(color: kSubTitleColor),
                      ),
                      cardNumberDecoration: InputDecoration(
                        border: const OutlineInputBorder(),
                        labelText: 'Card Number',
                        hintText: 'Enter card Number',
                        labelStyle: TextStyle(color: kTitleColor),
                        hintStyle: TextStyle(color: kSubTitleColor),
                      ),
                      expiryDateDecoration: InputDecoration(
                        border: const OutlineInputBorder(),
                        labelText: 'Expired Date',
                        hintText: 'DD - MM - YYYY',
                        labelStyle: TextStyle(color: kTitleColor),
                        hintStyle: TextStyle(color: kSubTitleColor),
                      ),
                      cvvCodeDecoration: InputDecoration(
                        border: const OutlineInputBorder(),
                        labelText: 'CVV',
                        hintText: 'Enter CVV number',
                        labelStyle: TextStyle(color: kTitleColor),
                        hintStyle: TextStyle(color: kSubTitleColor),
                      ),
                      cardNumber: '3754 9000 0800 9735',
                      expiryDate: '05/31',
                      cardHolderName: "Yusril M",
                      cvvCode: '23/12',
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
