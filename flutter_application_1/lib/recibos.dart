import 'package:flutter/material.dart';

class ReceiptPage extends StatelessWidget {
  final List<Map<String, dynamic>> receipts = [
    {
      'albaran': '1',
      'socio': '1987',
      'date': '20/10/2024',
      'poligono': '7',
      'parcela': '23',
      'neto': '701',
      'rendto': '12',
      'humedad': '0.00',
      'acidez': '0.00',
      'calidad': 'verde',
    },
    {
      'albaran': '2',
      'socio': '2456',
      'date': '21/10/2024',
      'poligono': '8',
      'parcela': '32',
      'neto': '890',
      'rendto': '10',
      'humedad': '1.00',
      'acidez': '0.50',
      'calidad': 'extra',
    },
    // Puedes agregar más albaranes aquí
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Recibos y Albaranes'),
        backgroundColor: const Color.fromARGB(255, 190, 228, 164),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical, // Habilita scroll vertical
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal, // Habilita scroll horizontal
            child: DataTable(
              columns: const [
                DataColumn(label: Text('Albarán')),
                DataColumn(label: Text('Socio')),
                DataColumn(label: Text('Fecha')),
                DataColumn(label: Text('Polígono')),
                DataColumn(label: Text('Parcela')),
                DataColumn(label: Text('Neto (kg)')),
                DataColumn(label: Text('Rendimiento (%)')),
                DataColumn(label: Text('Humedad (%)')),
                DataColumn(label: Text('Acidez (%)')),
                DataColumn(label: Text('Calidad')),
              ],
              rows: receipts.map((receipt) {
                return DataRow(cells: [
                  DataCell(Text(receipt['albaran'])),
                  DataCell(Text(receipt['socio'])),
                  DataCell(Text(receipt['date'])),
                  DataCell(Text(receipt['poligono'])),
                  DataCell(Text(receipt['parcela'])),
                  DataCell(Text(receipt['neto'])),
                  DataCell(Text(receipt['rendto'])),
                  DataCell(Text(receipt['humedad'])),
                  DataCell(Text(receipt['acidez'])),
                  DataCell(Text(receipt['calidad'])),
                ]);
              }).toList(),
            ),
          ),
        ),
      ),
    );
  }
}
