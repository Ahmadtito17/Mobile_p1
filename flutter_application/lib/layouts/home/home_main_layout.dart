import 'package:flutter/material.dart';
import 'package:flutter_application/components/news_card.dart';
import 'package:google_fonts/google_fonts.dart';


class HomeMainLayout extends StatelessWidget {
  const HomeMainLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.network(
            'https://tse2.mm.bing.net/th?id=OIP.bLk4cWeIHDAlC4BdYfmHHAHaEI&pid=Api&P=0&h=180',
            fit: BoxFit.cover,
          ),
          const SizedBox(height: 8),
           Text(
            'Messi Mendekat Ke Inter Miami',
            style: GoogleFonts.tauri(fontSize: 21),
          ),
          const SizedBox(height: 8),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(8),
            decoration: const BoxDecoration(color: Color.fromARGB(255, 179, 65, 199)),
            child: const Text("Transfer"),
          ),
          const SizedBox(height: 8),
          Column(
            children: List.generate(10, (index) =>  const NewsCard(title: "Hot News",)),
          ),
        ],
      ),
    );
  }
}
