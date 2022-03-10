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

// usuarios
final User currentUser = User(
  id: 0,
  name: 'Jose Quezada',
  imageUrl: 'animado.png',
  isOnline: true,
);

final User aitanaJimena = User(
  id: 1,
  name: 'Aitana Jimena',
  imageUrl: 'useror.jpg',
  isOnline: true,
);

final User oscarLujan = User(
  id: 2,
  name: 'Oscar Lujan',
  imageUrl: 'user2.jpg',
  isOnline: false,
);

final User keanuReeves = User(
  id: 3,
  name: 'Keanu Reeves',
  imageUrl: 'keanu.jpg',
  isOnline: true,
);

final User leandroAragon = User(
  id: 4,
  name: 'Leandro Aragon',
  imageUrl: 'user4.jpg',
  isOnline: true,
);

final User demetrioCordoba = User(
  id: 5,
  name: 'Demetrio Córdoba',
  imageUrl: 'userprofile.png',
  isOnline: false,
);

final User javierToribio = User(
  id: 6,
  name: 'Javier Toribio',
  imageUrl: 'usery.jpg',
  isOnline: true,
);
