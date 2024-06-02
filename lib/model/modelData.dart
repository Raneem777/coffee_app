class ModelData {
  ModelData({
    required this.data,
  });
  late final List<Data> data;
  
  ModelData.fromJson(Map<String, dynamic> json){
    data = List.from(json['data']).map((e)=>Data.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['data'] = data.map((e)=>e.toJson()).toList();
    return _data;
  }
}

class Data {
  Data({
    required this.title,
    required this.image,
    required this.subTitle,
    required this.description,
    required this.quantity,
    required this.isFav,
    required this.price,
  });
  late final String title;
  late final String image;
  late final String subTitle;
  late final String description;
  late  int quantity;
  late final bool isFav;
  late final String price;
  
  Data.fromJson(Map<String, dynamic> json){
    title = json['title'];
    image = json['image'];
    subTitle = json['subTitle'];
    description = json['description'];
    quantity = json['quantity'];
    isFav = json['isFav'];
    price = json['price'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['title'] = title;
    _data['image'] = image;
    _data['subTitle'] = subTitle;
    _data['description'] = description;
    _data['quantity'] = quantity;
    _data['isFav'] = isFav;
    _data['price'] = price;
    return _data;
  }
}