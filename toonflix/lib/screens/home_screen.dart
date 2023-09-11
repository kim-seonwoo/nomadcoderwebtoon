import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key); // 'Key?' 형식의 key를 받도록 수정

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int totalSeconds = 1500;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          Theme.of(context).colorScheme.background, // 여기에서 ')'를 하나 더 추가하여 오류 수정
      body: Column(
        children: [
          Flexible(
            flex: 1,
            child: Container(
              alignment: Alignment.bottomCenter,
              child: Text(
                '25:00',
                style: TextStyle(
                  color: Theme.of(context).cardColor,
                  fontSize: 89,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          Flexible(
            flex: 3,
            child: Center(
              child: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.play_circle_fill_outlined),
                // 여기에서 '}'를 하나 더 추가하여 오류 수정
                iconSize: 100,
                color: Theme.of(context).cardColor,
              ),
            ), // 내용이 없는 컨테이너, 필요한 내용을 추가하세요.
          ),
          Flexible(
            flex: 1,
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Theme.of(context).cardColor,
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Pomodoros',
                          style: TextStyle(
                              fontSize: 20,
                              color: Color(0xFF232B55),
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
                          '0',
                          style: TextStyle(
                              fontSize: 58,
                              color: Color(0xFF232B55),
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ), // 내용이 없는 컨테이너, 필요한 내용을 추가하세요.
          ),
        ],
      ),
    );
  }
}
