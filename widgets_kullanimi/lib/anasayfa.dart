
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Widgets Kullanımı"),centerTitle: true,),
      body: Center(
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

                }, icon: const Icon(Icons.access_time))
              ],
            ),
            ElevatedButton(onPressed: (){
              print("Switch durum : $switchKontrol");
              print("CheckBox durum : $checkboxKontrol");
              print("Radio durum : $radioDeger");
              print("Slider durum : $ilerleme");
            }, child: const Text("Göster")),

          ],
        ),
      ),

    );
  }
}
