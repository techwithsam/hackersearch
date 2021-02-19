class PostDetailsModel {
  int id;
  String createdAt;
  int createdAtI;
  String type;
  String author;
  String title;
  String url;
  String text;
  int points;
  dynamic parentId;
  dynamic storyId;
  List<Children> children;
  List<dynamic> options;

  PostDetailsModel(
      {this.id,
      this.createdAt,
      this.createdAtI,
      this.type,
      this.author,
      this.title,
      this.url,
      this.text,
      this.points,
      this.parentId,
      this.storyId,
      this.children,
      this.options});

  PostDetailsModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    createdAt = json['created_at'];
    createdAtI = json['created_at_i'];
    type = json['type'];
    author = json['author'];
    title = json['title'];
    url = json['url'];
    text = json['text'];
    points = json['points'];
    parentId = json['parent_id'];
    storyId = json['story_id'];
    if (json['children'] != null) {
      children = new List<Children>();
      json['children'].forEach((v) {
        children.add(new Children.fromJson(v));
      });
    }
    // if (json['options'] != null) {
    //   options = new List<Null>();
    //   json['options'].forEach((v) {
    //     options.add(new Null.fromJson(v));
    //   });
    // }
    options = json['options'].cast<dynamic>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['created_at'] = this.createdAt;
    data['created_at_i'] = this.createdAtI;
    data['type'] = this.type;
    data['author'] = this.author;
    data['title'] = this.title;
    data['url'] = this.url;
    data['text'] = this.text;
    data['points'] = this.points;
    data['parent_id'] = this.parentId;
    data['story_id'] = this.storyId;
    if (this.children != null) {
      data['children'] = this.children.map((v) => v.toJson()).toList();
    }
    if (this.options != null) {
      data['options'] = this.options.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Children {
  int id;
  String createdAt;
  int createdAtI;
  String type;
  String author;
  String title;
  String url;
  String text;
  int points;
  int parentId;
  int storyId;
  List<Childreni> children;
  List<dynamic> options;

  Children(
      {this.id,
      this.createdAt,
      this.createdAtI,
      this.type,
      this.author,
      this.title,
      this.url,
      this.text,
      this.points,
      this.parentId,
      this.storyId,
      this.children,
      this.options});

  Children.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    createdAt = json['created_at'];
    createdAtI = json['created_at_i'];
    type = json['type'];
    author = json['author'];
    title = json['title'];
    url = json['url'];
    text = json['text'];
    points = json['points'];
    parentId = json['parent_id'];
    storyId = json['story_id'];
    if (json['children'] != null) {
      children = new List<Childreni>();
      json['children'].forEach((v) {
        children.add(new Childreni.fromJson(v));
      });
    }
    // if (json['options'] != null) {
    //   options = new List<Null>();
    //   json['options'].forEach((v) {
    //     options.add(new Null.fromJson(v));
    //   });
    // }
    options = json['options'].cast<dynamic>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['created_at'] = this.createdAt;
    data['created_at_i'] = this.createdAtI;
    data['type'] = this.type;
    data['author'] = this.author;
    data['title'] = this.title;
    data['url'] = this.url;
    data['text'] = this.text;
    data['points'] = this.points;
    data['parent_id'] = this.parentId;
    data['story_id'] = this.storyId;
    if (this.children != null) {
      data['children'] = this.children.map((v) => v.toJson()).toList();
    }
    if (this.options != null) {
      data['options'] = this.options.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Childreni {
  int id;
  String createdAt;
  int createdAtI;
  String type;
  String author;
  String title;
  String url;
  String text;
  int points;
  int parentId;
  int storyId;
  List<dynamic> children;
  List<dynamic> options;

  Childreni(
      {this.id,
      this.createdAt,
      this.createdAtI,
      this.type,
      this.author,
      this.title,
      this.url,
      this.text,
      this.points,
      this.parentId,
      this.storyId,
      this.children,
      this.options});

  Childreni.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    createdAt = json['created_at'];
    createdAtI = json['created_at_i'];
    type = json['type'];
    author = json['author'];
    title = json['title'];
    url = json['url'];
    text = json['text'];
    points = json['points'];
    parentId = json['parent_id'];
    storyId = json['story_id'];
    // if (json['children'] != null) {
    //   children = new List<Null>();
    //   json['children'].forEach((v) {
    //     children.add(new Null.fromJson(v));
    //   });
    // }
    children = json['children'].cast<dynamic>();
    // if (json['options'] != null) {
    //   options = new List<Null>();
    //   json['options'].forEach((v) {
    //     options.add(new Null.fromJson(v));
    //   });
    // }
    options = json['options'].cast<dynamic>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['created_at'] = this.createdAt;
    data['created_at_i'] = this.createdAtI;
    data['type'] = this.type;
    data['author'] = this.author;
    data['title'] = this.title;
    data['url'] = this.url;
    data['text'] = this.text;
    data['points'] = this.points;
    data['parent_id'] = this.parentId;
    data['story_id'] = this.storyId;
    if (this.children != null) {
      data['children'] = this.children.map((v) => v.toJson()).toList();
    }
    if (this.options != null) {
      data['options'] = this.options.map((v) => v.toJson()).toList();
    }
    return data;
  }
}
