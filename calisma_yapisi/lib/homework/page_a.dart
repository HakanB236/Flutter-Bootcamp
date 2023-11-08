import 'package:calisma_yapisi/homework/page_b.dart';
import 'package:calisma_yapisi/homework/text_button_widget.dart';
import 'package:flutter/material.dart';


class PageA extends StatefulWidget {
  const PageA({Key? key}) : super(key: key);

  @override
  State<PageA> createState() => _HomePageState();
}

class _HomePageState extends State<PageA> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange,
      appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.deepOrange,
          title: const Text("SAYFA A",style: TextStyle(fontSize: 36),)),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButtonWidget("GİT > B", Colors.deepPurple, Colors.white, () {Navigator.push(context, MaterialPageRoute(builder: (context) => const PageB()));})
          ],
        ),
      ),
    );
  }
}
