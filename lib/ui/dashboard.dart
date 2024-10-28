import 'package:flutter/material.dart';
import '../main.dart';
import 'produk_detail.dart'; // Import halaman ProductDetailPage

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Dashboard')),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: DataTable(
                columns: const [
                  DataColumn(label: Text('Faktur')),
                  DataColumn(label: Text('Tanggal')),
                  DataColumn(label: Text('Customer')),
                  DataColumn(label: Text('Jumlah Barang')),
                  DataColumn(label: Text('Total')),
                ],
                rows: salesData.map((sale) {
                  return DataRow(
                    cells: [
                      DataCell(Text(sale['faktur'] ?? '')),
                      DataCell(Text(sale['tanggal'] ?? '')),
                      DataCell(Text(sale['customer'] ?? '')),
                      DataCell(Text(sale['jumlah'].toString())),
                      DataCell(Text(sale['total'].toString())),
                    ],
                    onSelectChanged: (bool? selected) {
                      if (selected ?? false) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ProductDetailPage(sale: sale),
                          ),
                        );
                      }
                    },
                  );
                }).toList(),
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text('Kembali'),
          ),
        ],
      ),
    );
  }
}
