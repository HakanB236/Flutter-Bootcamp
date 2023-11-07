import 'package:bootcamp/homework/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HomeWorkView extends StatefulWidget {
  const HomeWorkView({Key? key}) : super(key: key);

  @override
  State<HomeWorkView> createState() => _HomeWorkViewState();
}

class _HomeWorkViewState extends State<HomeWorkView> {

  @override
  Widget build(BuildContext context) {
    var p = AppLocalizations.of(context)!;


    return Scaffold(
      appBar: AppBar(title: Text(p.beveragesTitle,style: TextStyle(fontFamily: "GilroyBold",fontSize: 20)),centerTitle: true,),
      backgroundColor: Color(0xFFFFFFFF),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              children: [
                Flexible(flex: 1,child: CardModel("assets/images/im_coke.png", p.productCoke , "355 ml", p.dietCokePrice)),
                Flexible(flex: 1,child: CardModel("assets/images/im_sprite.png",p.productSprite, "325 ml",p.spritePrice)),
              ],
            ),
            Row(
              children: [
                Flexible(flex: 1,child: CardModel("assets/images/im_apple_juice.png", p.productAppleJuice, "2L", p.appleJuicePrice)),
                Flexible(flex: 1,child: CardModel("assets/images/im_orange_juice.png",p.productOrangeJuice, "2L",p.orangeJuicePrice)),
              ],
            ),
            Row(
              children: [
                Flexible(flex: 1,child: CardModel("assets/images/im_coca.png", p.productCocaCola, "325 ml",p.cocaColaPrice)),
                Flexible(flex: 1,child: CardModel("assets/images/im_pepsi.png", p.productPepsi, "330 ml", p.pepsiPrice)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
class CardModel extends StatelessWidget {
  String imagePath;
  String product;
  String size;

  CardModel(this.imagePath, this.product, this.size, this.price);

  String price;

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 240,
      child: Card(
        color: Color(0xFFFFFFFF),
        child:Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,

          children: <Widget> [
            Image.asset(imagePath),
            Column(
              children: [
                Text(product,textAlign: TextAlign.start,style: TextStyle(fontFamily: "GilroyBold",fontSize: 16),),
                Text(size,textAlign: TextAlign.start,style: TextStyle(fontFamily: "GilroyMedium"),),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(right: 8.0,left: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(price,style: TextStyle(fontFamily:"GilroyBold",fontSize: 20),
                  ),
                  IconButton(
                      style: TextButton.styleFrom(backgroundColor: green,shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(12)))),
                      onPressed: (){},
                      icon: Icon(color: Colors.white,Icons.add))
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
