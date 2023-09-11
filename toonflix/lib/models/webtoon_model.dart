class WebtoonModel {
  final String title, thumb, id;

  //Map<key, value> 형태의 json을 받아와서

  WebtoonModel.fromJson(Map<String, dynamic> json)
      : title = json['title'],
        thumb = json['thumb'],
        id = json['id'];
}
