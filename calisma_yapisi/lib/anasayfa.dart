import 'package:calisma_yapisi/oyun_ekrani.dart';
import 'package:flutter/material.dart';


class Anasayfa extends StatefulWidget {
  const Anasayfa({Key? key}) : super(key: key);

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  int sayac = 0;
  @override
  Widget build(BuildContext context) {
  //  print("build çalıştı"); setstate ile tüm arayüzün güncellendiğini buradan anlayabiliriz.
    return Scaffold(
      appBar: AppBar(title: Text("Anasayfa"),),
      body: Center(
        child: Column( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("Sonuç : $sayac "),
            ElevatedButton(onPressed: (){
              setState(() { // arayüzü güncelle demek. set state bütün arayüzü günceller
                sayac++;
              });
            }, child: Text("Tıkla")),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => OyunEkrani()));
            }, child: Text("Başla")),
          ],
        ),
      ),

    );
  }
}
