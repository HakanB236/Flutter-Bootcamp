import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var flp = FlutterLocalNotificationsPlugin();


  Future<void> setup() async{
    var iosSetting = const DarwinInitializationSettings();
    var androidSettings = const AndroidInitializationSettings("@mipmap/ic_launcher");
    var setupSetting = InitializationSettings(android: androidSettings,iOS: iosSetting);
    await flp.initialize(setupSetting,onDidReceiveNotificationResponse: notificationSelection);
  }
  Future<void> notificationSelection(NotificationResponse notificationResponse) async{
    var payload = notificationResponse.payload;
    if(payload != null){
      print("Bildirim Seçildi : $payload");
    }
  }
  Future<void> showNotification() async{
    var iosNotificationDetail = const DarwinNotificationDetails();
    var androidNotificationDetail = const AndroidNotificationDetails("id", "name",channelDescription: "aciklama",priority: Priority.high,importance: Importance.max);
    var notificationDetail = NotificationDetails(iOS: iosNotificationDetail,android: androidNotificationDetail);
    await flp.show(0, "Başlık", "İçerik", notificationDetail,payload: "Merhaba");

  }
  @override
  void initState() {
    super.initState();
    setup();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Notification"),),
      body: Center(
        child: ElevatedButton(onPressed: () {
          showNotification();

        }, child: Text("show notification")),
      ),
    );
  }
}