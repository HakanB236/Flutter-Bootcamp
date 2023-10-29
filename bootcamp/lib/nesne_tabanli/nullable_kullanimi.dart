
void main(){
  // Nullable - Null Safety - 0ptional(Swift)
  String str = "Merhaba";


  // Tanımlama
  String? mesaj = null; //Swiftte : nil
  mesaj = "Hello";

  // Yöntem 1 : null ise uygulama çökmez, null değilse çalışır.
  print("Yöntem 1 : ${mesaj?.toUpperCase()}");
  // Yöntem 2 :
  //print("Yöntem 2 : ${mesaj!.toUpperCase()}"); // ünlem; null olmadığından eminsek kullanırız.

  // Yöntem 3 :
  if(mesaj != null){
    print("Yöntem 3 : ${mesaj.toUpperCase()}");

  }else{
    print("Mesajınız nulldur");

  }



}