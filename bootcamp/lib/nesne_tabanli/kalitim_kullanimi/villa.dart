import 'package:bootcamp/nesne_tabanli/kalitim_kullanimi/ev.dart';

class Villa extends Ev {
  bool garajVarMi;

  Villa({required this.garajVarMi,required int pencereSayisi}) : super(pencereSayisi: pencereSayisi);
} //subClass