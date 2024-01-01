// ignore_for_file: public_member_api_docs, sort_constructors_first, unnecessary_new, prefer_collection_literals, unnecessary_this


class Item {
  String title = ''; 
  bool done = false;

  Item({
    required this.title,
    required this.done,
  });

  Item.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    done = json['done'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    data['done'] = this.done;
    return data;
  }
}
