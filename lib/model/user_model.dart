class User {
  final int id;
  final String name;
  final String imageUrl;
  final bool isOnline;

  User({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.isOnline,
  });
}

// YOU - current user
final User currentUser = User(
  id: 0,
  name: 'Nick Fury',
  imageUrl: 'asset/image/nick-fury.jpg',
  isOnline: true,
);

// USERS
final User ironMan = User(
  id: 1,
  name: 'Euro',
  imageUrl: 'asset/image/Euro.jpeg',
  isOnline: true,
);
final User captainAmerica = User(
  id: 2,
  name: 'Mod',
  imageUrl: 'asset/image/Mod.png',
  isOnline: true,
);
final User hulk = User(
  id: 3,
  name: 'Tun',
  imageUrl: 'asset/image/Tun.png',
  isOnline: false,
);
final User scarletWitch = User(
  id: 4,
  name: 'Duce',
  imageUrl: 'asset/image/Duce.png',
  isOnline: false,
);
final User spiderMan = User(
  id: 5,
  name: 'Mix',
  imageUrl: 'asset/image/Mix.png',
  isOnline: true,
);
final User blackWindow = User(
  id: 6,
  name: 'Chad',
  imageUrl: 'asset/image/chad.png',
  isOnline: false,
);
final User thor = User(
  id: 7,
  name: 'Fat',
  imageUrl: 'asset/image/Fat.png',
  isOnline: false,
);
final User captainMarvel = User(
  id: 8,
  name: 'Jame',
  imageUrl: 'asset/image/Jame.png',
  isOnline: false,
);