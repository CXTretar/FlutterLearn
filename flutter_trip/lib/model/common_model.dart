class CommonModel {
  String icon;
  String url;
  String title;
  String statusBarColor;
  bool hideAppBar;

  CommonModel({this.icon, this.url, this.title, this.statusBarColor, this.hideAppBar});

  CommonModel.fromJson(Map<String, dynamic> json) {
    icon = json['icon'];
    title = json['title'];
    url = json['url'];
    statusBarColor = json['statusBarColor'];
    hideAppBar = json['hideAppBar'];
  }
}
