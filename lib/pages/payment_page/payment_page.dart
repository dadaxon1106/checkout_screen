import 'package:checkout_screen_ui/pages/rewiew_page/rewiew_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class PaymnetPage extends StatelessWidget {
  const PaymnetPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: Colors.white,
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back, size: 30),
        ),
        title: const Text(
          "Checkout",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w400,
          ),
        ),
        actions: [
          Stack(
            alignment: Alignment.topRight,
            children: [
              SvgPicture.asset("assets/icons/shop_basket.svg"),
              Container(
                height: 10,
                width: 10,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle, color: Color(0xFFFD6867)),
              )
            ],
          ),
          const SizedBox(
            width: 22,
          ),
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 36),
            child: Column(
              children: [
                Center(
                  child: Column(
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // SvgPicture.asset(
                          //   "assets/icons/alli_icons.svg",
                          //   // width: 278,
                          //   // height: 40,
                          // ),
                          const Column(
                            children: [
                              Icon(
                                CupertinoIcons.cube_box,
                                size: 40,
                                color: Colors.black,
                              ),
                              Text(
                                "Shipping",
                              ),
                            ],
                          ),
                          Container(
                            height: 1,
                            width: 48,
                            color: Colors.black,
                          ),
                          const Column(
                            children: [
                              Icon(
                                Icons.payment_rounded,
                                color: Color(0xFF6F7384),
                                // color: Colors.black,
                                size: 40,
                              ),
                              Text(
                                "Payment",
                                style: TextStyle(
                                  color: Color(0xFF6F7384),
                                ),
                              ),
                            ],
                          ),
                          Container(
                            height: 1,
                            width: 48,
                            color: Colors.black,
                          ),
                          const Column(
                            children: [
                              Image(
                                color: Color(0xFF6F7384),
                                image:
                                    AssetImage("assets/images/icon_task.png"),
                                height: 40,
                                width: 50,
                              ),
                              Text(
                                "Rewiew",
                                style: TextStyle(
                                  color: Color(0xFF6F7384),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        "Select Payment Method",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(18),
                                color: const Color(0xFFF4FDFA),
                                boxShadow: const [
                                  BoxShadow(
                                    offset: Offset(1, 2),
                                    blurRadius: 1,
                                    spreadRadius: 1,
                                    color: Color.fromRGBO(0, 0, 0, 0.25),
                                  )
                                ],
                              ),
                              child: Image.asset(
                                  "assets/images/mastercard_logo2.png"),
                            ),
                            const SizedBox(
                              width: 12,
                            ),
                            Text(
                              "Credit Card",
                              style: GoogleFonts.poppins(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                fontStyle: FontStyle.italic,
                                color: Colors.black,
                              ),
                            )
                          ],
                        ),
                        Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Colors.black,
                              width: 2,
                            ),
                          ),
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Container(
                                height: 20,
                                width: 20,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(40),
                                    color: Colors.black),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(18),
                                color: const Color(0xFFF4FDFA),
                                boxShadow: const [
                                  BoxShadow(
                                    offset: Offset(1, 2),
                                    blurRadius: 1,
                                    spreadRadius: 1,
                                    color: Color.fromRGBO(0, 0, 0, 0.25),
                                  ),
                                ],
                              ),
                              child: Image.asset("assets/images/logo.png"),
                            ),
                            const SizedBox(
                              width: 12,
                            ),
                            Text(
                              "PayPal",
                              style: GoogleFonts.poppins(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                fontStyle: FontStyle.italic,
                                color: Colors.black,
                              ),
                            )
                          ],
                        ),
                        Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Colors.grey,
                              width: 2,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(8),
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(18),
                                color: const Color(0xFFF4FDFA),
                                boxShadow: const [
                                  BoxShadow(
                                    offset: Offset(1, 2),
                                    blurRadius: 1,
                                    spreadRadius: 1,
                                    color: Color.fromRGBO(0, 0, 0, 0.25),
                                  )
                                ],
                              ),
                              child: Image.asset("assets/images/google.png"),
                            ),
                            const SizedBox(
                              width: 12,
                            ),
                            Text(
                              "Google Pay",
                              style: GoogleFonts.poppins(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                fontStyle: FontStyle.italic,
                                color: Colors.black,
                              ),
                            )
                          ],
                        ),
                        Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Colors.grey,
                              width: 2,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Form(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "    Card Holder Name",
                        style: GoogleFonts.plusJakartaSans(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 0.7,
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      TextFormField(
                        // maxLines: 2,
                        // minLines: 2,

                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.all(16),
                          filled: true,
                          fillColor: const Color(0xFFF5F4F4),
                          border: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Colors.grey,
                            ),
                            borderRadius: BorderRadius.circular(16),
                          ),
                          enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xFFE7E3E3),
                            ),
                            borderRadius: BorderRadius.all(
                              Radius.circular(15),
                            ),
                          ),
                          hintText: "Enter card holder name",
                          hintStyle: GoogleFonts.plusJakartaSans(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        "    Card Number",
                        style: GoogleFonts.plusJakartaSans(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 0.7,
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      TextFormField(
                        // maxLines: 2,
                        // minLines: 2,

                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.all(16),
                          filled: true,
                          fillColor: const Color(0xFFF5F4F4),
                          border: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Colors.grey,
                            ),
                            borderRadius: BorderRadius.circular(16),
                          ),
                          enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xFFE7E3E3),
                            ),
                            borderRadius: BorderRadius.all(
                              Radius.circular(15),
                            ),
                          ),
                          hintText: "4111 1111 1111 111",
                          hintStyle: GoogleFonts.plusJakartaSans(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        const SizedBox(
                          width: 16,
                        ),
                        Text(
                          "Expiry Date",
                          style: GoogleFonts.plusJakartaSans(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const Spacer(),
                        Text(
                          "CVV",
                          style: GoogleFonts.plusJakartaSans(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(
                          width: 30,
                        )
                      ],
                    ),
                    const SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          alignment: Alignment.center,
                          height: 50,
                          width: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: const Color(0xFFF5F4F4),
                          ),
                          child: Text(
                            "MM/YY",
                            style: GoogleFonts.plusJakartaSans(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: const Color(0xFFC0C0C0),
                            ),
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          height: 50,
                          width: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: const Color(0xFFF5F4F4),
                          ),
                          child: Text(
                            "123",
                            style: GoogleFonts.plusJakartaSans(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: const Color(0xFFC0C0C0),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      CupertinoPageRoute(
                        builder: (context) {
                          return const RewiewPage();
                        },
                      ),
                    );
                  },
                  child: Container(
                    alignment: Alignment.center,
                    height: 50,
                    width: 270,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        color: Colors.black,
                        boxShadow: const [
                          BoxShadow(
                            offset: Offset(2, 2),
                            spreadRadius: 5,
                            blurRadius: 5,
                            color: Color.fromRGBO(0, 0, 0, 0.25),
                          )
                        ]),
                    child: const Text(
                      "Confirm",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
