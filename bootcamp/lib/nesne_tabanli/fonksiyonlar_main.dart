
import 'package:bootcamp/nesne_tabanli/fonksiyonlar.dart';

void main(){
 var f = Fonksiyonlar();
 f.selamla();
 String gelenSonuc = f.selamla1();
 print("Gelen sonuç: $gelenSonuc");
 f.selamla2("Hakan");
 int gelenToplam = f.toplama(10, 20);
 print("Gelen Toplam : $gelenToplam");
}