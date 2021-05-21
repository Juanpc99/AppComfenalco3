//SHA 1 7F:EB:22:0D:E9:68:4D:32:37:E2:FA:98:CA:FB:CF:8D:4F:E2:6E:07
import 'dart:async';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

class PushNotificationsService {
  static FirebaseMessaging messaging = FirebaseMessaging.instance;
  static String token;
  static StreamController<String> _messageStreamController =
      new StreamController.broadcast();
  static Stream<String> get messagesStream => _messageStreamController.stream;

  static Future _backgroundHndler(RemoteMessage message) async {
    // print('on background Handler ${message.messageId}');
    _messageStreamController.sink.add(message.data['producto'] ?? 'No title');
  }

  static Future _onMessageHndler(RemoteMessage message) async {
    print(message.data);
    _messageStreamController.sink.add(message.data['producto'] ?? 'No title');
  }

  static Future _onMessageOpenApp(RemoteMessage message) async {
    _messageStreamController.sink.add(message.data['producto'] ?? 'No title');
  }

  static Future initializeApp() async {
    //Push Notifications
    await Firebase.initializeApp();
    token = await FirebaseMessaging.instance.getToken();
    print('Token--------------------------------------: $token');
    // Handlers
    FirebaseMessaging.onBackgroundMessage(_backgroundHndler);
    FirebaseMessaging.onMessage.listen(_onMessageHndler);
    FirebaseMessaging.onMessageOpenedApp.listen(_onMessageOpenApp);
    //Local notifications
  }

  static closeStreams() {
    _messageStreamController.close();
  }
}
