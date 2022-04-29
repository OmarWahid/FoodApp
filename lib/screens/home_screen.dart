import 'package:flutter/material.dart';
import 'package:foodapp_demo/screens/themes.dart';
import 'package:foodapp_demo/widgets/menu_%20card.dart';
import 'package:foodapp_demo/models/menu.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 32,
                horizontal: 20,
              ),
              child: SingleChildScrollView(
                physics: NeverScrollableScrollPhysics(),
                scrollDirection: Axis.horizontal,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.bottomLeft,
                              end: Alignment.topRight,
                              colors: [Colors.limeAccent, Colors.deepOrange]),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        height: 70,
                        width: 360,
                        child: Center(
                          child: Text(
                            'Salta3 Burger',
                            textAlign: TextAlign.center,
                            style: poppinsTextStyle.copyWith(
                              fontSize: 30,
                              fontWeight: FontWeight.w900,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Recommended Menu ',
                      style: poppinsTextStyle.copyWith(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: kBlackColor,
                      ),
                    ),
                    MenuCard(
                      menu: Menu(
                          id: 1,
                          image: 'assets/burger_reguler.png',
                          name: 'Big Tasty',
                          price: 120,
                          pricePromo: 100,
                          note:
                              'Purchases over 5 additional items, burger promotion 2 KM only apply radius delivery, each purchase gets 1 burger coupon, 10 burger coupons can be exchanged for 1 burger.',
                          isPromo: true),
                    ),
                    MenuCard(
                      menu: Menu(
                          id: 1,
                          image: 'assets/paket_burger1.png',
                          name: 'Chicken Burger',
                          price: 85,
                          pricePromo: 61,
                          note:
                              'Purchases over 5 additional items, burger promotion 2 KM only apply radius delivery, each purchase gets 1 burger coupon, 10 burger coupons can be exchanged for 1 burger.',
                          isPromo: false),
                    ),
                    MenuCard(
                      menu: Menu(
                          id: 1,
                          image: 'assets/paket_burger2.png',
                          name: 'Big Tasty® Chicken',
                          price: 110,
                          pricePromo: 95,
                          note:
                              'Purchases over 5 additional items, burger promotion 2 KM only apply radius delivery, each purchase gets 1 burger coupon, 10 burger coupons can be exchanged for 1 burger.',
                          isPromo: true),
                    ),
                    MenuCard(
                      menu: Menu(
                          id: 1,
                          image: 'assets/paket_burger3.png',
                          name: 'Little Tasty',
                          price: 77,
                          pricePromo: 65,
                          note:
                              'Purchases over 5 additional items, burger promotion 2 KM only apply radius delivery, each purchase gets 1 burger coupon, 10 burger coupons can be exchanged for 1 burger.',
                          isPromo: false),
                    ),
                    MenuCard(
                      menu: Menu(
                          id: 1,
                          image: 'assets/Chicken-Fillet.png',
                          name: 'Chicken Fillet',
                          price: 85,
                          pricePromo: 77,
                          note:
                              'Purchases over 5 additional items, burger promotion 2 KM only apply radius delivery, each purchase gets 1 burger coupon, 10 burger coupons can be exchanged for 1 burger.',
                          isPromo: true),
                    ),
                    MenuCard(
                      menu: Menu(
                          id: 1,
                          image: 'assets/Gaden-Salad.png',
                          name: 'Garden Salad',
                          price: 50,
                          pricePromo: 49,
                          note:
                              'Purchases over 5 additional items, burger promotion 2 KM only apply radius delivery, each purchase gets 1 burger coupon, 10 burger coupons can be exchanged for 1 burger.',
                          isPromo: true),
                    ),
                    MenuCard(
                      menu: Menu(
                          id: 1,
                          image: 'assets/Coke.png',
                          name: 'Coca Cola',
                          price: 10,
                          pricePromo: 10,
                          note:
                              'Purchases over 5 additional items, burger promotion 2 KM only apply radius delivery, each purchase gets 1 burger coupon, 10 burger coupons can be exchanged for 1 burger.',
                          isPromo: false),
                    ),
                    MenuCard(
                      menu: Menu(
                          id: 1,
                          image: 'assets/Pie-700x474.png',
                          name: 'Strawberry Custard',
                          price: 40,
                          pricePromo: 37,
                          note:
                              'Purchases over 5 additional items, burger promotion 2 KM only apply radius delivery, each purchase gets 1 burger coupon, 10 burger coupons can be exchanged for 1 burger.',
                          isPromo: false),
                    ),
                    MenuCard(
                      menu: Menu(
                          id: 1,
                          image:
                              'assets/t-mcdonalds-qpc-deluxe-burger_product-header-desktop.jpg',
                          name: 'Quarter Pounder',
                          price: 250,
                          pricePromo: 199,
                          note:
                              'Purchases over 5 additional items, burger promotion 2 KM only apply radius delivery, each purchase gets 1 burger coupon, 10 burger coupons can be exchanged for 1 burger.',
                          isPromo: true),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
