// ignore_for_file: unnecessary_new, unnecessary_this

class Item {
  late String title;
  late bool done;

  Item( {
    required this.title,
    required this.done
  });

  Item.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    done =json['done'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['title'] = this.title;
    data['done'] = this.done;
    return data;
  }
}