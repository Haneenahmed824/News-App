class ArticleModel {
  final String? image;
  final String title;
  final String? subTitle;
 final String url;
  const ArticleModel(this.image, this.title, this.subTitle, this.url);

  factory ArticleModel.fromJson(json) {
    return ArticleModel(json['urlToImage'], json['title'], json['description'],json['url']);
  }
}
