import 'package:flutter/material.dart';
import '../utils/sample_card.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Hi kamu",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.amber[600],
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: const Icon(
                      Icons.star,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.grey[400],
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  children: const [
                    Icon(Icons.search),
                    SizedBox(
                      width: 10,
                    ),
                    Text('Cari Motor yang Anda Inginkan'),
                  ],
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  SampleCard(image: 'vario.jpg', name: 'Vario'),
                  SampleCard(image: 'mio.jpg', name: 'Mio'),
                  SampleCard(image: 'verza.jpg', name: 'Verza'),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Rekomendasi motor dari kami",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      backgroundColor:
                          WidgetStatePropertyAll(Colors.green[600]),
                    ),
                    child: const Text(
                      'See All',
                      style: TextStyle(
                          color: Colors
                              .white), // Tambahkan 'color:' sebelum Colors.white
                    ),
                  ),
                ],
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.green[600],
                    borderRadius: BorderRadius.circular(18)),
                child: Row(
                  children: [
                    Image.asset(
                      "assets/vario.jpg",
                      width: 80,
                      height: 80,
                    ),
                    const SizedBox(
                      width: 18,
                    ), // Tambahkan koma di sini
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text('Matic'),
                        Text('Tahun 2023'),
                        Row(
                          children: [
                            Icon(
                              Icons.favorite,
                              color: Colors.red,
                            ),
                            Text('180'),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.green[600],
                    borderRadius: BorderRadius.circular(18)),
                child: Row(
                  children: [
                    Image.asset(
                      "assets/mio.jpg",
                      width: 80,
                      height: 80,
                    ),
                    const SizedBox(
                      width: 18,
                    ), // Tambahkan koma di sini
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text('Matic'),
                        Text('Tahun 2009'),
                        Row(
                          children: [
                            Icon(
                              Icons.favorite,
                              color: Colors.red,
                            ),
                            Text('190'),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
