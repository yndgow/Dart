import 'dart:convert';
import 'dart:io';

void main() {
  String jsonStr = '''
{
  "albumId": 1,
  "id": 1,
  "title": "accusamus beatae ad facilis cum similique qui sunt",
  "url": "https://via.placeholder.com/600/92c952",
  "thumbnailUrl": "https://via.placeholder.com/150/92c952"
  }
''';
  String jsonStr2 = '''
  {
    "id": 1,
    "name": "Leanne Graham",
    "username": "Bret",
    "email": "Sincere@april.biz",
    "address": {
      "street": "Kulas Light",
      "suite": "Apt. 556",
      "city": "Gwenborough",
      "zipcode": "92998-3874",
      "geo": {
        "lat": "-37.3159",
        "lng": "81.1496"
      }
    },
    "phone": "1-770-736-8031 x56442",
    "website": "hildegard.org",
    "company": {
      "name": "Romaguera-Crona",
      "catchPhrase": "Multi-layered client-server neural-net",
      "bs": "harness real-time e-markets"
    }
  }
  ''';

  // 파싱 기술 1 - Map 변환

  var jsonMap = json.decode(jsonStr) as Map<String, dynamic>;
  Photo photo1 = Photo.fromJson(jsonMap);
  stdout.writeln('albumId : ${photo1.albumId}');
  stdout.writeln('id : ${photo1.id}');
  stdout.writeln('title : ${photo1.title}');
  stdout.writeln('url : ${photo1.url}');
  stdout.writeln('thumbnailUrl : ${photo1.thumbnailUrl}');
  stdout.writeln('---------------------');

  var jsonMap2 = json.decode(jsonStr2) as Map<String, dynamic>;
  // stdout.writeln(jsonMap2.runtimeType);
  // stdout.writeln(jsonMap2);
  // User.fromJson2(jsonMap2);
  User user = User.fromJson(jsonMap2);
  stdout.writeln(user);

}

// 파싱 기술 2 - 클래스 설계
class Photo {
  int albumId;
  int id;
  String title;
  String url;
  String thumbnailUrl;

  Photo(this.albumId, this.id, this.title, this.url, this.thumbnailUrl);

  Photo.fromJson(Map<String, dynamic> json)
      : albumId = json['albumId'],
        id = json['id'],
        title = json['title'],
        url = json['url'],
        thumbnailUrl = json['thumbnailUrl'];
}

class User {
  int id;
  String name;
  String username;
  String email;
  Address address;
  String phone;
  String website;
  Company company;

  User(this.id, this.name, this.username, this.email, this.address, this.phone,
      this.website, this.company);

  User.fromJson(Map<String, dynamic> jsonMap)
      : id = jsonMap['id'],
        name = jsonMap['name'],
        username = jsonMap['username'],
        email = jsonMap['email'],
        address = Address.fromJson(jsonMap['address']),
        phone = jsonMap['phone'],
        website = jsonMap['website'],
        company = Company.fromJson(jsonMap['company']);

// factory User.fromJson2(Map<String, dynamic> map) {
//   return User(map['id'], map['name'], map['username'], map['email'],
//       map['address'], map['phone'], map['company']);
// }

  @override
  String toString() {
    return 'id : $id\n'
        'name : $name\n'
        'username : $username\n'
        'email : $email\n'
        'address :\n'
        '\tstreet : ${address.street}\n'
        '\tsuite : ${address.suite}\n'
        '\tcity : ${address.city}\n'
        '\tzipcode : ${address.zipcode}\n'
        '\tgeo :\n'
        '\t\tlat : ${address.geo.lat}\n'
        '\t\tlng : ${address.geo.lng}\n'
        'phone : $phone\n'
        'website : $website\n'
        'company :\n'
        '\tname : ${company.name}\n'
        '\tcatchPhrase : ${company.catchPhrase}\n'
        '\tbs : ${company.bs}'
        ;
  }
}

class Address {
  String street;
  String suite;
  String city;
  String zipcode;
  Geo geo;


  Address(this.street, this.suite, this.city, this.zipcode, this.geo);

  Address.fromJson(Map<String, dynamic> map)
      : street = map['street'],
        suite = map['suite'],
        city = map['city'],
        zipcode = map['zipcode'],
        geo = Geo.fromJson(map['geo']);
}

class Geo {
  String lat;
  String lng;

  Geo(this.lat, this.lng);

  Geo.fromJson(Map<String, dynamic> map)
      : lat = map['lat'],
        lng = map['lng'];
}

class Company {
  String name;
  String catchPhrase;
  String bs;

  Company(this.name, this.catchPhrase, this.bs);

  Company.fromJson(Map<String, dynamic> map)
      : name = map['name'],
        catchPhrase = map['catchPhrase'],
        bs = map['bs'];
}
