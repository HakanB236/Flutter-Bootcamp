
import 'package:bootcamp/nesne_tabanli/araba.dart';

void main(){
   // Nesne oluşturma
  var bmw = Araba(renk: "Mavi", hiz: 100, calisiyorMu: true);
  // required kullanmadan önce bu şekilde yazılıyordu. Araba("Beyaz", 0, false);
  //Değer okuma
// Değer atama
  bmw.bilgiAl(); //  hız 100

  bmw.hiz = 70; // değer değiştirme
  bmw.bilgiAl(); // hız 70
  bmw.durdur();
  bmw.bilgiAl();
  bmw.calistir();
  bmw.bilgiAl();
  bmw.hizlan(50);
  bmw.bilgiAl();
  bmw.yavasla(10);
  bmw.bilgiAl();

  var sahin = Araba(renk: "Beyaz", hiz: 0, calisiyorMu: false);

  sahin.bilgiAl();
  sahin.calistir();
  sahin.bilgiAl();
  sahin.hizlan(70);
  sahin.bilgiAl();
  sahin.yavasla(10);
  sahin.bilgiAl();


}