class ProductModelCustom {
  ProductModelCustom({
    required this.type,
    required this.title,
    required this.price,
    required this.category,
    required this.review,
    required this.url0,
    required this.url1,
    required this.url2,
    required this.url3,
    required this.url4,
    required this.url5,
    required this.url6,
    required this.url7,
  });
  late final String type;
  late final String title;
  late final String price;
  late final String category;
  late final String review;
  late final String url0;
  late final String url1;
  late final String url2;
  late final String url3;
  late final String url4;
  late final String url5;
  late final String url6;
  late final String url7;

  ProductModelCustom.fromJson(Map<String, dynamic> json){
    type = json['type']??"";
    title = json['title']??"";
    price = json['price']??"";
    category = json['category']??"";
    review = json['review']??"";
    url0 = json['url0']?? "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTl8drmDskSeg-FZzL7KOeSRj1IHrtnrMsY_w6_JkPztfdzS2e0x-MKjjyDehZ5iC_E5KM&usqp=CAU";
    url1 = json['url1']?? "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTl8drmDskSeg-FZzL7KOeSRj1IHrtnrMsY_w6_JkPztfdzS2e0x-MKjjyDehZ5iC_E5KM&usqp=CAU";
    url2 = json['url2']?? "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTl8drmDskSeg-FZzL7KOeSRj1IHrtnrMsY_w6_JkPztfdzS2e0x-MKjjyDehZ5iC_E5KM&usqp=CAU";
    url3 = json['url3']?? "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTl8drmDskSeg-FZzL7KOeSRj1IHrtnrMsY_w6_JkPztfdzS2e0x-MKjjyDehZ5iC_E5KM&usqp=CAU";
    url4 = json['url4']?? "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTl8drmDskSeg-FZzL7KOeSRj1IHrtnrMsY_w6_JkPztfdzS2e0x-MKjjyDehZ5iC_E5KM&usqp=CAU";
    url5 = json['url5']?? "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTl8drmDskSeg-FZzL7KOeSRj1IHrtnrMsY_w6_JkPztfdzS2e0x-MKjjyDehZ5iC_E5KM&usqp=CAU";
    url6 = json['url6']?? "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTl8drmDskSeg-FZzL7KOeSRj1IHrtnrMsY_w6_JkPztfdzS2e0x-MKjjyDehZ5iC_E5KM&usqp=CAU";
    url7 = json['url7']?? "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTl8drmDskSeg-FZzL7KOeSRj1IHrtnrMsY_w6_JkPztfdzS2e0x-MKjjyDehZ5iC_E5KM&usqp=CAU";
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['type'] = type;
    _data['title'] = title;
    _data['price'] = price;
    _data['category'] = category;
    _data['review'] = review;
    _data['url0'] = url0;
    _data['url1'] = url1;
    _data['url2'] = url2;
    _data['url3'] = url3;
    _data['url4'] = url4;
    _data['url5'] = url5;
    _data['url6'] = url6;
    _data['url7'] = url7;
    return _data;
  }
}