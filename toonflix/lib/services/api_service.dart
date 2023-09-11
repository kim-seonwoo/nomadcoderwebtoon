import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:toonflix/models/webtoon_model.dart';

class ApiService {
  static const String baseurl =
      "https://webtoon-crawler.nomadcoders.workers.dev";
  static const String today = 'today';

  static Future<List<WebtoonModel>> getTodaysToons() async {
    List<WebtoonModel> webtoonInstance = [];
    final url = Uri.parse('$baseurl/$today');

    try {
      final response = await http.get(url);

      if (response.statusCode == 200) {
        final webtoons = jsonDecode(response.body);
        for (var webtoon in webtoons) {
          final instance = WebtoonModel.fromJson(webtoon);
          webtoonInstance.add(instance);
        }
        return webtoonInstance;
      } else {
        throw Exception('Failed to load data: ${response.statusCode}');
      }
    } catch (e) {
      // Handle the error here
      print('Error: $e');
      rethrow; // Re-throw the error if needed for further handling
    }
  }
}

// http 패키지를 pub.dev에서 다운로드 받음
// get에 있는 Future 요소
