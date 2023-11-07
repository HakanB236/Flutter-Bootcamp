import 'package:calisma_yapisi/sonuc_ekrani.dart';
import 'package:flutter/material.dart';
import 'package:calisma_yapisi/kisiler.dart';
class OyunEkrani extends StatefulWidget {
  Kisiler kisi;


  OyunEkrani(this.kisi);

  @override
  State<OyunEkrani> createState() => _OyunEkraniState();
}
// leading - lef - start
// trailing - right - end
class _OyunEkraniState extends State<OyunEkrani> {


  Future<bool> geriDonusTusu(BuildContext context) async {
    // geri dönüşü engeller.
    print("Navigation geri tuşu seçildi");

    return true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Oyun Ekranı"),

        leading: IconButton(onPressed: () {
          print("Appbar geri tuşu seçildi");
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back_ios_new)),
      ),
      body: WillPopScope( // geri dönüşü engelledik
        onWillPop: () => geriDonusTusu(context),
        child: Center(
          child: Column( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [

              Text("${widget.kisi.ad} - ${widget.kisi.yas} - ${widget.kisi.boy} - ${widget.kisi.bekar}"),

              ElevatedButton(onPressed: (){
                // back stack ile 3 sayfa var ve 3. sayfaya gecerken replacment kullanırız. ve 2. sayfa kaybolur. 3. sayfada geri tuşu ile 2. sayfaya dönmek yerine ilk sayfaya dönmüş oluruz.
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const SonucEkrani()));
              }, child: const Text("Bitti")),
            ],
          ),
        ),
      ),

    );
  }
}
