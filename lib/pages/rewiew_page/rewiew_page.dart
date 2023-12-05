import 'package:checkout_screen_ui/pages/last_page/last_page.dart';
import 'package:checkout_screen_ui/pages/payment_page/payment_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class RewiewPage extends StatefulWidget {
  const RewiewPage({super.key});

  @override
  State<RewiewPage> createState() => _RewiewPageState();
}

class _RewiewPageState extends State<RewiewPage> {
  int _count = 0;
  int totalSum = 0;
  int _allSum = 100;
  int _count2 = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: Colors.white,
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            Center(
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                            size: 30,
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
                            // color: Color(0xFF6F7384),
                            color: Colors.black,
                            size: 30,
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
                            image: AssetImage("assets/images/icon_task.png"),
                            height: 30,
                            width: 40,
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
                ],
              ),
            ),
            const SizedBox(
              height: 48,
            ),
            Container(
              padding: const EdgeInsets.all(10),
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color(0xFFFAFAFA),
                boxShadow: const [
                  BoxShadow(
                    offset: Offset(3, 3),
                    spreadRadius: 2,
                    blurRadius: 2,
                    color: Color.fromRGBO(0, 0, 0, 0.25),
                  ),
                ],
              ),
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset("assets/images/image_one.png"),
                  ),
                  const SizedBox(
                    width: 22,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 4,
                      ),
                      Text(
                        "Modern Chair",
                        style: GoogleFonts.poppins(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          color: const Color(0xFF1E1F2E),
                        ),
                      ),
                      Text(
                        "Limited Stock",
                        style: GoogleFonts.poppins(
                          fontSize: 15,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w300,
                          color: const Color(0xFF1E1F2E),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            r"$100",
                            style: GoogleFonts.poppins(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const SizedBox(width: 14),
                          InkWell(
                            onTap: () {
                              setState(() {
                                _count--;
                              });
                            },
                            child: const Icon(
                              Icons.remove,
                              size: 30,
                              color: Color(0xFF7C7878),
                            ),
                          ),
                          const SizedBox(
                            width: 4,
                          ),
                          Text(
                            "$_count",
                            style: GoogleFonts.poppins(
                              fontSize: 20,
                            ),
                          ),
                          const SizedBox(
                            width: 4,
                          ),
                          InkWell(
                            onTap: () {
                              setState(
                                () {
                                  _count++;
                                },
                              );
                            },
                            child: const Icon(
                              Icons.add,
                              size: 30,
                              color: Color(0xFF7C7878),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              padding: const EdgeInsets.all(10),
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color(0xFFFAFAFA),
                boxShadow: const [
                  BoxShadow(
                    offset: Offset(3, 3),
                    spreadRadius: 2,
                    blurRadius: 2,
                    color: Color.fromRGBO(0, 0, 0, 0.25),
                  ),
                ],
              ),
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset("assets/images/image_second.png"),
                  ),
                  const SizedBox(
                    width: 22,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 4,
                      ),
                      Text(
                        "Vintage Chair",
                        style: GoogleFonts.poppins(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          color: const Color(0xFF1E1F2E),
                        ),
                      ),
                      Text(
                        "Limited Stock",
                        style: GoogleFonts.poppins(
                          fontSize: 15,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w300,
                          color: const Color(0xFF1E1F2E),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            r"$100",
                            style: GoogleFonts.poppins(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const SizedBox(width: 14),
                          InkWell(
                            onTap: () {
                              setState(() {
                                _count2--;
                              });
                            },
                            child: const Icon(
                              Icons.remove,
                              size: 30,
                              color: Color(0xFF7C7878),
                            ),
                          ),
                          const SizedBox(
                            width: 4,
                          ),
                          Text(
                            "$_count2",
                            style: GoogleFonts.poppins(
                              fontSize: 20,
                            ),
                          ),
                          const SizedBox(
                            width: 4,
                          ),
                          InkWell(
                            onTap: () {
                              setState(
                                () {
                                  _count2++;
                                },
                              );
                            },
                            child: const Icon(
                              Icons.add,
                              size: 30,
                              color: Color(0xFF7C7878),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
            // const Spacer(),
            const SizedBox(height: 80),
            GestureDetector(
              onTap: () {
                showModalBottomSheet(
                  backgroundColor: Colors.white,
                  context: context,
                  builder: (context) {
                    return Container(
                      height: 350,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40),
                        ),
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(1, -2),
                            blurRadius: 4,
                            spreadRadius: 4,
                            color: Color.fromRGBO(0, 0, 0, 0.25),
                          ),
                        ],
                        color: Color(0xFFFFFFFF),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 32,
                          vertical: 60,
                        ),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Total",
                                  style: GoogleFonts.poppins(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Text(
                                  "${(_count) * _allSum}.00",
                                  style: GoogleFonts.poppins(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 12),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Shipping Fee",
                                  style: GoogleFonts.poppins(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Text(
                                  r"$10.00",
                                  style: GoogleFonts.poppins(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ],
                            ),
                            const Spacer(),
                            const Divider(
                              color: Colors.black,
                              endIndent: 32,
                              indent: 32,
                            ),
                            const SizedBox(
                              height: 16,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Subtotal",
                                  style: GoogleFonts.poppins(
                                    fontSize: 24,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Text(
                                  "${(_count2 + _count) * _allSum}.00",
                                  style: GoogleFonts.poppins(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 16,
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  CupertinoPageRoute(
                                    builder: (context) {
                                      return const LastPage();
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
                                  ],
                                ),
                                child: const Text(
                                  "Confirm Order",
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
                    );
                  },
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
                  ],
                ),
                child: const Text(
                  "Order",
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
    );
  }
}
