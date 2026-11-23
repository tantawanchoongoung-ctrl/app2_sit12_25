import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.amber),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  Widget buildStat(String number, String label) {
    return Column(

      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          number,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
        ),
        Text(label, style: const TextStyle(fontSize: 14)),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          'thantawan_sun',
          style: TextStyle(fontWeight: FontWeight.w500,color:Colors.white),
        ),
        centerTitle: false,
        actions: const [
          Icon(Icons.menu),
          SizedBox(width: 16),
        ],
      ),

     body: SingleChildScrollView > Column
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  
                  Row(
                    children: [
                      const CircleAvatar(
                        radius: 55,
                        backgroundImage: AssetImage('assets/รูป.jpg'),
                      ),
                      const SizedBox(width: 16,),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: const [
                             Column(
                               children: [
                                 Text('3',
                                 style: TextStyle(
                                   fontWeight: FontWeight.bold,fontSize: 18,color: Colors.white)),
                                  Text('โพสต์',style: TextStyle(color: Colors.white),)
                               ],
                             ),
                            Column(
                              children: [
                                Text('146',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,fontSize: 18,color: Colors.white)),
                                Text('ผู้ติดตาม',style: TextStyle(color: Colors.white),)
                              ],
                            ),
                            Column(
                              children: [
                                Text('1,213',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,fontSize: 18,color: Colors.white)),
                                Text('กำลังติดตาม',style: TextStyle(color: Colors.white),)
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'ทันตะวัน ชุนกวง',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,color:Colors.white
                          ),
                        ),
                        SizedBox(height: 4),
                        Text('นักศึกษาแผนกเทคโนโลยีสารสนเทศ',style: TextStyle(color:Colors.white)),
                        Text('หลงใหลในการเขียน Flutter 💙',style: TextStyle(color:Colors.white)),
                      ],
                    ),
                  ),
                  const SizedBox(height: 16),

                  Row(
                    children: [
                      Expanded(
                        child: FilledButton(
                          onPressed: () {},
                          child: const Text('ติดตาม'),
                        ),
                      ),
                      const SizedBox(width: 8),
                      Expanded(
                        child: OutlinedButton(
                          onPressed: () {},
                          child: const Text('ข้อความ',style: TextStyle(color:Colors.white)),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),

                 
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(Icons.grid_on, size: 28),
                      Icon(Icons.person_pin, size: 28),
                    ],
                  ),
                  const SizedBox(height: 8),
                ],
              ),
            ),

          
            GridView.count(
              crossAxisCount: 3,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              crossAxisSpacing: 2,
              mainAxisSpacing: 2,
              children: [
                Image.network(
                  'https://i.pinimg.com/736x/94/4c/78/944c7884611c5079cd203434ce517de3.jpg',
                  fit: BoxFit.cover,
                ),
                Image.network(
                  'https://i.pinimg.com/736x/7a/f7/cc/7af7cc6063df7f0cffd0c2ea3ba488d1.jpg',
                  fit: BoxFit.cover,
                ),
                Image.network(
                  'https://i.pinimg.com/736x/be/e8/59/bee8598221af4d567a90aaa222fa3c81.jpg',
                  fit: BoxFit.cover,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
