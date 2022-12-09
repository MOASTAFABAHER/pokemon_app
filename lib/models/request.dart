class Request {
  List<Pokemon>? pokemon;

  Request({this.pokemon});

  Request.fromJson(Map<String, dynamic> json) {
    if (json['pokemon'] != null) {
      pokemon = <Pokemon>[];
      json['pokemon'].forEach((v) {
        pokemon!.add(new Pokemon.fromJson(v));
      });
    }
  }
}

class Pokemon {
  String? num;
  String? name;
  String? img;
  List<String>? type;
  String? height;
  String? weight;
  String? candy;

  String? egg;

  String? spawnTime;

  Pokemon({
    this.num,
    this.name,
    this.img,
    this.type,
    this.height,
    this.weight,
    this.candy,
    this.egg,
    this.spawnTime,
  });

  Pokemon.fromJson(Map<String, dynamic> json) {
    num = json['num'];
    name = json['name'];
    img = json['img'];
    type = json['type'].cast<String>();
    height = json['height'];
    weight = json['weight'];
    candy = json['candy'];

    egg = json['egg'];

    spawnTime = json['spawn_time'];
  }
}

class NextEvolution {
  String? num;
  String? name;

  NextEvolution({this.num, this.name});

  NextEvolution.fromJson(Map<String, dynamic> json) {
    num = json['num'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['num'] = this.num;
    data['name'] = this.name;
    return data;
  }
}
