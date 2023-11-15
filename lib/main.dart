import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                // Tambahkan logika untuk tindakan saat tombol panah diklik
              },
            ),
            title: Text('Shoope'),
            backgroundColor: Colors.red,
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.search),
                onPressed: () {
                  // Tambahkan logika untuk tindakan pencarian di sini
                },
              ),
              IconButton(
                icon: Icon(Icons.shop),
                onPressed: () {
                  // Tambahkan logika untuk tindakan pengaturan di sini
                },
              ),
            ],
            bottom: TabBar(
              tabs: [
                Tab(text: 'Terlaris'),
                Tab(text: 'Nama Produk'),
                Tab(text: 'Promosi'),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              ShoppingPage(),
            ],
          ),
        ),
      ),
    );
  }
}

class ShoppingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2, // Jumlah kolom
      children: [
        ProductCard(
            imageUrl:
                'https://images.unsplash.com/photo-1600857544200-b2f666a9a2ec?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
            description: 'Soap'),
        ProductCard(
            imageUrl:
                'https://images.unsplash.com/photo-1600857544200-b2f666a9a2ec?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
            description: 'Soap'),
        ProductCard(
            imageUrl:
                'https://images.unsplash.com/photo-1600857544200-b2f666a9a2ec?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
            description: 'Soap'),
        ProductCard(
            imageUrl:
                'https://images.unsplash.com/photo-1600857544200-b2f666a9a2ec?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
            description: 'Soap'),
      ],
    );
  }
}

class ProductCard extends StatelessWidget {
  final String imageUrl;
  final String description;

  ProductCard({required this.imageUrl, required this.description});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Image.network(imageUrl),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(description),
          ),
          ElevatedButton(
            onPressed: () {
              // Tambahkan logika untuk menambahkan produk ke keranjang di sini
            },
            child: Text('+ Keranjang'),
          ),
        ],
      ),
    );
  }
}
