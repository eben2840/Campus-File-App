import 'package:firebase_messaging/firebase_messaging.dart';

Future<void> handleBackgroundMessage(RemoteMessage message) async {
  print('title: ${message.notification?.title}');
  print('Body: ${message.notification?.body}');
  print('Payload: ${message.data}');
}


class FirebaseApi
{
  final _firebaseMessaging = FirebaseMessaging.instance;

  Future<void> backgroundNotification() async {
    ;
    FirebaseMessaging.onBackgroundMessage(handleBackgroundMessage);
  }


  Future<void> initNotification() async {
    await _firebaseMessaging.requestPermission();
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      //your logic here
    });
  final message = await _firebaseMessaging.getInitialMessage();
  if(message!.notification != null){
//your logic here
  }
  }

}
