class Yonetmenler {
  int yonetmen_id;
  String yonetmen_ad;

  Yonetmenler({required this.yonetmen_id,required this.yonetmen_ad});
}

/// KALITIM bir sınıfın tek kalıtım olabilir.
/// class Arac{}
/// class Araba extends Arac{} araç arabaya aktarım yapar. araba subclass arac superClass