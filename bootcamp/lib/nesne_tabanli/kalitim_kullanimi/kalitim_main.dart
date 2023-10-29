import 'package:bootcamp/nesne_tabanli/kalitim_kullanimi/ev.dart';
import 'package:bootcamp/nesne_tabanli/kalitim_kullanimi/saray.dart';
import 'package:bootcamp/nesne_tabanli/kalitim_kullanimi/villa.dart';

void main(){
  var topkapiSarayi = Saray(kuleSayisi: 10, pencereSayisi: 200);
  print(topkapiSarayi.kuleSayisi);
  print(topkapiSarayi.pencereSayisi);

  var bogazVilla = Villa(garajVarMi: true, pencereSayisi: 40);
  print(bogazVilla.garajVarMi);
  print(bogazVilla.pencereSayisi);


  //Type Control : elimizdeki nesnenin ne olup olmadığını kontrol edebiliriz.
  if(topkapiSarayi is Saray){ // Java-instanceOf
    print("Saraydır");

  }else{
    print("Saray değildir");

  }

  // Upcasting
  //subClass > superClass
  var saray = Saray(kuleSayisi: 3, pencereSayisi: 80);
  Ev ev = saray;

  // Downcasting
  // superClass > subClass
  var e = Ev(pencereSayisi: 14);
  Saray s = e as Saray;

}