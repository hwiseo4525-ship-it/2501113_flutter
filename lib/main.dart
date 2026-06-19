import 'package:flutter/material.dart';

void main() {
  runApp(const WorldExplorerApp());
}

class WorldExplorerApp extends StatelessWidget {
  const WorldExplorerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "World Explorer",
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  final List<Map<String, String>> countries = const [
    {
      "flag": "🇰🇷",
      "name": "대한민국",
      "capital": "서울",
      "language": "한국어",
      "food": "김치",
      "tour": "경복궁, 남산타워, 제주도",
    },
    {
      "flag": "🇯🇵",
      "name": "일본",
      "capital": "도쿄",
      "language": "일본어",
      "food": "초밥",
      "tour": "후지산, 도쿄타워, 오사카성",
    },
    {
      "flag": "🇺🇸",
      "name": "미국",
      "capital": "워싱턴 D.C.",
      "language": "영어",
      "food": "햄버거",
      "tour": "자유의 여신상, 그랜드캐니언",
    },
    {
      "flag": "🇫🇷",
      "name": "프랑스",
      "capital": "파리",
      "language": "프랑스어",
      "food": "크루아상",
      "tour": "에펠탑, 루브르 박물관",
    },
    {
      "flag": "🇬🇧",
      "name": "영국",
      "capital": "런던",
      "language": "영어",
      "food": "피시 앤 칩스",
      "tour": "빅벤, 버킹엄 궁전, 런던 아이",
    },
    {
      "flag": "🇨🇳",
      "name": "중국",
      "capital": "베이징",
      "language": "중국어",
      "food": "베이징덕",
      "tour": "만리장성, 자금성, 상하이 타워",
    },

    {
      "flag": "🇬🇧",
      "name": "영국",
      "capital": "런던",
      "language": "영어",
      "food": "피시 앤 칩스",
      "tour": "빅벤, 버킹엄 궁전, 런던 아이",
    },

    {
      "flag": "🇮🇹",
      "name": "이탈리아",
      "capital": "로마",
      "language": "이탈리아어",
      "food": "피자",
      "tour": "콜로세움, 피사의 사탑, 베네치아",
    },

    {
      "flag": "🇪🇸",
      "name": "스페인",
      "capital": "마드리드",
      "language": "스페인어",
      "food": "파에야",
      "tour": "사그라다 파밀리아, 알함브라 궁전",
    },

    {
      "flag": "🇦🇺",
      "name": "호주",
      "capital": "캔버라",
      "language": "영어",
      "food": "미트파이",
      "tour": "시드니 오페라하우스, 그레이트 배리어 리프",
    },

    {
      "flag": "🇨🇦",
      "name": "캐나다",
      "capital": "오타와",
      "language": "영어, 프랑스어",
      "food": "푸틴",
      "tour": "나이아가라 폭포, 밴프 국립공원",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("🌎 World Explorer"), centerTitle: true),
      body: ListView.builder(
        itemCount: countries.length,
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.all(10),
            child: ListTile(
              leading: Text(
                countries[index]["flag"]!,
                style: const TextStyle(fontSize: 30),
              ),
              title: Text(
                countries[index]["name"]!,
                style: const TextStyle(fontSize: 20),
              ),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => CountryPage(country: countries[index]),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}

class CountryPage extends StatelessWidget {
  final Map<String, String> country;

  const CountryPage({super.key, required this.country});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("${country["flag"]} ${country["name"]}")),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Text(
                country["flag"]!,
                style: const TextStyle(fontSize: 80),
              ),
            ),
            const SizedBox(height: 20),

            Text(
              "수도 : ${country["capital"]}",
              style: const TextStyle(fontSize: 22),
            ),

            const SizedBox(height: 10),

            Text(
              "언어 : ${country["language"]}",
              style: const TextStyle(fontSize: 22),
            ),

            const SizedBox(height: 10),

            Text(
              "대표 음식 : ${country["food"]}",
              style: const TextStyle(fontSize: 22),
            ),

            const SizedBox(height: 10),

            Text(
              "관광지 : ${country["tour"]}",
              style: const TextStyle(fontSize: 22),
            ),

            const SizedBox(height: 30),

            const Center(
              child: Text(
                "✈️ 즐거운 여행 되세요!",
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
