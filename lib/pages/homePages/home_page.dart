import 'package:arduino_brush/pages/homePages/page1.dart';
import 'package:arduino_brush/pages/homePages/page2.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int paginaAtual = 0;
  late PageController pc;

  @override
  void initState() {
    super.initState();
    pc = PageController(initialPage: paginaAtual);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView(
      controller: pc,
      children: const [
        Pagechart(),
        Pagedois(),
      ],
    ));
  }
}
