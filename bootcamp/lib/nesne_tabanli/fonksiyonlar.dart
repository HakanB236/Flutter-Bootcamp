// fonksiyonlar 2 ye ayrılır.
// dönüş değeri olan ve geri dönüş değeri olmayan

class Fonksiyonlar {
  // void: geri dönüş değeri olmayan.
  void selamla(){
    String sonuc = "Merhaba Ahmet";
    print(sonuc);
  }
  // return: geri dönüş değeri olan.
  String selamla1(){
    String sonuc = "Merhaba Ahmet";
    return sonuc;
  }
  // parametre: dışarıdan değer alan.
  void selamla2(String isim){
    String sonuc="Merhaba $isim";
    print(sonuc);
  }
  int toplama(int sayi1,int sayi2){
    int toplam = sayi1 + sayi2;
    return toplam;
  }


}