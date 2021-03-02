class ArticleApiModel{
  String status;
  int totalResults;
  List<Article> articles;

  ArticleApiModel(this.status, this.totalResults, this.articles);

  ArticleApiModel.fromJson(Map<String, dynamic> map){
    var mapArticles = map['articles'] as List;
    status = map['status'];
    totalResults = map['totalResults'];
    //articles = mapArticles.map((e) => Article.fromJson(e)).toList();
    articles = mapArticles.map((e) => Article.fromJson(e)).toList();
  }
}

class Article {
  Source source;
  String urlToImage;
  String title;
  String url;
  String author;
  String publishedAt;
  String content;
  String description;

  Article({
    this.source,
    this.urlToImage,
    this.title,
    this.url,
    this.author,
    this.publishedAt,
    this.content,
    this.description
  });

  Article.fromJson(Map<String, dynamic> map){
    source = Source.fromJson(map['source']);
    author = map['author'];
    title = map['title'];
    description = map['description'];
    url = map['url'];
    urlToImage = map['urlToImage'];
    publishedAt = map['publishedAt'];
    content = map['content'];
  }
}

class Source {
  String id;
  String name;

  Source({
    this.id,
    this.name,
});

  Source.fromJson(Map<String, dynamic> map) {
    id = map['id'];
    name = map['name'];
  }
}
