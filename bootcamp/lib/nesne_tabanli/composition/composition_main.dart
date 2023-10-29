import 'package:bootcamp/nesne_tabanli/composition/filmler.dart';
import 'package:bootcamp/nesne_tabanli/composition/kategoriler.dart';
import 'package:bootcamp/nesne_tabanli/composition/yonetmenler.dart';

void main(){

  var k1 = Kategoriler(kategori_id: 1, kategori_ad: "Dram");
  var k2 = Kategoriler(kategori_id: 2, kategori_ad: "Bilim Kurgu");
  
  var y1 = Yonetmenler(yonetmen_id: 1, yonetmen_ad: "Quentin Tarantino");
  var y2 = Yonetmenler(yonetmen_id: 2, yonetmen_ad: "Cristopher Nolan");
  
  var f1 = Filmler(film_id: 1, film_ad: "Django", film_yil: 2013, kategori: k1, yonetmen: y1); // Composition !! kategori ve yonetmen
  print("Film id       : ${f1.film_id}");
  print("Film ad       : ${f1.film_ad}");
  print("Film yıl      : ${f1.film_yil}");
  print("Film kategori : ${f1.kategori.kategori_ad}");
  print("Film yönetmen : ${f1.yonetmen.yonetmen_ad}");

}