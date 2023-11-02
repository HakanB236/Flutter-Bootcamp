import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tasarim_calismasi/renkler.dart';

class Anasayfa extends StatefulWidget {
  const Anasayfa({Key? key}) : super(key: key);

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: anaRenk ,
          centerTitle: true,
          title: const Text("Pizza",
            style: TextStyle(
              color: Colors.white,
              fontFamily: "Pacifico",
            ),
          )
      ),
      body:  Column(

        children: [
          Text("Beef Cheese",style: TextStyle(color: anaRenk,fontSize: 36,fontWeight: FontWeight.bold),),
          Image.asset("assets/image/pizza.png"),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextButton(onPressed: (){},
                  child: Text("Cheese",style: TextStyle(color: Colors.white),),
                style: TextButton.styleFrom(backgroundColor: anaRenk),
              ),
              TextButton(onPressed: (){},
                child: Text("Sousage",style: TextStyle(color: Colors.white),),
                style: TextButton.styleFrom(backgroundColor: anaRenk),
              ),
              TextButton(onPressed: (){},
                child: Text("Olive",style: TextStyle(color: Colors.white),),
                style: TextButton.styleFrom(backgroundColor: anaRenk),
              ),
              TextButton(onPressed: (){},
                child: Text("Papper",style: TextStyle(color: Colors.white),),
                style: TextButton.styleFrom(backgroundColor: anaRenk),
              ),

            ],
          ),
          Column(
            children: [
              Text("20 min",style: TextStyle(color: yaziRenk2,fontWeight: FontWeight.bold,fontSize: 22),),
              Text("Delivery",style: TextStyle(color: anaRenk,fontWeight: FontWeight.bold,fontSize: 22),),
              Padding(
                padding: const EdgeInsets.only(left: 16.0,right: 16.0),
                child: Text("Meat lover, get ready to meet your pizza !",
                  style: TextStyle(color: yaziRenk2,fontSize: 22),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
          Row(),

        ],
      ),
    );
  }
}
