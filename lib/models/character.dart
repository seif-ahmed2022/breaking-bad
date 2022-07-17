class Character{
  int? char_id;
  String? name;
  String? birthday;
  List<dynamic>? occupation;
  String? img;
  String? status;
  String? nickname;
  List<dynamic>? appearance;
  String? portrayed;
  String? category;
  List<dynamic>? better_call_saul_appearance;

  Character.fromJson(Map<String,dynamic> json){
    char_id=json["char_id"];
    name=json["name"];
    birthday=json["birthday"];
    occupation=json["occupation"];
    img=json["img"];
    status=json["status"];
    nickname=json["nickname"];
    appearance=json["appearance"];
    portrayed=json["portrayed"];
    category=json["category"];
    better_call_saul_appearance=json["better_call_saul_appearance"];
  }
}
/* Map x={
    "char_id": 1,
    "name": "Walter White",
    "birthday": "09-07-1958",
    "occupation": [
      "High School Chemistry Teacher",
      "Meth King Pin"
    ],
    "img": "https://images.amcnetworks.com/amc.com/wp-content/uploads/2015/04/cast_bb_700x1000_walter-white-lg.jpg",
    "status": "Presumed dead",
    "nickname": "Heisenberg",
    "appearance": [
      1,
      2,
      3,
      4,
      5
    ],
    "portrayed": "Bryan Cranston",
    "category": "Breaking Bad",
    "better_call_saul_appearance": [
    ]
  };*/