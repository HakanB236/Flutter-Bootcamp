
import 'package:flutter/material.dart';

class Anasayfa extends StatefulWidget {
  const Anasayfa({Key? key}) : super(key: key);

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  int radioDeger = 0;
  String resimAdi = "baklava.png";
  String alinanVeri = "";
  bool switchKontrol = false;
  bool checkboxKontrol = false;
  bool progressKontrol = false;
  double ilerleme = 30.0;
  var tfSaat = TextEditingController();
  var tfTarih = TextEditingController();
  var tfControl = TextEditingController();
  var ulkelerListesi = <String>[];
  String secilenUlke = "Türkiye";

  @override
  void initState() {
    super.initState();
    ulkelerListesi.add("Türkiye");
    ulkelerListesi.add("İtalya");
    ulkelerListesi.add("Japonya");

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Widgets Kullanımı"),centerTitle: true,),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Text(alinanVeri),
              Padding(
                padding: const EdgeInsets.only(left: 32.0,right: 32.0),
                child: TextField(
                  controller: tfControl,
                  decoration: InputDecoration(hintText: "Veri"),
                  keyboardType: TextInputType.number,
                  obscureText: true,
                ),
              ),
              ElevatedButton(onPressed: (){
                setState(() {
                  alinanVeri = tfControl.text;
                });
              }, child: Text("Oku")),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(onPressed: (){
                    setState(() {
                      resimAdi = "kofte.png";
                    });

                  }, child: Text("Resim 1")),
                  SizedBox(width: 72,height: 72,child: Image.network("http://kasimadalan.pe.hu/yemekler/resimler/$resimAdi")),

                  // Image.asset("assets/images/$resimAdi"),
                  ElevatedButton(onPressed: (){
                    setState(() {
                      resimAdi = "ayran.png";
                    });

                  }, child: Text("Resim 2")),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(width: 200,
                    child: SwitchListTile(
                      title: const Text("Dart"),
                      controlAffinity: ListTileControlAffinity.leading, // yazı sağda
                        value: switchKontrol, onChanged:(value) {
                        setState(() {
                          switchKontrol = value;
                        });

                        },
                    ),
                  ),
                  SizedBox(
                    width: 200,
                    child: CheckboxListTile(
                      title: const Text("Flutter"),
                      controlAffinity: ListTileControlAffinity.leading,
                      value: checkboxKontrol,
                      onChanged: (value) {
                      setState(() {
                        checkboxKontrol = value!;
                      });
                      },
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: 200,
                    child: RadioListTile(
                        title: Text("Barcelona"),
                        value: 1,
                        groupValue: radioDeger,
                        onChanged: (value) {
                          setState(() {
                            radioDeger = value!;
                          });

                        },),
                  ),
                  SizedBox(
                    width: 200,
                    child: RadioListTile(
                      title: Text("Real Madrid"),
                      value: 2,
                      groupValue: radioDeger,
                      onChanged: (value) {
                        setState(() {
                          radioDeger = value!;
                        });

                      },),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(onPressed: () {
                    setState(() {
                      progressKontrol = true;
                    });
                  }, child: const Text("Başla")),
                  Visibility(visible: progressKontrol,child: const CircularProgressIndicator()),
                  ElevatedButton(onPressed: () {
                    setState(() {
                      progressKontrol = false;

                    });
                  }, child: const Text("Dur")),
                ],
              ),
              Text(ilerleme.toInt().toString()),
              Slider(min: 0.0,max: 100.0,value: ilerleme, onChanged: (value) {
                setState(() {
                  ilerleme = value;
                });
              },),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: 120,
                    child: TextField(
                      controller: tfSaat,
                      decoration: const InputDecoration(hintText: "Saat"),
                    ),
                  ),
                  IconButton(onPressed: () {
                    showTimePicker(context: context, initialTime: TimeOfDay.fromDateTime(DateTime.now()))
                        .then((value){
                          tfSaat.text = "${value!.hour} : ${value.minute}";
                    });

                  }, icon: const Icon(Icons.access_time)),

                  SizedBox(
                    width: 120,
                    child: TextField(
                      controller: tfTarih,
                      decoration: const InputDecoration(hintText: "Saat"),
                    ),
                  ),
                  IconButton(onPressed: () {
                    showDatePicker(context: context,initialDate: DateTime.now(), firstDate: DateTime(2000), lastDate: DateTime(2030))
                        .then((value){
                      tfTarih.text = "${value!.day}/${value!.year}";
                    });

                  }, icon: const Icon(Icons.date_range)),
                ],
              ),
              DropdownButton(
                value: secilenUlke,
                icon: const Icon(Icons.arrow_drop_down),
                items: ulkelerListesi.map((ulke){
                  return DropdownMenuItem(
                      value: ulke,
                      child: Text(ulke));
                }).toList(), onChanged: (veri) {
                  setState(() {
                    secilenUlke = veri!;
                  });
              },
              ),
              GestureDetector(
                onTap: () {
                  print("Container tek tıklandı");
                },
                onDoubleTap: () {
                  print("Çift tıklandı");
                },
                onLongPress: () {
                  print("Container üzerine uzun basıldı");
                },
                child: Container(
                  width: 200,
                  height: 100,
                  color: Colors.red,
                ),
              ),

              ElevatedButton(onPressed: (){
                print("Switch durum   : $switchKontrol");
                print("CheckBox durum : $checkboxKontrol");
                print("Radio durum    : $radioDeger");
                print("Slider durum   : $ilerleme");
                print("Seçilen ülke   : $secilenUlke");
              }, child: const Text("Göster")),

            ],
          ),
        ),
      ),

    );
  }
}
