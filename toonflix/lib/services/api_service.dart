import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:toonflix/models/webtoon_model.dart';

class ApiService {
  final String baseurl = "https://webtoon-crawler.nomadcoders.workers.dev/";
  final String today = 'today';

  void getTodaysToons() async {
    final url = Uri.parse('$baseurl/$today');
    final response = await http.get(url);
    if (response.statusCode == 200) {
      final List<dynamic> webtoons = jsonDecode(response.body);
      for (var webtoon in webtoons) {
        final toon = WebtoonModel.fromJson(webtoon);
        //json을 해당 모델로 보낸다.
        //해당 모델에서 값을 받아 처리한다.
        print(toon.title);
      }
      return;
    } else {
      throw Error();
    }
  }
}

// http라는 패키지를 pub.dev에서 다운로드 받음
// get에 있는 Future요소 