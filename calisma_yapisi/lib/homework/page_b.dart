import 'package:calisma_yapisi/homework/page_y.dart';
import 'package:calisma_yapisi/homework/text_button_widget.dart';
import 'package:flutter/material.dart';


class PageB extends StatefulWidget {
  const PageB({Key? key}) : super(key: key);

  @override
  State<PageB> createState() => _HomePageState();
}

class _HomePageState extends State<PageB> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
          leading: IconButton(onPressed: (){Navigator.pop(context);}, icon: const Icon(Icons.arrow_back,color: Colors.white,)),
          backgroundColor: Colors.black,
          centerTitle: true,
          title: const Text("SAYFA B",style: TextStyle(color: Colors.white,fontSize: 36),)),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButtonWidget("GİT > Y", Colors.deepPurple, Colors.white, () {Navigator.push(context, MaterialPageRoute(builder: (context) => const PageY()));})
          ],
        ),
      ),
    );
  }
}
