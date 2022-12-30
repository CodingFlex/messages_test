import 'package:messages_test/models/user_model.dart';

class Message {
  final User sender;
  final String time;
  final String text;
  final bool isLiked;
  final bool unread;

  Message(
      {required this.sender,
      required this.time,
      required this.text,
      required this.isLiked,
      required this.unread});
}

//You - current user
final User currentUser = User(
  id: 0,
  name: 'Current User',
  imageUrl: 'assets/images/greg.jpg',
);

//USERS
final User joshua = User(
  id: 1,
  name: 'Joshua',
  imageUrl: 'assets/images/james.jpg',
);

final User nifemi = User(
  id: 2,
  name: 'Greg',
  imageUrl: 'assets/images/greg.jpg',
);

final User feranmi = User(
  id: 4,
  name: 'John',
  imageUrl: 'assets/images/john.jpg',
);

final User tunmise = User(
  id: 5,
  name: 'Olivia',
  imageUrl: 'assets/images/olivia.jpg',
);

final User sade = User(
  id: 6,
  name: 'Sam',
  imageUrl: 'assets/images/sam.jpg',
);

final User daniel = User(
  id: 7,
  name: 'Daniel',
  imageUrl: 'assets/images/sophia.jpg',
);

//FAVOURITE CONTACTS
List<User> favourites = [nifemi, joshua, feranmi, sade, tunmise];

//DEMO CHATS ON HOMESCREEN
List<Message> chats = [
  Message(
    sender: nifemi,
    time: '7:30 PM',
    text: 'Let\'s hit the basketball court tomorrow',
    isLiked: true,
    unread: false,
  ),
  Message(
    sender: sade,
    time: '9:00 PM',
    text: 'What a weirdo! How you doing??',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: feranmi,
    time: '1:39 PM',
    text: 'Have you seen the movie?',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: joshua,
    time: '11:45 PM',
    text: 'I kinda need some money',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: tunmise,
    time: '7:30 PM',
    text: 'Push the changes to the repo so I can see?',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: daniel,
    time: '7:30 PM',
    text: 'You owe me big time',
    isLiked: false,
    unread: true,
  ),
];

// EXAMPLE MESSAGES IN CHAT SCREEN
List<Message> messages = [
  Message(
    sender: nifemi,
    time: '5:35 PM',
    text: 'Are you going to school tomorrow?',
    isLiked: true,
    unread: true,
  ),
  Message(
    sender: currentUser,
    time: '4:20 PM',
    text: 'Lol, very funny',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: nifemi,
    time: '3:40 PM',
    text: 'I\'d like some of that',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: nifemi,
    time: '3:15 PM',
    text: 'Ouuu, living the good life',
    isLiked: true,
    unread: true,
  ),
  Message(
    sender: currentUser,
    time: '2:30 PM',
    text: 'Oh yeah, I had some pancakes earlier',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: nifemi,
    time: '2:00 PM',
    text: 'Have you gotten something to eat?',
    isLiked: false,
    unread: true,
  ),
];
