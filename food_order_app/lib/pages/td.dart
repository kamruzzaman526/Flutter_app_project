import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

class QRCodeScannerPage extends StatefulWidget {
  @override
  _QRCodeScannerPageState createState() => _QRCodeScannerPageState();
}

class _QRCodeScannerPageState extends State<QRCodeScannerPage> {
  String _scanResult = 'Scan a QR code';
  bool _isScanning = false;

  Future<void> _scanQRCode() async {
    try {
      setState(() {
        _isScanning = true;
      });

      String barcodeScanResult = await FlutterBarcodeScanner.scanBarcode(
        
        '#ff6666', // Color to use for the scanner overlay
        'Cancel', // Text to display for the cancel button
        true, // Enable the flash icon
        ScanMode.QR, // Scan mode (default, QR, barcode)
        // Duration(seconds: 10), // Detection time (e.g., 10 seconds)
      );

      if (barcodeScanResult != '-1') {
        setState(() {
          _scanResult = barcodeScanResult;
        });
      } else {
        setState(() {
          _scanResult = 'Scan canceled';
        });
      }
    } catch (e) {
      setState(() { _scanResult = 'Error: $e';
      });
    } finally {
      setState(() {
        _isScanning = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('QR Code Scanner'),
      ),
      body: QRCodeScannerPage(),
      // body: Column(
      //   mainAxisAlignment: MainAxisAlignment.center,
      //   crossAxisAlignment: CrossAxisAlignment.stretch,
      //   children: [
      //     // Expanded(
      //     //   child: Stack(
      //     //     children: [
      //     //       // Camera preview or any other background UI
      //     //       Container(
      //     //         color: Colors.black,
      //     //       ),
      //     //       // Scanner overlay
      //     //       Center(
      //     //         child: Container(
      //     //           width: 250,
      //     //           height: 250,
      //     //           decoration: BoxDecoration(
      //     //             border: Border.all(color: Colors.white, width: 2),
      //     //             borderRadius: BorderRadius.circular(12),
      //     //           ),
      //     //         ),
      //     //       ),
      //     //     ],
      //     //   ),
      //     // ),
      //     SizedBox(height: 20),
      //     Center(
      //       child: ElevatedButton(
      //         onPressed: _isScanning ? null : _scanQRCode,
      //         child: Text('Scan QR Code'),
      //       ),
      //     ),
      //     SizedBox(height: 20),
      //     Center(
      //       child: Text(
      //         _scanResult,
      //         style: TextStyle(fontSize: 16),
      //         textAlign: TextAlign.center,
      //       ),
      //     ),
      //   ],
      // ),
    );
  }
}
