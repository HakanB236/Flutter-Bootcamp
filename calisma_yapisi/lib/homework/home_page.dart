import 'package:calisma_yapisi/homework/page_a.dart';
import 'package:calisma_yapisi/homework/page_x.dart';
import 'package:calisma_yapisi/homework/text_button_widget.dart';
import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      appBar: AppBar(centerTitle: true,backgroundColor: Colors.blueAccent,title: const Text("ANASAYFA",style: TextStyle(fontSize: 36),)),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextButtonWidget("GİT > A", Colors.deepPurple, Colors.white, () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const PageA()));
            }),
            TextButtonWidget("GİT > X", Colors.deepPurple, Colors.white, () {Navigator.push(context, MaterialPageRoute(builder: (context) => const PageX()));})
          ],
        ),
      ),
    );
  }
}
