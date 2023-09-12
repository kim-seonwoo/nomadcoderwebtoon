import 'package:flutter/material.dart';
import 'package:toonflix/models/webtoon_episode_model.dart';
import 'package:url_launcher/url_launcher.dart';

class webtoon_episode extends StatelessWidget {
  const webtoon_episode({
    super.key,
    required this.episode,
  });

  final WebtoonEpisodeModel episode;

  onButtonTap() async {
    final url = Uri.parse('https://placekitten.com/200/300');
    await launchUrl(url);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onButtonTap,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(10),
        ),
        margin: const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              episode.title,
              style: const TextStyle(
                fontSize: 16,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              episode.date,
              style: const TextStyle(
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
