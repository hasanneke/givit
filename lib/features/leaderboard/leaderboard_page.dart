import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LeaderboardPage extends StatelessWidget {
  final List<Map<String, dynamic>> leaderboardData = [
    {
      'name': 'Hasan Eke',
      'avatarUrl':
          'https://yt3.ggpht.com/ytc/AIdro_mcdICBAV29FtRetjCbVICax6ujq-FGqL_DgBJovRs4tpU=s600-c-k-c0x00ffffff-no-rj-rp-mo',
      'points': 1500,
    },
    {
      'name': 'Ahmet Yılmaz',
      'avatarUrl': 'https://via.placeholder.com/150',
      'points': 1400,
    },
    {
      'name': 'Zeynep Kaya',
      'avatarUrl': 'https://via.placeholder.com/150',
      'points': 1300,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lider Sayfası'),
      ),
      body: Container(
        color: Colors.green[50],
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            Expanded(
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                elevation: 5,
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10.0),
                          topRight: Radius.circular(10.0),
                        ),
                      ),
                      padding: EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            'Sırlama',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'İsim',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'Puan',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: ListView.builder(
                        itemCount: leaderboardData.length,
                        itemBuilder: (context, index) {
                          final user = leaderboardData[index];
                          return Container(
                            decoration: BoxDecoration(
                              color: index == 0
                                  ? Colors.amber
                                  : (index % 2 == 0
                                      ? Colors.green[100]
                                      : Colors.grey.shade300),
                            ),
                            padding: EdgeInsets.symmetric(
                                vertical: 8.0, horizontal: 16.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  '${index + 1}',
                                  style: TextStyle(
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Row(
                                  children: [
                                    CircleAvatar(
                                      backgroundImage:
                                          NetworkImage(user['avatarUrl']),
                                    ),
                                    SizedBox(width: 10),
                                    Text(
                                      user['name'],
                                      style: TextStyle(
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                                Text(
                                  '${user['points']}',
                                  style: TextStyle(
                                    fontSize: 16.0,
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  context.push('/donate');
                },
                child: Text('Bağış Yap')),
          ],
        ),
      ),
    );
  }
}

class DonationPage extends StatelessWidget {
  final List<String> charities = ['Kızılay', 'AFAD', 'AKUT', 'LOKMAN HEKIM'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Yardım Vakıfları'),
      ),
      body: ListView.builder(
        itemCount: charities.length,
        itemBuilder: (context, index) {
          return Card(
            margin: EdgeInsets.all(8.0),
            child: ListTile(
              title: Text(charities[index]),
              trailing: ElevatedButton(
                onPressed: () {
                  // Bağış yapma işlemi burada gerçekleşecek
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('${charities[index]} için bağış yap!'),
                    ),
                  );
                },
                child: Text('Bağış Yap'),
              ),
            ),
          );
        },
      ),
    );
  }
}
