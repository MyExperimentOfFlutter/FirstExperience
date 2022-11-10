class User {
  int? id;
  String? name;
  String? username;
  String? email;
  Address? address;
  String? phone;
  String? website;
  Company? company;

  User({
    required this.id,
    required this.name,
    required this.username,
    required this.email,
    required this.address,
    required this.phone,
    required this.website,
    required this.company,
  });

  factory User.fromJson(Map<String, dynamic> myUserJson) {
    return User(
      id: myUserJson['id'],
      name: myUserJson['name'],
      username: myUserJson['username'],
      email: myUserJson['email'],
      address: myUserJson['address'] != null
          ? Address.fromJson(myUserJson['address'])
          : null,
      phone: myUserJson['phone'],
      website: myUserJson['website'],
      company: myUserJson['company'] != null
          ? Company.fromJson(myUserJson['company'])
          : null,
    );
  }
}

class Address {
  String? street;
  String? suite;
  String? city;
  String? zipcode;
  Geo? geo;

  Address({
    required this.street,
    required this.suite,
    required this.city,
    required this.zipcode,
    required this.geo,
  });

  factory Address.fromJson(Map<String, dynamic> myAddress) {
    return Address(
        street: myAddress['street'],
        suite: myAddress['suite'],
        city: myAddress['city'],
        zipcode: myAddress['zipcode'],
        geo: myAddress['geo'] != null ? Geo.fromJson(myAddress['geo']) : null);
  }
}

class Geo {
  String? lat;
  String? lng;

  Geo({
    required this.lat,
    required this.lng,
  });

  factory Geo.fromJson(Map<String, dynamic> myJson) {
    return Geo(lat: myJson['lat'], lng: myJson['lng']);
  }
}

class Company {
  String? name;
  String? catchPhrase;
  String? bs;

  Company({
    required this.name,
    required this.catchPhrase,
    required this.bs,
  });

  factory Company.fromJson(Map<String, dynamic> myJson) {
    return Company(
        name: myJson['name'],
        catchPhrase: myJson['catchPhrase'],
        bs: myJson['bs']);
  }
}
