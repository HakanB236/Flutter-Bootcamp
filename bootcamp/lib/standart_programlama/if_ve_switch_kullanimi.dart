void main(){
  int yas = 17;
  String isim = "Mehmet";

  if(yas >= 19)
    {
      print("Reşitsiniz");
    }else{
    print("Reşit değilsiniz!");
  }
  if(isim == "Ahmet"){
    print("Merhaba Ahmet");
  }else if(isim == "Mehmet"){
    print("Merhaba Mehmet");
  }else{
    print("Tanınmayan kişi");
  }

  String ka = "admin";
  int s = 123456;

  if(ka == "admin" && s == 123456 ){
    print("Hoşgeldiniz!");
  }else{
    print("Hatalı giriş");
  }

  int sayi = 9;
  if(sayi == 9 || sayi == 10){
    print("Sayı 9 veya 10'dur.");
  }else{
    print("Sayı 9 veya 10 değildir.");
  }


  // Kotlin de (when olarak geçer)
  int gun = 4;
  switch(gun){
    case 1: print("Pazartesi");
    break;
    case 2: print("Salı");
    break;
    case 3: print("Çarşamba");
    break;
    case 4: print("Perşembe");
    break;
    case 5: print("Cuma");
    break;
    case 6: print("Cumartesi");
    break;
    case 7: print("Pazartesi");
    break;
    default: print("Böyle bir gün yok");


  }

}