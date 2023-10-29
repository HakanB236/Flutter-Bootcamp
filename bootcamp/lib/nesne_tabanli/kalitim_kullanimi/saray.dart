import 'package:bootcamp/nesne_tabanli/kalitim_kullanimi/ev.dart';

class Saray extends Ev {
  int kuleSayisi;

  Saray({required this.kuleSayisi, required int pencereSayisi}) : super(pencereSayisi: pencereSayisi);
  // super : üst sınıfı temsil eder.(Ev)
  // this : bulunduğu sınıfı temsil eder.(Saray)
} // subClass