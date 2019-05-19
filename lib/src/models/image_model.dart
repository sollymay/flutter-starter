class ImageModel {
  int id;
  String url;
  String title;

  ImageModel(this.id, this.url, this.title);

  //Map String dynamic means that we are accepting objects like JSON
  //With Keys that are Strings and dynamic values, can be int, string or other stuff

  ImageModel.fromJson(Map<String, dynamic> parsedJson){
    id = parsedJson['id'];
    url = parsedJson['url'];
    title = parsedJson['title'];
  }
}