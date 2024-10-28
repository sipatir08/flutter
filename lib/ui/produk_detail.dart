import 'package:flutter/material.dart';

class ProductDetailPage extends StatelessWidget {
  final Map<String, dynamic> sale;

  ProductDetailPage({required this.sale});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Detail Produk')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Faktur: ${sale['faktur']}',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text('Tanggal: ${sale['tanggal']}'),
            SizedBox(height: 8),
            Text('Customer: ${sale['customer']}'),
            SizedBox(height: 8),
            Text('Jumlah Barang: ${sale['jumlah']}'),
            SizedBox(height: 8),
            Text('Total: ${sale['total']}'),
          ],
        ),
      ),
    );
  }
}
