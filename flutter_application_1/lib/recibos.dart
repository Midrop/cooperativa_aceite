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
    {
      'albaran': '30',
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
    {
      'albaran': '30',
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
    {
      'albaran': '30',
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
    {
      'albaran': '30',
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
    {
      'albaran': '30',
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
    {
      'albaran': '30',
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
    {
      'albaran': '30',
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
    {
      'albaran': '30',
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
    {
      'albaran': '30',
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
    {
      'albaran': '30',
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
    {
      'albaran': '30',
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
    {
      'albaran': '30',
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
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Recibos y Albaranes'),
        backgroundColor: const Color.fromARGB(255, 190, 228, 164),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(9.0),
          child: Container(
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 249, 255, 245),
              borderRadius: BorderRadius.all(Radius.circular(10)),
              boxShadow: [
                BoxShadow(
                  color: const Color.fromARGB(110, 78, 81, 75),
                  spreadRadius: 3,
                  blurRadius: 6,
                  offset: Offset(1, 2), // Cambia posicion de la sombra
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.all(2.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical, // Habilita scroll vertical
                child: SingleChildScrollView(
                  scrollDirection:
                      Axis.horizontal, // Habilita scroll horizontal
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
          ),
        ),
      ),
    );
  }
}