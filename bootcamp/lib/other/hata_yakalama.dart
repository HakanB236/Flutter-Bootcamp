void main(){
  //1.compile error
  //syntax hatalarıdır.
 // int x = 10    // ; yok. compile error
  //2.runtime error (Exception)
  // run tuşuna bastığımızda uygulama çöker.
  var liste =<String>[];

  liste.add("Ali");
  liste.add("Ece");

//  String isim = liste[2]; // 2. indexte nesne yok . runtime error
//  print("Gelen isim: $isim");
  // try catch
 try{
   String isim = liste[2];
   print("Gelen isim : $isim");
 }catch(e){
   print("Listenin boyutunu aştınız");
 }

}