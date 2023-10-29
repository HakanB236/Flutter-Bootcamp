import 'package:bootcamp/nesne_tabanli/override_kullanimi/hayvan.dart';
import 'package:bootcamp/nesne_tabanli/override_kullanimi/kedi.dart';
import 'package:bootcamp/nesne_tabanli/override_kullanimi/kopek.dart';
import 'package:bootcamp/nesne_tabanli/override_kullanimi/memeli.dart';

void main() {
  var hayvan = Hayvan();
  var memeli = Memeli();
  var kedi = Kedi();
  var kopek = Kopek();
  hayvan.sesCikar();  // Kalıtım yok. Kendi metoduna erişir.
  memeli.sesCikar();  // Kalıtım var. Üst sınıfın metoduna erişir.
  kedi.sesCikar();    // Kalıtım var. Kendi metoduna erişir.
  kopek.sesCikar();
}
