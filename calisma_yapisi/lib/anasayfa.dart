import 'package:calisma_yapisi/kisiler.dart';
import 'package:calisma_yapisi/oyun_ekrani.dart';
import 'package:flutter/material.dart';


class Anasayfa extends StatefulWidget {
  const Anasayfa({Key? key}) : super(key: key);

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  int sayac = 0;
  bool kontrol = false;
  @override
  void initState() {
    super.initState();
    print("initState çalıştı");
  }
  Future<int> toplama(int sayi1 , int sayi2) async {
    int toplam = sayi1 + sayi2;
    return toplam;
  }
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
              var kisi = Kisiler(ad: "Hakan", yas: 22, boy: 1.90, bekar: true);
              Navigator.push(context, MaterialPageRoute(builder: (context) => OyunEkrani(kisi)))
                  .then((value) => (value) {
                    print("Anasayfaya dönüldü");
              });
            }, child: Text("Başla")),
            Visibility(visible: kontrol,child: Text("Merhaba")),// visible ile görünüp görünmeyeceğini ayarladık.
            Text(kontrol ? "Merhaba" : "Güle Güle",style: TextStyle(color: kontrol ? Colors.blue : Colors.red),), // ternary koşul
            ((){ // widget içerisinde kodlama
              if(kontrol){
                return const Text("Merhaba",style: TextStyle(color: Colors.blue),);
              }else{
                return const Text("Güle güle",style: TextStyle(color: Colors.red),);

              }
            }()),

            ElevatedButton(onPressed: (){
              setState(() {
                kontrol = true;
              });

            }, child: Text("Durum 1 (true)")),
            ElevatedButton(onPressed: (){
              setState(() {
                kontrol = false;
              });

            }, child: Text("Durum 2 (false)")),
            FutureBuilder<int>(
              future: toplama(10, 20),
              builder: (context,snapshot){
                if(snapshot.hasError){
                  return const Text("Hata oluştu");
                }
                if(snapshot.hasData){
                  return Text("Sonuç : ${snapshot.data}");
                }else{
                  return const Text("Sonuç yok");
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
