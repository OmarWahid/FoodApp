import 'package:flutter/material.dart';
import 'package:foodapp_demo/models/size.dart';
import 'package:foodapp_demo/screens/themes.dart';
import 'package:foodapp_demo/widgets/size_card.dart';

import '../main.dart';

var scaffoldCon = GlobalKey<ScaffoldState>();
bool isSheet = false;

class DetailScreen extends StatefulWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  State<DetailScreen> createState() => _DetailScreen();
}

class _DetailScreen extends State<DetailScreen> {
  int i = 1;

  int priceMini = pricee;
  int pricePromoMini = pricePromoo;
  int priceCur = pricee + 100;
  int pricePromoCur = pricePromoo + 50;
  int priceLarge = pricee + 200;
  int pricePromoLarge = pricePromoo + 100;
  int priceSuper = pricee + 300;
  int pricePromoSuper = pricePromoo + 150;

  bool isMini = true;
  bool isSedang = false;
  bool isBesar = false;
  bool isSuperBesar = false;

  void _minus() {
    setState(() {
      if (i > 1) {
        i--;
        if (isMini == true) {
          pricee -= priceMini;
          pricePromoo -= pricePromoMini;
        } else if (isSedang == true) {
          pricee -= priceCur;
          pricePromoo -= pricePromoCur;
        } else if (isBesar == true) {
          pricee -= priceLarge;
          pricePromoo -= pricePromoLarge;
        } else if (isSuperBesar == true) {
          pricee -= priceSuper;
          pricePromoo -= pricePromoSuper;
        }
      }
    });
  }

  void _plus() {
    setState(() {
      i++;

      if (isMini == true) {
        pricee += priceMini;
        pricePromoo += pricePromoMini;
      } else if (isSedang == true) {
        pricee += priceCur;
        pricePromoo += pricePromoCur;
      } else if (isBesar == true) {
        pricee += priceLarge;
        pricePromoo += pricePromoLarge;
      } else if (isSuperBesar == true) {
        pricee += priceSuper;
        pricePromoo += pricePromoSuper;
      }
    });
  }

  void _clickMini() {
    setState(() {
      pricee = priceMini;
      pricePromoo = pricePromoMini;

      isMini = true;
      isSedang = false;
      isBesar = false;
      isSuperBesar = false;
    });
  }

  void _clickSedang() {
    setState(() {
      pricee = priceCur;
      pricePromoo = pricePromoCur;
      isMini = false;
      isSedang = true;
      isBesar = false;
      isSuperBesar = false;
    });
  }

  void _clickBesar() {
    setState(() {
      pricee = priceLarge;
      pricePromoo = pricePromoLarge;
      isMini = false;
      isSedang = false;
      isBesar = true;
      isSuperBesar = false;
    });
  }

