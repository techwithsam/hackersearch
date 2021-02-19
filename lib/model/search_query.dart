class SearchQueryModel {
  List<Hits> hits;
  int nbHits;
  int page;
  int nbPages;
  int hitsPerPage;
  bool exhaustiveNbHits;
  String query;
  String params;
  int processingTimeMS;

  SearchQueryModel(
      {this.hits,
      this.nbHits,
      this.page,
      this.nbPages,
      this.hitsPerPage,
      this.exhaustiveNbHits,
      this.query,
      this.params,
      this.processingTimeMS});

  SearchQueryModel.fromJson(Map<String, dynamic> json) {
    if (json['hits'] != null) {
      hits = new List<Hits>();
      json['hits'].forEach((v) {
        hits.add(new Hits.fromJson(v));
      });
    }
    nbHits = json['nbHits'];
    page = json['page'];
    nbPages = json['nbPages'];
    hitsPerPage = json['hitsPerPage'];
    exhaustiveNbHits = json['exhaustiveNbHits'];
    query = json['query'];
    params = json['params'];
    processingTimeMS = json['processingTimeMS'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.hits != null) {
      data['hits'] = this.hits.map((v) => v.toJson()).toList();
    }
    data['nbHits'] = this.nbHits;
    data['page'] = this.page;
    data['nbPages'] = this.nbPages;
    data['hitsPerPage'] = this.hitsPerPage;
    data['exhaustiveNbHits'] = this.exhaustiveNbHits;
    data['query'] = this.query;
    data['params'] = this.params;
    data['processingTimeMS'] = this.processingTimeMS;
    return data;
  }
}

class Hits {
  String createdAt;
  String title;
  String url;
  String author;
  int points;
  String storyText;
  dynamic commentText;
  int numComments;
  dynamic storyId;
  dynamic storyTitle;
  dynamic storyUrl;
  dynamic parentId;
  int createdAtI;
  int relevancyScore;
  List<String> lTags;
  String objectID;
  HighlightResult hHighlightResult;

  Hits(
      {this.createdAt,
      this.title,
      this.url,
      this.author,
      this.points,
      this.storyText,
      this.commentText,
      this.numComments,
      this.storyId,
      this.storyTitle,
      this.storyUrl,
      this.parentId,
      this.createdAtI,
      this.relevancyScore,
      this.lTags,
      this.objectID,
      this.hHighlightResult});

  Hits.fromJson(Map<String, dynamic> json) {
    createdAt = json['created_at'];
    title = json['title'];
    url = json['url'];
    author = json['author'];
    points = json['points'];
    storyText = json['story_text'];
    commentText = json['comment_text'];
    numComments = json['num_comments'];
    storyId = json['story_id'];
    storyTitle = json['story_title'];
    storyUrl = json['story_url'];
    parentId = json['parent_id'];
    createdAtI = json['created_at_i'];
    relevancyScore = json['relevancy_score'];
    lTags = json['_tags'].cast<String>();
    objectID = json['objectID'];
    hHighlightResult = json['_highlightResult'] != null
        ? new HighlightResult.fromJson(json['_highlightResult'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['created_at'] = this.createdAt;
    data['title'] = this.title;
    data['url'] = this.url;
    data['author'] = this.author;
    data['points'] = this.points;
    data['story_text'] = this.storyText;
    data['comment_text'] = this.commentText;
    data['num_comments'] = this.numComments;
    data['story_id'] = this.storyId;
    data['story_title'] = this.storyTitle;
    data['story_url'] = this.storyUrl;
    data['parent_id'] = this.parentId;
    data['created_at_i'] = this.createdAtI;
    data['relevancy_score'] = this.relevancyScore;
    data['_tags'] = this.lTags;
    data['objectID'] = this.objectID;
    if (this.hHighlightResult != null) {
      data['_highlightResult'] = this.hHighlightResult.toJson();
    }
    return data;
  }
}

class HighlightResult {
  Title title;
  Title url;
  Author author;
  Author storyText;

  HighlightResult({this.title, this.url, this.author, this.storyText});

  HighlightResult.fromJson(Map<String, dynamic> json) {
    title = json['title'] != null ? new Title.fromJson(json['title']) : null;
    url = json['url'] != null ? new Title.fromJson(json['url']) : null;
    author =
        json['author'] != null ? new Author.fromJson(json['author']) : null;
    storyText = json['story_text'] != null
        ? new Author.fromJson(json['story_text'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.title != null) {
      data['title'] = this.title.toJson();
    }
    if (this.url != null) {
      data['url'] = this.url.toJson();
    }
    if (this.author != null) {
      data['author'] = this.author.toJson();
    }
    if (this.storyText != null) {
      data['story_text'] = this.storyText.toJson();
    }
    return data;
  }
}

class Title {
  String value;
  String matchLevel;
  bool fullyHighlighted;
  List<String> matchedWords;

  Title(
      {this.value, this.matchLevel, this.fullyHighlighted, this.matchedWords});

  Title.fromJson(Map<String, dynamic> json) {
    value = json['value'];
    matchLevel = json['matchLevel'];
    fullyHighlighted = json['fullyHighlighted'];
    matchedWords = json['matchedWords'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['value'] = this.value;
    data['matchLevel'] = this.matchLevel;
    data['fullyHighlighted'] = this.fullyHighlighted;
    data['matchedWords'] = this.matchedWords;
    return data;
  }
}

class Author {
  String value;
  String matchLevel;
  List<dynamic> matchedWords;

  Author({this.value, this.matchLevel, this.matchedWords});

  Author.fromJson(Map<String, dynamic> json) {
    value = json['value'];
    matchLevel = json['matchLevel'];
    matchedWords = json['matchedWords'].cast<dynamic>();
    // if (json['matchedWords'] != null) {
    //   matchedWords = new List<Null>();
    //   json['matchedWords'].forEach((v) {
    //     matchedWords.add(new Null.fromJson(v));
    //   });
    // }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['value'] = this.value;
    data['matchLevel'] = this.matchLevel;
    if (this.matchedWords != null) {
      data['matchedWords'] = this.matchedWords.map((v) => v.toJson()).toList();
    }
    return data;
  }
}
