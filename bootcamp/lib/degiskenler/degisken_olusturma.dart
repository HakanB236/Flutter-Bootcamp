

void main () {

  
  var ogrenciAdi = "Hakan";
  var ogrenciYas = 23;
  var ogrenciBoyu = 1.78;
  var ogrenciBasHarf = 'H';
  var ogrenciDevamEdiyorMu = true;

  print(ogrenciAdi);
  print(ogrenciYas);
  print(ogrenciBoyu);
  print(ogrenciBasHarf);
  print(ogrenciDevamEdiyorMu);

  int urun_id = 34; // swift \(), kotlin $ , java + 
  String urun_adi = "Kol saati";
  int urun_adet = 100;
  double urun_fiyat = 149.99;
  String urun_tedarikci =  "Rolex";
  print("Ürün id        : $urun_id");
  print("Ürün adı       : $urun_adi");
  print("ürün adet      : $urun_adet");
  print("Ürün fiyatı    : $urun_fiyat");
  print("Ürün tedarikci : $urun_tedarikci");

  int a = 10;
  int b = 20;
  
  print("$a x $b = ${a*b}");

  // Sabitler  ***Mülakatlarda önemli
  // final ve const
  // Javada(final), Swiftte(let) , Kotlin(val)

  int sayi = 60;
  print(sayi);
  sayi = 140;
  print(sayi);
  // sayiya 140 aktarılınca artık 140 değerini tutar. 60 değerini tutmaz.

  final int numara = 70;
  print(numara);
  // hata verir çünkü final sabittir. == numara = 50;
  // hafiza da daha az yer tutabilmek için sabit değerleri sabit tiplerle ifade ederizki daha flexible olarak bulunsun

  const double x = 45.8;
  print(x);

  //Const görsel nesnelerde kullanlır. Tasarımsal yapılarda değişmeyenler için kullanılır
  // final ise primitive tiplerde kullanılır. nesne tabanlı yapılarda kullanılır.
  // final kodlamayı çalıştırdığımızda hafızada oluşur
  // constta ise değişken tanımlanırken hafıza oluşturur.


  //Tür Dönüşümü  - Type Casting ***
  // sayısaldan sayısala dönüşüm
  // sayısaldan metine dönüşüm
  // metinden  sayısala dönüşüm

  // 1 -  Sayısaldan Sayısala Dönüşüm

  int i = 78;
  double d = 43.85;

  int sonuc1 = d.toInt();
  double sonuc2 = i.toDouble();
  print(sonuc1);
  print(sonuc2);


  // 2 - Sayısaldan Metine Dönüşüm

  String sonuc3 = i.toString(); // "78"
  String sonuc4 = d.toString(); // "43.85"

  print(sonuc3);
  print(sonuc4);


  // 3 - Metinden Sayısala Dönüşüm

  String yazi1 = "67";
  String yazi2 = "38.25";
  int sonuc5 = int.parse(yazi1);
  double sonuc6 = double.parse(yazi2);
  print(sonuc5);
  print(sonuc6);

  // ödev

















}