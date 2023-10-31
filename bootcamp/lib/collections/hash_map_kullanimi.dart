import 'dart:collection';

void main(){
  // Tanımlama
  var sayilar = {"Bir":1,"İki":2};
  var iller = HashMap<int,String>();
  // Değer ataması
  iller[16] = "Bursa";
  iller[34] = "İstanbul";
  print(iller);
  // güncelleme
  iller[16] = "Yeni Bursa";
  print(iller);

  // Veri okuma
  String? il = iller[34];
  if(il != null){
    print("İl : $il");

  }

  print("Boyut : ${iller.length}");
  print("Boş kontrol : ${iller.isEmpty}");
  print("İçeriyor mu : ${iller.containsValue("İstanbul")}");
  var anahtarlar = iller.keys;

  for(var keys in anahtarlar){
    print("$keys -> ${iller[keys]}");
  }
  iller.remove(16);
  print(iller);
  iller.clear();
  print(iller);
}