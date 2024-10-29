import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

class BarcodeScannerSimple extends StatefulWidget {
  const BarcodeScannerSimple({super.key});

  @override
  State<BarcodeScannerSimple> createState() => _BarcodeScannerSimpleState();
}

class _BarcodeScannerSimpleState extends State<BarcodeScannerSimple> {
  Barcode? _barcode;
  bool showImage = false; //status untuk menampilkan AR nya
  Widget _buildBarcode(Barcode? value) {
    if (value == null) {
      return const Text(
        'scan something',
        overflow: TextOverflow.fade,
        style: TextStyle(color: Colors.white),
      );
    }
    return Text(
      value.displayValue ?? "QR Tidak Terdeteksi",
      overflow: TextOverflow.fade,
      style: TextStyle(color: Colors.white),
    );
  }

  void _handleBarcode(BarcodeCapture barcodes) {
    if (mounted) {
      setState(() {
        _barcode = barcodes.barcodes.firstOrNull;
        if (_barcode != null) {
          //kondisi tampilan AR 2D berdsarkan pemindaian
          showImage = true;
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('simple scanner'),
      ),
      body: Stack(
        children: [
          MobileScanner(
            onDetect: _handleBarcode,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              alignment: Alignment.bottomCenter,
              height: 100,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Center(
                      child: _buildBarcode(_barcode),
                    ),
                  ),
                ],
              ),
            ),
          ),
          if (showImage) //menampilkan ar 2d  jika qr berhasil di deteksi
            Center(
              child: Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.white, width: 4)),
                child: Image.asset(
                  'assets/ar1.png',
                  fit: BoxFit.contain,
                ),
              ),
            )
        ],
      ),
    );
  }
}
