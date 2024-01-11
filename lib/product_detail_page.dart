import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pahalafawwaz_motion_intern_week1/transaction.dart';

class ProductDetailPage extends StatelessWidget {
  const ProductDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Icon(
                      Icons.chevron_left_outlined,
                      size: 40,
                    ),
                    Expanded(
                      child: SizedBox(
                        height: 80,
                        width: 80,
                        child: Image.asset("assets/images/logo.png"),
                      ),
                    ),
                    SvgPicture.asset(
                      "assets/svg/love.svg",
                      height: 40,
                      width: 40,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                Image.asset("assets/images/menu1.png"),
                const SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Chocolate\nFrappuccino",
                        style: GoogleFonts.poppins(
                            fontSize: 22,
                            fontWeight: FontWeight.w500,
                            color: Colors.black),
                      ),
                    ),
                    Text(
                      "\$20.0",
                      style: GoogleFonts.poppins(
                          fontSize: 40,
                          fontWeight: FontWeight.w400,
                          color: const Color(0xFF00623B)),
                    )
                  ],
                ),
                const SizedBox(
                  height: 21,
                ),
                Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam at mi vitae augue feugiat scelerisque in a eros.",
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: const Color(
                      0xFF6D6D6D,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 14,
                ),
                Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam at mi vitae augue feugiat scelerisque in a eros.",
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: const Color(
                      0xFF6D6D6D,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 21,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => TransactionPage()),
                    );
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color(0xFF00623B),
                      borderRadius: BorderRadius.circular(27),
                    ),
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    width: double.infinity,
                    height: 55,
                    child: Center(
                      child: Text(
                        "Add To Bag",
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500,
                          fontSize: 22,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 12,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
