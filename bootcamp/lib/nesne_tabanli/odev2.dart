class Odev2 {

  double soru1(double km){
   double mil = km * 0.621;
    return mil;
  }

  void soru2(double kisa , double uzun){
   double alan = kisa * uzun;
   print("Alan :  $alan");
  }


  int soru3(int sayi){
    int faktoriyel = 1;
    for(int i = 1; i <= sayi;i++){
      faktoriyel *= i;
    }
    return faktoriyel;
  }
  void soru4(String kelime){
    int j = 0;
    for(int i =0;i<kelime.length;i++){
      if(kelime[i] == "e" || kelime[i] == "E"){
        j ++;
      }
    }
    print("E sayısı : $j");
  }
  void soru5(int kenarsayisi){
    double icacitoplami = ((kenarsayisi -2)*180)/kenarsayisi;
    print("Sonuç : $icacitoplami");
  }
  int soru6(int gun){
    int calisilansaat = gun* 8 ;
    int maas;
    if(calisilansaat <= 150){
     maas = calisilansaat * 40;
    }else{
      maas = (150 * 40) + ((calisilansaat - 150)*80);
    }
    return maas;

  }
  int soru7(int otoparksuresi){
    int otoparkucreti;
    if(otoparksuresi == 1){
      otoparkucreti = 50;
    }else{
     otoparkucreti = ((otoparksuresi - 1) * 10) + 50;
    }
    return otoparkucreti;
  }

}
