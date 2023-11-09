import 'package:flutter/material.dart';
class KullaniciEtkilesimiSayfa extends StatefulWidget {
  const KullaniciEtkilesimiSayfa({Key? key}) : super(key: key);

  @override
  State<KullaniciEtkilesimiSayfa> createState() => _KullaniciEtkilesimiSayfaState();
}

class _KullaniciEtkilesimiSayfaState extends State<KullaniciEtkilesimiSayfa> {
  var tfControl = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: const Text("Kullanıcı Etkileşimi"),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(onPressed: (){
              ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                      content: const Text("Silmek istiyor musunuz?"),
                      action: SnackBarAction(label: "Evet", onPressed: (){
                        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Silindi")
                          ),
                        );

                        }
                      ),
                  )
              );
            }, child: const Text("Snackbar")),
            ElevatedButton(onPressed: (){
              ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    backgroundColor: Colors.white,
                    content: const Text("Silmek istiyor musunuz?",style: TextStyle(color: Colors.indigoAccent),),
                    action: SnackBarAction(label: "Evet", textColor: Colors.red, onPressed: (){
                      ScaffoldMessenger.of(context)
                          .showSnackBar(const SnackBar(
                        backgroundColor:Colors.white ,
                        content: Text("Silindi",style: TextStyle(color: Colors.red),),

                      ),
                      );

                    }
                    ),
                  )
              );
            }, child: const Text("Snackbar (Özel)")),
            ElevatedButton(onPressed: (){
              showDialog(
                  context: context,
                  builder: (BuildContext context){
                    return AlertDialog(
                      title: const Text("Başlık"),
                      content: const Text("İçerik"),
                      actions: [
                        TextButton(onPressed: (){
                          Navigator.pop(context);
                          print("İptal seçildi");
                        }, child: const Text("İptal")),
                        TextButton(onPressed: (){
                          Navigator.pop(context);
                          print("Tamam seçildi");
                        }, child: const Text("Tamam")),
                      ],
                    );
                  }
              );

            }, child: const Text("Alert")),
            ElevatedButton(onPressed: (){
              showDialog(
                  context: context,
                  builder: (BuildContext context){
                    return AlertDialog(
                      backgroundColor: Colors.greenAccent,
                      title: const Text("Kayıt işlemi"),
                      content: TextField(
                        keyboardType: TextInputType.number,
                        controller: tfControl,
                          decoration: InputDecoration(hintText: "Veri")
                      ),
                      actions: [
                        TextButton(onPressed: (){
                          Navigator.pop(context);
                          print("İptal seçildi");
                        }, child: const Text("İptal",style: TextStyle(color: Colors.black),)),
                        TextButton(onPressed: (){
                          Navigator.pop(context);
                          print("Tamam seçildi");
                          String alinanVeri = tfControl.text;
                        //  tfControl.clear(); clear dediğimizde tüm özellikleri kaybedeceğimiz için bunun yerine;

                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text(alinanVeri))

                          );
                          tfControl.text = "";
                        }, child: const Text("Kaydet",style: TextStyle(color: Colors.black))),
                      ],
                    );
                  }
              );
            }, child: const Text("Alert (Özel)")),

          ],
        ),
      ),
    );
  }
}
