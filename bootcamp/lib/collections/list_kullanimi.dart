void main(){
  // Tanımlama
  var plakalar = [16,23,6];
  var meyveler = <String>[];
  // Veri ekleme
  meyveler.add("Muz");
  meyveler.add("Kiraz");
  meyveler.add("Elma");
  print(meyveler);
  // Güncelleme
  meyveler[1] = "Yeni Kiraz";
  print(meyveler);
  // Insert  ; veri kaybı olmaz. veriler sağa doğru kayar. (yeni kiraz ve sonrası +1 index aldı. )
  meyveler.insert(1, "Portakal");
  print(meyveler);
  // Veri okuma
  String meyve = meyveler[3];
  print("Meyve : $meyve");
  for(var m in meyveler){
    print("Sonuç : $m");
  }
  for(var i=0;i<meyveler.length;i++)
    {print("$i. -> ${meyveler[i]}");}
  print("Boş kontrol : ${meyveler.isEmpty}");  // is empty boş mu
  print("İçeriyor mu :${meyveler.contains("Muz")}"); // Muz var mı kontrolu
  var liste = meyveler.reversed.toList(); // içeriği tam tersi sıraya çeviriyor meyveler değişmez!
  print(liste);
  meyveler.sort(); // alfabetik sıralama
  print(meyveler);
  meyveler.removeAt(1); // indexi siler
  print(meyveler);
  meyveler.clear();
  print(meyveler); // listeyi temizler

}