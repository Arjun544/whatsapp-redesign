class User {
  int id;
  String name;
  String msg;
  String status;
  String dp;
  bool seenMsgs;
  int unreadMsgs;
  String isOnlineTime;
  bool isOnline;
  String missedCalls;

  User({
    this.id,
    this.name,
    this.msg,
    this.status,
    this.dp,
    this.seenMsgs,
    this.unreadMsgs,
    this.isOnlineTime,
    this.isOnline,
    this.missedCalls
  });
}

List<User> user = [
  User(
    id: 1,
    name: 'Alice',
    msg: 'You: meet me at..',
    status: 'Just now',
    dp: 'assets/Alice.jpg',
    seenMsgs: false,
    isOnlineTime: 'Online',
    isOnline: true,
    missedCalls: '3 Missed Calls',
  ),
  User(
    id: 2,
    name: 'Zack',
    msg: 'Im on my way ...',
    status: '3 hours ago',
    dp: 'assets/Zack.jpg',
    seenMsgs: true,
    unreadMsgs: 12,
    isOnlineTime: '4 hours ago',
    isOnline: false,
    missedCalls: 'Missed Calls',
  ),
  User(
    id: 3,
    name: 'Ali',
    msg: 'Ill be fine , see u !!',
    status: '2 days ago',
    dp: 'assets/Ali.jpg',
    seenMsgs: true,
    unreadMsgs: 3,
    isOnlineTime: '3 days ago',
    isOnline: false,
    missedCalls: 'outgoing Call',

  ),
  User(
    id: 4,
    name: 'Friend',
    msg: 'You: See you soon',
    status: 'Just now',
    dp: 'assets/profile2.jpg',
    seenMsgs: false,
    isOnlineTime: 'Online',
    isOnline: true,
    missedCalls: 'Missed Calls',

  ),
  User(
    id: 5,
    name: 'Marie',
    msg: 'Gud Morning',
    status: '23 seconds ago',
    dp: 'assets/Marie.jpg',
    seenMsgs: false,
    isOnlineTime: 'Online',
    isOnline: true,
    missedCalls: 'Missed Calls',

  ),
  User(
    id: 6,
    name: 'Sophia',
    msg: 'Ill be fine , see u !!',
    status: '2 days ago',
    dp: 'assets/Ali.jpg',
    seenMsgs: true,
    unreadMsgs: 3,
    isOnlineTime: '3 days ago',
    isOnline: false,
    missedCalls: '2 Missed Calls',

  ),
  User(
    id: 7,
    name: 'Steven',
    msg: 'Ill be fine , see u !!',
    status: '2 days ago',
    dp: 'assets/Ali.jpg',
    seenMsgs: false,
    unreadMsgs: 3,
    isOnlineTime: '4 hours ago',
    isOnline: false,
    missedCalls: '3 Missed Calls',

  ),
];
