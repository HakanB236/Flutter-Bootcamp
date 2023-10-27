class Araba {

/*  late*/ String renk ;  // kotlinde late değil lateinit
 /* late*/ int hiz;
 /* late */bool calisiyorMu ;

 /* Araba(String renk, int hiz, bool calisiyorMu){
    this.renk = renk; // shadowing (gölgeleme)
    this.hiz = hiz;
    this.calisiyorMu = calisiyorMu;
  }*/
  Araba({required this.renk, required this.hiz,required this.calisiyorMu});
//  this araba sınıfını temsil eder. Swift'te de this self olarak kullanılır.

  void calistir(){ // Side effect. metodun sınıfın özelliğini değiştirmesi
    hiz = 5;
    calisiyorMu = true;
  }
  void durdur(){
    hiz = 0;
    calisiyorMu = false;

  }
  void hizlan(int km){
    hiz += km;
  }

  void yavasla(int km){
    hiz -= km;
  }
  void bilgiAl(){
    print("-------------");
    print("Renk   :${renk}");
    print("Hız    :${hiz}");
    print("Çalışıyor Mu: ${calisiyorMu}");
  }



}



// required açıklamalı gösterir.