  void _clickSuperBesar() {
    setState(() {
      pricee = priceSuper;
      pricePromoo = pricePromoSuper;
      isMini = false;
      isSedang = false;
      isBesar = false;
      isSuperBesar = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldCon,
      body: SafeArea(
        child: Stack(
          children: [
            Image.asset(
              '$thisIsImage',
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.cover,
            ),
            SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(height: 264),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(20),
                      ),
                      color: Colors.white,
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: 30,
                            horizontal: 24,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                'assets/Promo.png',
                                width: 60,
                              ),
                              const SizedBox(height: 8),
                              Row(
                                children: [
                                  Text(
                                    'Burger Regular ',
                                    style: poppinsTextStyle.copyWith(
                                      fontSize: 22,
                                      fontWeight: FontWeight.w500,
                                      color: kBlackColor,
                                    ),
                                  ),
                                  const Spacer(),
                                  InkWell(
                                    onTap: _minus,
                                    child: Image.asset(
                                      'assets/Minus.png',
                                      width: 34,
                                    ),
                                  ),
                                  const SizedBox(width: 16),
                                  Text(
                                    '$i',
                                    style: poppinsTextStyle.copyWith(
                                      fontSize: 22,
                                      fontWeight: FontWeight.w500,
                                      color: kBlackColor,
                                    ),
                                  ),
                                  const SizedBox(width: 16),
                                  InkWell(
                                    onTap: _plus,
                                    child: Image.asset(
                                      'assets/Plus.png',
                                      width: 34,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 12),
                              Row(
                                children: [
                                  Text(
                                    '\$ $pricee',
                                    style: poppinsTextStyle.copyWith(
                                      fontSize: 14,
                                      color: kGreyColor,
                                      fontWeight: FontWeight.w500,
                                      decoration: TextDecoration.lineThrough,
                                    ),
                                  ),
                                  const SizedBox(width: 4),
                                  Text(
                                    '$pricePromoo',
                                    style: poppinsTextStyle.copyWith(
                                      fontSize: 14,
                                      color: kYellowColor,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 18),
                              Text(
                                'Choose Size',
                                style: poppinsTextStyle.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: kBlackColor,
                                ),
                              ),
                              const SizedBox(height: 12),
                              SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                physics: BouncingScrollPhysics(),
                                child: Row(
                                  children: [
                                    InkWell(
                                      onTap: _clickMini,
                                      child: SizeCard(
                                        Size(
                                          id: 1,
                                          name: 'Mini',
                                          isActive: isMini,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(width: 12),
                                    InkWell(
                                      onTap: _clickSedang,
                                      child: SizeCard(
                                        Size(
                                          id: 2,
                                          name: 'Currently',
                                          isActive: isSedang,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(width: 12),
                                    InkWell(
                                      onTap: _clickBesar,
                                      child: SizeCard(
                                        Size(
                                          id: 3,
                                          name: 'Large',
                                          isActive: isBesar,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(width: 12),
                                    InkWell(
                                      onTap: _clickSuperBesar,
                                      child: SizeCard(
                                        Size(
                                          id: 4,
                                          name: 'Super Large',
                                          isActive: isSuperBesar,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 18),
                              Text(
                                'Seller Note',
                                style: poppinsTextStyle.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: kBlackColor,
                                ),
                              ),
                              const SizedBox(height: 12),
                              // ignore: sized_box_for_whitespace
                              Container(
                                width: MediaQuery.of(context).size.width,
                                child: Text(
                                  'Purchases over 5 additional items, only 1 burger offer applies 2 km radius delivery, each purchase gets 1 burger voucher, 10 burger vouchers can be exchanged for 1 burger.',
                                  style: poppinsTextStyle.copyWith(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w300,
                                    color: kGreyColor,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 18),
                              Text(
                                'Salta3 Burger Website',
                                style: poppinsTextStyle.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: kBlackColor,
                                ),
                              ),
                              const SizedBox(height: 12),
                              InkWell(
                                onTap: () {},
                                child: Row(
                                  children: [
                                    Image.asset(
                                      'assets/Img_store.png',
                                      width: 50,
                                    ),
                                    const SizedBox(width: 18),
                                    Text(
                                      'Tahrir Street-Faisal\nCairo',
                                      style: poppinsTextStyle.copyWith(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                        color: kGreyColor,
                                      ),
                                    ),
                                    const Spacer(),
                                    IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.chevron_right,
                                        color: kGreyColor,
                                        size: 30,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 40),
                              // ignore: sized_box_for_whitespace
                              Container(
                                width: MediaQuery.of(context).size.width,
                                // ignore: deprecated_member_use
                                child: RaisedButton(
                                  padding: const EdgeInsets.only(
                                    top: 12,
                                    bottom: 12,
                                  ),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18),
                                  ),
                                  elevation: 0,
                                  focusElevation: 0,
                                  hoverElevation: 0,
                                  disabledElevation: 0,
                                  highlightElevation: 0,
                                  onPressed: () {
                                    showDialog(
                                        builder: (BuildContext context) {
                                          return Center(
                                            child: Material(
                                              type: MaterialType.transparency,
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(10),
                                                  color: Colors.white,
                                                ),
                                                padding: EdgeInsets.all(15),
                                                height: 320,
                                                width: MediaQuery.of(context).size.width * 0.7,
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.center,
                                                  children: [
                                                    ClipRRect(
                                                      borderRadius: BorderRadius.circular(5),
                                                      child: Image.asset(
                                                        'assets/Checkafter.jpg',
                                                        width: 200,
                                                        height: 200,
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      height: 10,
                                                    ),
                                                    Text(
                                                      'The total amount  \n ♥ \$$pricePromoo ♥',textAlign: TextAlign.center,
                                                      style: TextStyle(
                                                        fontSize: 25,
                                                        color: Colors.grey,
                                                        fontWeight: FontWeight.bold,
                                                      ),
                                                    ),

                                                  ],
                                                ),
                                              ),
                                            ),
                                          );                                        },
                                        context: context);
                                  },
                                  color: kYellowColor,
                                  child: Text(
                                    'Buy',
                                    style: poppinsTextStyle.copyWith(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500,
                                      color: kWhiteColor,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: Image.asset('assets/btn_back.png', width: 40),
                  ),
                  InkWell(
                    onTap: () {
                      showModalBottomSheet(
                        context: context,
                        builder: (context) => Container(
                          height: 50,
                          width: double.infinity,
                          color: Colors.amber[400],
                          child: Center(
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Expanded(
                                  child: IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.facebook,
                                        size: 40,
                                      )),
                                ),
                                // SizedBox(
                                //   width: 15,
                                // ),
                                Expanded(
                                  child: IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.whatsapp_sharp,
                                        size: 40,
                                      )),
                                ),
                                // SizedBox(
                                //   width: 15,
                                // ),
                                Expanded(
                                  child: IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.telegram_outlined,
                                        size: 40,
                                      )),
                                ),
                                // SizedBox(
                                //   width: 15,
                                // ),
                                Expanded(
                                  child: IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.forward_to_inbox,
                                        size: 40,
                                      )),
                                ),
                                // SizedBox(
                                //   width: 15,
                                // ),
                                Expanded(
                                  child: IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.chat,
                                        size: 40,
                                      )),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                    child: Image.asset('assets/btn_share.png', width: 40),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
