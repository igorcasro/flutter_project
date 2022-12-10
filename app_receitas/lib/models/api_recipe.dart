class Recipe {
  late int id;
  late String image;
  String? imageType;
  int? likes;
  late String ingredients;
  late int missedIngredientCount;
  late List<MissedIngredients> missedIngredients;
  late String title;
  late List<MissedIngredients> unusedIngredients;
  late int usedIngredientCount;

  Recipe({
      required this.id,
      required this.image,
      this.imageType,
      this.likes,
      required this.missedIngredientCount,
      required this.missedIngredients,
      required this.title,
      required this.unusedIngredients,
      required this.usedIngredientCount,
    });

  Recipe.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    image = json['image'];
    imageType = json['imageType'];
    likes = json['likes'];
    missedIngredientCount = json['missedIngredientCount'];
    title = json['title'];
    usedIngredientCount = json['usedIngredientCount'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = id;
    data['image'] = image;
    data['imageType'] = imageType;
    data['likes'] = likes;
    data['missedIngredientCount'] = missedIngredientCount;
    if (missedIngredients != null) {
      data['missedIngredients'] =
          missedIngredients!.map((v) => v.toJson()).toList();
    }
    data['title'] = title;
    data['usedIngredientCount'] = usedIngredientCount;

    return data;
  }
}

class MissedIngredients {
  String? aisle;
  int? amount;
  int? id;
  String? image;
  List<Null>? meta;
  String? name;
  String? original;
  String? originalName;
  String? unit;
  String? unitLong;
  String? unitShort;

  MissedIngredients(
      {this.aisle,
      this.amount,
      this.id,
      this.image,
      this.meta,
      this.name,
      this.original,
      this.originalName,
      this.unit,
      this.unitLong,
      this.unitShort});

  MissedIngredients.fromJson(Map<String, dynamic> json) {
    aisle = json['aisle'];
    amount = json['amount'];
    id = json['id'];
    image = json['image'];
    name = json['name'];
    original = json['original'];
    originalName = json['originalName'];
    unit = json['unit'];
    unitLong = json['unitLong'];
    unitShort = json['unitShort'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['aisle'] = aisle;
    data['amount'] = amount;
    data['id'] = id;
    data['image'] = image;
    data['name'] = name;
    data['original'] = original;
    data['originalName'] = originalName;
    data['unit'] = unit;
    data['unitLong'] = unitLong;
    data['unitShort'] = unitShort;
    return data;
  }
}