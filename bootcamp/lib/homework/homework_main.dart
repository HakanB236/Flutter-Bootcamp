import 'package:bootcamp/homework/colors.dart';
import 'package:bootcamp/homework/homework.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class FindProductsView extends StatefulWidget {
  const FindProductsView({Key? key}) : super(key: key);

  @override
  State<FindProductsView> createState() => _FindProductsViewState();
}

class _FindProductsViewState extends State<FindProductsView> {
  @override
  Widget build(BuildContext context) {
    var p = AppLocalizations.of(context)!;


    return Scaffold(
      appBar: AppBar(title: Text(p.findProduct,style: TextStyle(fontFamily: 'GilroyBold',fontSize: 20),),centerTitle: true,),
      body: Column(

        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Flexible(flex:1, child: CardModel(green.withAlpha(100), p.fruitsAndVegetables, "assets/images/im_fruit.png")),
              Flexible(flex:1, child: CardModel(orange.withOpacity(0.9), p.cookingOilAndGhee, "assets/images/im_oil.png")),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Flexible(flex:1, child: CardModel(red.withOpacity(0.75), p.meatAndFish, "assets/images/im_meat.png")),
              Flexible(flex:1, child: CardModel(purple.withOpacity(0.75), p.bakeryAndSnacks, "assets/images/im_bakery.png")),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Flexible(flex:1, child: CardModel(yellow.withOpacity(0.75),p.dairyAndEggs , "assets/images/im_eggs.png")),
              Flexible(flex:1, child: CardModel(blue.withOpacity(0.75), p.beveragesTitle, "assets/images/im_drinks.png")),
            ],
          ),


        ],
      ),



    );
  }
}

class CardModel extends StatelessWidget {
  String selection;
  String imagePath;
  Color color;


  CardModel(this.color,this.selection, this.imagePath);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context, (MaterialPageRoute(builder: (context) => HomeWorkView())));
      },
      child: SizedBox(
        width: 200,
        height: 200,
        child: Card(


          shape: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
          color: color,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children:<Widget> [
              Image.asset(imagePath),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(selection,textAlign: TextAlign.center,style: TextStyle(fontFamily: "GilroyBold",fontSize: 16),),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
