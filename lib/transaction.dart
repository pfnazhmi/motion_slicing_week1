import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class TransactionPage extends StatelessWidget {
  const TransactionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: SafeArea(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(
                        Icons.chevron_left_outlined,
                        size: 34,
                      ),
                    ),
                    SizedBox(
                      width: 80,
                      height: 80,
                      child: Center(
                        child: Image.asset(
                          "assets/images/logo.png",
                          width: 58,
                          height: 58,
                        ),
                      ),
                    ),
                    SvgPicture.asset(
                      "assets/svg/icon_share.svg",
                      height: 38,
                      width: 24,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 32,
                ),
                transaksiSuccessCard(context),
                const SizedBox(
                  height: 36,
                ),
                detailPesananCard(context),
                const SizedBox(
                  height: 24,
                ),
                GestureDetector(
                  onTap: () {},
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
                        "Download E - Ticket",
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

  Container detailPesananCard(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
        border: Border.all(color: Colors.grey[300]!),
      ),
      padding: const EdgeInsets.all(23),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Detail Pesanan",
            style: GoogleFonts.poppins(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: const Color(0xFFF5000000),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          transaksiItem(context, "Jenis Pesanan", "2x Frappucino - Monte"),
          const SizedBox(
            height: 12,
          ),
          transaksiItem(context, "Nama Pemesan", "Asep Knalpot"),
          const SizedBox(
            height: 12,
          ),
          transaksiItem(context, "Total Pesanan", "Rp. 58,000"),
        ],
      ),
    );
  }

  Container transaksiSuccessCard(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
        border: Border.all(color: Colors.grey[300]!),
      ),
      padding: const EdgeInsets.all(23),
      child: Column(
        children: [
          SvgPicture.asset(
            "assets/svg/icon_success.svg",
            width: 64,
            height: 64,
          ),
          const SizedBox(
            height: 16,
          ),
          Center(
            child: Column(
              children: [
                Text(
                  "Transaksi Berhasil",
                  style: GoogleFonts.poppins(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  "Rp. 58,000",
                  style: GoogleFonts.poppins(
                    fontSize: 27,
                    fontWeight: FontWeight.w400,
                    color: const Color(0xFFF5000000),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Divider(color: Colors.black.withOpacity(0.7)),
          transaksiItem(context, "Invoice Number", "000085752257"),
          const SizedBox(
            height: 12,
          ),
          transaksiItem(context, "Tanggal Transaski", "16 Juni 2023"),
          const SizedBox(
            height: 12,
          ),
          transaksiItem(context, "Jenis Pembayaran", "QRIS"),
        ],
      ),
    );
  }

  Row transaksiItem(BuildContext context, String title, String data) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: GoogleFonts.poppins(
              fontSize: 12,
              fontWeight: FontWeight.w500,
              color: const Color(0xFF8A000000)),
        ),
        Text(
          data,
          style: GoogleFonts.poppins(
            fontSize: 12,
            fontWeight: FontWeight.w700,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}
