
import 'package:bootcamp/nesne_tabanli/odev2.dart';

void main(){
  var o2= Odev2();

  // Soru 1
  double sonuc = o2.soru1(5.0);
  print("Mil : $sonuc");
  // Soru 2
  o2.soru2(5, 10);
  // Soru 3
  int sonuc2 = o2.soru3(12);
  print("Sonuç : $sonuc2");
  // Soru 4
  o2.soru4("Ebebek");
  // Soru 5
  o2.soru5(4);
  // Soru 6
  int maas = o2.soru6(19);
  print("Maaş : $maas");
  // Soru 7
  int otoparkucreti = o2.soru7(5);
  print("Otopark Ücreti : $otoparkucreti");

}