import 'package:whatsappclone/model/users_model.dart';

class Message {
  final User sender;
  final String
  time; // Would usually be type DateTime or Firebase Timestamp in production apps
  final String text;
  final bool isLiked;
  final bool unread;

  Message({
    this.sender,
    this.time,
    this.text,
    this.isLiked,
    this.unread,
  });
}

// YOU - current user
final User currentUser = User(
  id: 0,
  name: 'Current User',
  dp: 'assets/Alice.jpg',
);

// USERS
final User alice = User(
  id: 1,
  name: 'Alice',
  dp: 'assets/Alice.jpg',
  isOnlineTime: 'Online',
  isOnline: true,
);
final User zack = User(
  id: 2,
  name: 'Zack',
  dp: 'assets/Zack.jpg',
  isOnlineTime: '4 hours ago',
  isOnline: false,
);
final User ali = User(
  id: 3,
  name: 'Ali',
  dp: 'assets/Ali.jpg',
  isOnlineTime: '3 days ago',
  isOnline: false,
);
final User friendzone = User(
  id: 4,
  name: 'Friend zone',
  dp: 'assets/profile2.jpg',
  isOnlineTime: 'Online',
  isOnline: true,
);
final User marie = User(
  id: 5,
  name: 'Marie',
  dp: 'assets/Marie.jpg',
  isOnlineTime: 'Online',
  isOnline: true,
);
final User sophia = User(
  id: 6,
  name: 'Sophia',
  dp: 'assets/Ali.jpg',
  isOnlineTime: '2 mins ago',
  isOnline: false,
);
final User steven = User(
  id: 7,
  name: 'Steven',
  dp: 'assets/Ali.jpg',
  isOnlineTime: 'Online',
  isOnline: true,
);

List<Message> chats = [
  Message(
    sender: alice,
    time: '5:30 PM',
    text: 'Hey, how\'s it going? What did you do today?',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: zack,
    time: '4:30 PM',
    text: 'Hey, how\'s it going? What did you do today?',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: ali,
    time: '3:30 PM',
    text: 'Hey, how\'s it going? What did you do today?',
    isLiked: false,
    unread: false,
  ),
  Message(
    sender: friendzone,
    time: '2:30 PM',
    text: 'Hey, how\'s it going? What did you do today?',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: marie,
    time: '1:30 PM',
    text: 'Hey, how\'s it going? What did you do today?',
    isLiked: false,
    unread: false,
  ),
  Message(
    sender: sophia,
    time: '12:30 PM',
    text: 'Hey, how\'s it going? What did you do today?',
    isLiked: false,
    unread: false,
  ),
  Message(
    sender: steven,
    time: '11:30 AM',
    text: 'Hey, how\'s it going? What did you do today?',
    isLiked: false,
    unread: false,
  ),
];

// EXAMPLE MESSAGES IN CHAT SCREEN
List<Message> messages = [
  Message(
    sender: alice,
    time: '5:30 PM',
    text: 'Hey, how\'s it going? What did you do today?',
    isLiked: true,
    unread: true,
  ),
  Message(
    sender: currentUser,
    time: '4:30 PM',
    text: 'Just walked my doge. She was super duper cute. The best pupper!!',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: alice,
    time: '3:45 PM',
    text: 'How\'s the doggo?',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: alice,
    time: '3:15 PM',
    text: 'All the food',
    isLiked: true,
    unread: true,
  ),
  Message(
    sender: currentUser,
    time: '2:30 PM',
    text: 'Nice! What kind of food did you eat?',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: alice,
    time: '2:00 PM',
    text: 'I ate so much food today.',
    isLiked: false,
    unread: true,
  ),
];