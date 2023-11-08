import 'package:flutter/material.dart';


class PageY extends StatefulWidget {
  const PageY({Key? key}) : super(key: key);

  @override
  State<PageY> createState() => _HomePageState();
}

class _HomePageState extends State<PageY> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      appBar: AppBar(
          backgroundColor: Colors.yellow,
          leading: IconButton(
              onPressed: (){
                Navigator.of(context).popUntil((route) => route.isFirst);

              },
              icon: const Icon(Icons.arrow_back,color: Colors.white,),
          ),
          centerTitle: true,
          title: const Text("SAYFA Y",style: TextStyle(color: Colors.white,fontSize: 36),)),

    );
  }
}
