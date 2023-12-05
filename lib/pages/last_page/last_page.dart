import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LastPage extends StatelessWidget {
  const LastPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Center(
            child: Image.asset(
              "assets/images/succes_image.png",
              height: 300,
            ),
          ),
          Column(
            children: [
              Text(
                "Your order has been\n placed succesfully",
                style: GoogleFonts.plusJakartaSans(
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Text(
                "Thank you for choosing us! Feel free to continue shopping and explore our wide range of products. Happy Shopping!",
                style: GoogleFonts.plusJakartaSans(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: const Color(0xFF6F7384)
                    // letterSpacing: 0.07,
                    ),
                textAlign: TextAlign.center,
              )
            ],
          ),
          GestureDetector(
            onTap: () {
              debugPrint("TAP TAP TAP");
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
                "Continue Shopping",
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
    );
  }
}
