import 'package:checkout_screen_ui/pages/payment_page/payment_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ShippingPage extends StatefulWidget {
  const ShippingPage({super.key});

  @override
  State<ShippingPage> createState() => _ShippingPageState();
}

class _ShippingPageState extends State<ShippingPage> {
  int _value = 1;
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
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 34, vertical: 16),
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
                        "Enter Shipping Details",
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
                  height: 20,
                ),
                Form(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "   Full Name*",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      TextFormField(
                        maxLines: 1,
                        // minLines: 2,

                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.all(12),
                          filled: true,
                          fillColor: const Color(0xFFE7E3E3),
                          border: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Colors.grey,
                            ),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xFFE7E3E3),
                            ),
                            borderRadius: BorderRadius.all(
                              Radius.circular(12),
                            ),
                          ),
                          hintText: "Enter Full Name",
                          hintStyle: const TextStyle(
                            color: Color(0xFFC0C0C0),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      const Text(
                        "   Phone Number*",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      TextFormField(
                        maxLines: 1,
                        // minLines: 2,

                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.all(12),
                          filled: true,
                          fillColor: const Color(0xFFE7E3E3),
                          border: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Colors.grey,
                            ),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xFFE7E3E3),
                            ),
                            borderRadius: BorderRadius.all(
                              Radius.circular(12),
                            ),
                          ),
                          hintText: "+92 |",
                          hintStyle: const TextStyle(
                            color: Color(0xFFC0C0C0),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      Container(
                          padding: const EdgeInsets.all(10),
                          width: 350,
                          height: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: const Color(0xFFE7E3E3)),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Select Province",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Icon(
                                Icons.keyboard_arrow_down_sharp,
                                size: 30,
                              )
                            ],
                          )
                          // DropdownButton(
                          //   alignment: Alignment.bottomCenter,
                          //   value: _value,
                          //   // ignore: prefer_const_literals_to_create_immutables
                          //   items: [
                          //     const DropdownMenuItem(
                          //       value: 1,
                          //       child: Text("Andijon"),
                          //     ),
                          //     const DropdownMenuItem(
                          //       value: 2,
                          //       child: Text("Toshkent"),
                          //     ),
                          //     const DropdownMenuItem(
                          //       value: 3,
                          //       child: Text("Buxoro"),
                          //     ),
                          //     const DropdownMenuItem(
                          //       value: 4,
                          //       child: Text("Navoiy"),
                          //     ),
                          //   ],
                          //   onChanged: (value) {
                          //     _value = value!;
                          //   },
                          //   padding: EdgeInsets.all(10),
                          // ),
                          ),
                      const SizedBox(
                        height: 25,
                      ),
                      Container(
                          padding: const EdgeInsets.all(10),
                          width: 350,
                          height: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: const Color(0xFFE7E3E3)),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Select City",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Icon(
                                Icons.keyboard_arrow_down_sharp,
                                size: 30,
                              )
                            ],
                          )
                          // DropdownButton(
                          //   alignment: Alignment.bottomCenter,
                          //   value: _value,
                          //   // ignore: prefer_const_literals_to_create_immutables
                          //   items: [
                          //     const DropdownMenuItem(
                          //       value: 1,
                          //       child: Text("Andijon"),
                          //     ),
                          //     const DropdownMenuItem(
                          //       value: 2,
                          //       child: Text("Toshkent"),
                          //     ),
                          //     const DropdownMenuItem(
                          //       value: 3,
                          //       child: Text("Buxoro"),
                          //     ),
                          //     const DropdownMenuItem(
                          //       value: 4,
                          //       child: Text("Navoiy"),
                          //     ),
                          //   ],
                          //   onChanged: (value) {
                          //     _value = value!;
                          //   },
                          //   padding: EdgeInsets.all(10),
                          // ),
                          ),
                      const SizedBox(
                        height: 25,
                      ),
                      const Text(
                        "   Street Address*",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      TextFormField(
                        maxLines: 1,
                        // minLines: 2,

                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.all(12),
                          filled: true,
                          fillColor: const Color(0xFFE7E3E3),
                          border: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Colors.grey,
                            ),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xFFE7E3E3),
                            ),
                            borderRadius: BorderRadius.all(
                              Radius.circular(12),
                            ),
                          ),
                          hintText: "Enter street address",
                          hintStyle: const TextStyle(
                            color: Color(0xFFC0C0C0),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      const Text(
                        "   Postal Code*",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      TextFormField(
                        maxLines: 1,
                        // minLines: 2,

                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.all(12),
                          filled: true,
                          fillColor: const Color(0xFFE7E3E3),
                          border: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Colors.grey,
                            ),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xFFE7E3E3),
                            ),
                            borderRadius: BorderRadius.all(
                              Radius.circular(12),
                            ),
                          ),
                          hintText: "Enter postal code",
                          hintStyle: const TextStyle(
                            color: Color(0xFFC0C0C0),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 18,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      CupertinoPageRoute(
                        builder: (context) {
                          return const PaymnetPage();
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
