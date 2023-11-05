import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tasarim_calismasi/renkler.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class Anasayfa extends StatefulWidget {
  const Anasayfa({Key? key}) : super(key: key);

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  @override
  Widget build(BuildContext context) {
    var d = AppLocalizations.of(context)!;
    var ekranBilgisi = MediaQuery.of(context);
    final double ekranYuksekligi = ekranBilgisi.size.height;
    final double ekranGenisligi = ekranBilgisi.size.width;
    print("ekran yuksekligi : $ekranYuksekligi");
    print("ekran genisligi : $ekranGenisligi");  // font sizelerde genislik kullanalım
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
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,

        children: [
          Text(d.pizzaBaslik,style: TextStyle(color: anaRenk,fontSize: ekranGenisligi/12,fontWeight: FontWeight.bold),),
          Image.asset("assets/image/pizza.png"),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Chips(d.peynirYazi),
              Chips(d.sucukYazi),
              Chips(d.zeytinYazi),
              Chips(d.biberYazi),

            ],
          ),
          Column(
            children: [
              Text(d.teslimatSure,style: TextStyle(color: yaziRenk2,fontWeight: FontWeight.bold,fontSize: 22),),
              Text(d.teslimatBaslik,style: TextStyle(color: anaRenk,fontWeight: FontWeight.bold,fontSize: 22),),
              Padding(
                padding: EdgeInsets.only(left: ekranGenisligi/20,right: ekranGenisligi/20),
                child: Text(d.pizzaAciklama,
                  style: TextStyle(color: yaziRenk2,fontSize: 22),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                d.fiyatYazi,
                style: TextStyle(
                    fontSize: 44,color: anaRenk,
                    fontWeight: FontWeight.bold),
              ),
              //Spacer(), text ve sizedbox arasında boşluk oluşturur
              SizedBox(
                width: 200,
                height: 50,// görsel nesneleri tekrar boyutlandırmak için kullanıyoruz.
                child: TextButton(
                    onPressed: (){},
                    child: Text(
                      d.butonYazi,
                      style: TextStyle(color: yaziRenk,fontSize: 18),),
                  style: TextButton.styleFrom(
                    backgroundColor: anaRenk,
                    shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5))),
                  ),
                ),
              ),

            ],
          ),

        ],
      ),
    );
  }
}
class Chips extends StatelessWidget {
 String icerik;
 Chips(this.icerik);
  @override
  Widget build(BuildContext context) {
    return TextButton(onPressed: (){},
      child: Text(icerik,style: TextStyle(color: Colors.white),),
      style: TextButton.styleFrom(backgroundColor: anaRenk),
    );
  }
}

