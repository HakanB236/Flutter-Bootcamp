Future<void> main() async{


  print("Verilerin alınması bekleniyor...");
  var veri =await veritabanindanverial();
  print("Alınan veri : $veri");

}

Future<String> veritabanindanverial() async{
  for(var i=1;i<6;i++){
    Future.delayed(Duration(seconds: i), () => print("Veri miktarı : %${i*20}"));
  }
  return Future.delayed(Duration(seconds:5 ),() => "Merhaba");

}