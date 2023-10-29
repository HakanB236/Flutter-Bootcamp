import 'package:bootcamp/nesne_tabanli/a_sinifi.dart';

void main(){
  var a = ASinifi();
  // Standart kullanım
  //print(a.degisken);
  //a.metod();

  // Sanal veya İsimsiz nesne, Virtual or nameless object
  //print(ASinifi().degisken);
  //ASinifi().metod();
  // Static kullanimi = Kotlin(companion object)

  print(ASinifi.degisken);
  ASinifi.metod();  // static olduğu için parantezsiz yazıyoruz. (static hızlı erişim sağlar )

}