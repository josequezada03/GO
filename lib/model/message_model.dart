import 'package:gp_app/model/user_message.dart';

class Message {
  final User sender;
  final String time;
  final String text;
  final bool unread;

  Message({
    required this.sender,
    required this.time,
    required this.text,
    required this.unread,
  });
}

// Ejempolos de mensajes en la pagina de mensajeria
List<Message> chats = [
  Message(
    sender: aitanaJimena,
    time: '9:49 AM',
    text:
        'Could we set up a time for a phone call to walk through our products?',
    unread: false,
  ),
  Message(
    sender: oscarLujan,
    time: '10:21 AM',
    text: 'Hi Jose, thank you for taking the time for a call today.',
    unread: false,
  ),
  Message(
    sender: keanuReeves,
    time: '7:29 PM',
    text: 'We have a city to burn.',
    unread: true,
  ),
  Message(
    sender: leandroAragon,
    time: '12:07 AM',
    text:
        'Just a reminder that due to the holiday on Monday, all orders for next week must be placed by Friday.',
    unread: true,
  ),
  Message(
    sender: demetrioCordoba,
    time: 'Ayer',
    text:
        'I\'m running a delivery for The Local Mart but I\'m stuck in bad traffic. I might be up to an hour late.',
    unread: false,
  ),
  Message(
    sender: javierToribio,
    time: 'Ayer',
    text:
        'Hi Jose, your appointment is Thursday at 3 p.m., does this time still work for you?',
    unread: true,
  ),
];

// Ejempolos de mensajes en la pagina de mensajeria
List<Message> messages = [
  Message(
      sender: aitanaJimena,
      time: '10:01 AM',
      text: 'See you later',
      unread: false),
  Message(
      sender: currentUser,
      time: '9:59 AM',
      text: '6pm works great, I\'ll see you then.',
      unread: false),
  Message(
      sender: aitanaJimena,
      time: '9:58 AM',
      text: 'Does 6pm sound good?',
      unread: false),
  Message(
      sender: currentUser,
      time: '9:51 AM',
      text: 'Sure, what time is best for you?',
      unread: true),
  Message(
      sender: aitanaJimena,
      time: '9:49 AM',
      text:
          'Could we set up a time for a phone call to walk through our products?',
      unread: false),
  Message(
      sender: currentUser,
      time: '9:43 AM',
      text: 'Hello, how can i help?',
      unread: true),
  Message(
      sender: aitanaJimena, time: '9:42 AM', text: 'Hi Jose!', unread: false),
];
