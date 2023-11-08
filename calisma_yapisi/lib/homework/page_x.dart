import 'package:calisma_yapisi/homework/page_y.dart';
import 'package:calisma_yapisi/homework/text_button_widget.dart';
import 'package:flutter/material.dart';


class PageX extends StatefulWidget {
  const PageX({Key? key}) : super(key: key);

  @override
  State<PageX> createState() => _HomePageState();
}

class _HomePageState extends State<PageX> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
          centerTitle: true,backgroundColor: Colors.grey,
          title: const Text("SAYFA X",
            style: TextStyle(color: Colors.white,fontSize: 36),
          ),
          leading: IconButton(onPressed: (){Navigator.pop(context);}, icon: Icon(Icons.arrow_back,color: Colors.white,)),
      ),
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
